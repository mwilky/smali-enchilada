.class Lcom/android/settings/applications/RunningState$ProcessItem;
.super Lcom/android/settings/applications/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessItem"
.end annotation


# instance fields
.field mActiveSince:J

.field mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

.field final mDependentProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mInteresting:Z

.field mIsStarted:Z

.field mIsSystem:Z

.field mLastNumDependentProcesses:I

.field mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

.field mPid:I

.field final mProcessName:Ljava/lang/String;

.field mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field mRunningSeq:I

.field final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings/applications/RunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .line 409
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/applications/RunningState$BaseItem;-><init>(ZI)V

    .line 384
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    .line 386
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    .line 410
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const v2, 0x7f120fba

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDescription:Ljava/lang/String;

    .line 412
    iput p2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    .line 413
    iput-object p3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    .line 414
    return-void
.end method


# virtual methods
.method addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$BaseItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;)V"
        }
    .end annotation

    .line 591
    .local p1, "dest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .local p2, "destProc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 592
    .local v0, "NP":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 593
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 594
    .local v2, "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    invoke-virtual {v2, p1, p2}, Lcom/android/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 595
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    iget v3, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v3, :cond_0

    .line 597
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    .end local v2    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 600
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "curSeq"    # I

    .line 568
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 569
    .local v0, "NP":I
    const/4 v1, 0x0

    .line 570
    .local v1, "changed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 571
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 572
    .local v3, "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    iget-object v4, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eq v4, p0, :cond_0

    .line 573
    const/4 v1, 0x1

    .line 574
    iput-object p0, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 576
    :cond_0
    iput p3, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 577
    invoke-virtual {v3, p2}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 578
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 570
    .end local v3    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    .end local v2    # "i":I
    :cond_1
    iget v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLastNumDependentProcesses:I

    iget-object v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 582
    const/4 v1, 0x1

    .line 583
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    iput v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLastNumDependentProcesses:I

    .line 586
    :cond_2
    return v1
.end method

.method ensureLabel(Landroid/content/pm/PackageManager;)V
    .locals 9
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 417
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 418
    return-void

    .line 422
    :cond_0
    const/high16 v0, 0x400000

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 424
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    if-ne v2, v3, :cond_1

    .line 425
    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 426
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 427
    iput-object v1, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    return-void

    .line 431
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_0

    .line 430
    :catch_0
    move-exception v1

    .line 435
    :goto_0
    iget v1, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "pkgs":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 440
    :try_start_1
    aget-object v2, v1, v4

    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 442
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 443
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 444
    iput-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 445
    return-void

    .line 446
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    .line 452
    :cond_2
    array-length v2, v1

    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v5, v1, v3

    .line 454
    .local v5, "name":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p1, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 455
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget v7, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v7, :cond_3

    .line 456
    iget v7, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v5, v7, v8}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 458
    .local v7, "nm":Ljava/lang/CharSequence;
    if-eqz v7, :cond_3

    .line 459
    iput-object v7, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 460
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 461
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 462
    return-void

    .line 466
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .end local v7    # "nm":Ljava/lang/CharSequence;
    :cond_3
    goto :goto_2

    .line 465
    :catch_2
    move-exception v6

    .line 452
    .end local v5    # "name":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 471
    :cond_4
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 472
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 474
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 475
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 476
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 477
    return-void

    .line 482
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_5
    :try_start_3
    aget-object v2, v1, v4

    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 484
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 485
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 486
    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 487
    return-void

    .line 488
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_3
    move-exception v0

    .line 490
    return-void
.end method

.method updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/ActivityManager$RunningServiceInfo;

    .line 493
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 495
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 496
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v3, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 497
    .local v2, "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 498
    const/4 v1, 0x1

    .line 499
    new-instance v5, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget v6, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v5, v6}, Lcom/android/settings/applications/RunningState$ServiceItem;-><init>(I)V

    move-object v2, v5

    .line 500
    iput-object p2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 502
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    const/high16 v7, 0x400000

    iget v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 504
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 502
    invoke-interface {v5, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iput-object v5, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 506
    iget-object v5, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v5, :cond_0

    .line 507
    const-string v5, "RunningService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getServiceInfo returned null for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    return v4

    .line 512
    :cond_0
    goto :goto_0

    .line 511
    :catch_0
    move-exception v5

    .line 513
    :goto_0
    iget-object v5, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 514
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 513
    invoke-static {v0, v5, v6}, Lcom/android/settings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 515
    iget-object v5, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    iput-object v5, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 516
    iget-object v5, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v5, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 517
    iget-object v5, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_2
    iget v5, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    iput v5, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mCurSeq:I

    .line 520
    iput-object p2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 521
    iget-wide v5, p2, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    iget-wide v5, p2, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    goto :goto_2

    :cond_3
    const-wide/16 v5, -0x1

    .line 522
    .local v5, "activeSince":J
    :goto_2
    iget-wide v7, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mActiveSince:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_4

    .line 523
    iput-wide v5, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mActiveSince:J

    .line 524
    const/4 v1, 0x1

    .line 526
    :cond_4
    iget-object v7, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    iget v7, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v7, :cond_6

    .line 527
    iget-boolean v7, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    if-eqz v7, :cond_5

    .line 528
    iput-boolean v4, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    .line 529
    const/4 v1, 0x1

    .line 532
    :cond_5
    :try_start_1
    iget-object v7, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 533
    .local v7, "clientr":Landroid/content/res/Resources;
    iget v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 534
    .local v9, "label":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f120fb6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v4

    invoke-virtual {v10, v11, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mDescription:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v7    # "clientr":Landroid/content/res/Resources;
    .end local v9    # "label":Ljava/lang/String;
    goto :goto_3

    .line 536
    :catch_1
    move-exception v4

    .line 537
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v3, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mDescription:Ljava/lang/String;

    .line 538
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    goto :goto_4

    .line 540
    :cond_6
    iget-boolean v3, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    if-nez v3, :cond_7

    .line 541
    iput-boolean v8, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    .line 542
    const/4 v1, 0x1

    .line 544
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120fbc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mDescription:Ljava/lang/String;

    .line 548
    :goto_4
    return v1
.end method

.method updateSize(Landroid/content/Context;JI)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pss"    # J
    .param p4, "curSeq"    # I

    .line 552
    const-wide/16 v0, 0x400

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    .line 553
    iget v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    const/4 v1, 0x0

    if-ne v0, p4, :cond_0

    .line 554
    iget-wide v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "sizeStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 557
    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSizeStr:Ljava/lang/String;

    .line 561
    return v1

    .line 564
    .end local v0    # "sizeStr":Ljava/lang/String;
    :cond_0
    return v1
.end method
