.class public Lcom/android/internal/app/ResolverActivity;
.super Landroid/app/Activity;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;,
        Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;,
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$ItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;,
        Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$TargetInfo;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/ResolverActivity$ActionTitle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"


# instance fields
.field protected mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAdapterView:Landroid/widget/AbsListView;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysShowParallelApp:Z

.field private mDefaultTitleResId:I

.field private mIconDpi:I

.field mIconFactory:Landroid/util/IconDrawableFactory;

.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field mIsWhiteTheme:Z

.field private mLastSelected:I

.field protected mLaunchedFromUid:I

.field private mLayoutId:I

.field private mOnceButton:Landroid/widget/Button;

.field mOriginSysUiVis:I

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

.field protected mPm:Landroid/content/pm/PackageManager;

.field private mPostListReadyRunnable:Ljava/lang/Runnable;

.field private mProfileSwitchMessageId:I

.field private mProfileView:Landroid/view/View;

.field private mReferrerPackage:Ljava/lang/String;

.field private mRegistered:Z

.field protected mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

.field private mResolvingHome:Z

.field private mRetainInOnStop:Z

.field private mSafeForwardingMode:Z

.field private mSupportsAlwaysUseOption:Z

.field private mTitle:Ljava/lang/CharSequence;

.field mWhiteFullscreenSysUiVis:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 98
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 109
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 141
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mOriginSysUiVis:I

    .line 142
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mWhiteFullscreenSysUiVis:I

    .line 143
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsWhiteTheme:Z

    .line 146
    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .line 98
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .line 98
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .line 98
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .line 98
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .line 98
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .line 98
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/ResolverActivity;ZIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .line 98
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .line 98
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .line 98
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .line 98
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysShowParallelApp:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .line 98
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/app/ResolverActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 98
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static getLabelRes(Ljava/lang/String;)I
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .line 171
    invoke-static {p0}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    return v0
.end method

.method private hasManagedProfile()Z
    .locals 7

    .line 620
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 621
    .local v0, "userManager":Landroid/os/UserManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 622
    return v1

    .line 626
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 627
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 630
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_1

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const/16 v6, 0x3e7

    if-ne v5, v6, :cond_1

    .line 631
    goto :goto_0

    .line 635
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    .line 636
    const/4 v1, 0x1

    return v1

    .line 638
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    goto :goto_0

    .line 641
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    nop

    .line 642
    return v1

    .line 639
    :catch_0
    move-exception v2

    .line 640
    .local v2, "e":Ljava/lang/SecurityException;
    return v1
.end method

.method static final isSpecificUriMatch(I)Z
    .locals 1
    .param p0, "match"    # I

    .line 2225
    const/high16 v0, 0xfff0000

    and-int/2addr p0, v0

    .line 2226
    const/high16 v0, 0x300000

    if-lt p0, v0, :cond_0

    const/high16 v0, 0x500000

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 238
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 239
    return-object v0
.end method

.method static resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .param p0, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p1, "rhs"    # Landroid/content/pm/ResolveInfo;

    .line 1136
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    goto :goto_1

    .line 1137
    :cond_1
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_3

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    .line 1139
    :cond_3
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1138
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1139
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 1136
    :cond_4
    :goto_1
    return v0
.end method

.method private safelyStartActivityInternal(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 5
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .line 904
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 905
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 907
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 908
    invoke-interface {p1, p0, v1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 909
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 911
    :cond_1
    return-void

    .line 914
    :cond_2
    const/16 v0, -0x2710

    :try_start_0
    invoke-interface {p1, p0, v1, v0}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 915
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    :cond_3
    goto :goto_1

    .line 917
    :catch_0
    move-exception v0

    .line 920
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 921
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    .line 920
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 924
    .local v1, "launchedFromPackage":Ljava/lang/String;
    goto :goto_0

    .line 922
    .end local v1    # "launchedFromPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 923
    .local v1, "e2":Landroid/os/RemoteException;
    const-string v1, "??"

    .line 925
    .local v1, "launchedFromPackage":Ljava/lang/String;
    :goto_0
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch as uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", while running in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 925
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 929
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "launchedFromPackage":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private setAlwaysButtonEnabled(ZIZ)V
    .locals 4
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, "enabled":Z
    if-eqz p1, :cond_2

    .line 659
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 660
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_0

    .line 661
    const-string v2, "ResolverActivity"

    const-string v3, "Invalid position supplied to setAlwaysButtonEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    return-void

    .line 663
    :cond_0
    iget v2, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_1

    .line 664
    const-string v2, "ResolverActivity"

    const-string v3, "Attempted to set selection to resolve info for another user"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return-void

    .line 667
    :cond_1
    const/4 v0, 0x1

    .line 670
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 671
    return-void
.end method

.method private setProfileSwitchMessageId(I)V
    .locals 5
    .param p1, "contentUserHint"    # I

    .line 472
    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    .line 473
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 474
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 475
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 476
    .local v1, "originUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    goto :goto_0

    .line 477
    :cond_0
    const/4 v2, 0x0

    .line 478
    .local v2, "originIsManaged":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v3

    .line 479
    .local v3, "targetIsManaged":Z
    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    .line 480
    const v4, 0x104025a

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    goto :goto_1

    .line 481
    :cond_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    .line 482
    const v4, 0x104025b

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    .line 485
    .end local v0    # "userManager":Landroid/os/UserManager;
    .end local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "originIsManaged":Z
    .end local v3    # "targetIsManaged":Z
    :cond_2
    :goto_1
    return-void
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 647
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 649
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 650
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 651
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private useLayoutWithDefault()Z
    .locals 1

    .line 1121
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method bindProfileView()V
    .locals 4

    .line 458
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    .line 459
    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    if-eqz v0, :cond_1

    .line 460
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 461
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v2, 0x1020393

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 462
    .local v1, "text":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 463
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 465
    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    .end local v1    # "text":Landroid/view/View;
    goto :goto_0

    .line 467
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 469
    :goto_0
    return-void
.end method

.method public configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;)Z
    .locals 9
    .param p2, "initialIntents"    # [Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 977
    .local p1, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 977
    move v6, v7

    goto :goto_0

    .line 978
    :cond_0
    nop

    .line 977
    move v6, v8

    :goto_0
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 979
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()Z

    move-result v0

    .line 981
    .local v0, "rebuildCompleted":Z
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 982
    const v1, 0x10900d4

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    goto :goto_1

    .line 984
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutResource()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    .line 986
    :goto_1
    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    .line 988
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v1

    .line 992
    .local v1, "count":I
    if-eqz v0, :cond_2

    .line 993
    if-ne v1, v7, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 995
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, v8, v8}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v2

    .line 996
    .local v2, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 997
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 998
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v3}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 999
    iput-boolean v8, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 1000
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1001
    return v7

    .line 1007
    .end local v2    # "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_2
    const v2, 0x10203ae

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    .line 1009
    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$400(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)I

    move-result v2

    if-nez v2, :cond_3

    .line 1010
    const v2, 0x1020004

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1011
    .local v2, "emptyView":Landroid/widget/TextView;
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1012
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 1017
    const-string v3, "ResolverActivity"

    const-string v4, "No matches found, finishing..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1020
    .end local v2    # "emptyView":Landroid/widget/TextView;
    goto :goto_2

    .line 1021
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v8}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 1022
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity;->onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)V

    .line 1024
    :goto_2
    return v8
.end method

.method public createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .param p6, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;"
        }
    .end annotation

    .line 953
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 954
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->createListController()Lcom/android/internal/app/ResolverListController;

    move-result-object v8

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZLcom/android/internal/app/ResolverListController;)V

    .line 953
    return-object v9
.end method

.method protected createListController()Lcom/android/internal/app/ResolverListController;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 959
    new-instance v6, Lcom/android/internal/app/ResolverListController;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 962
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    .line 963
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 959
    return-object v6
.end method

.method dismiss()V
    .locals 1

    .line 518
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 521
    :cond_0
    return-void
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .line 526
    :try_start_0
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 527
    .end local v0    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .line 531
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .line 454
    const v0, 0x10900d3

    return v0
.end method

.method protected getReferrerPackageName()Ljava/lang/String;
    .locals 3

    .line 446
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 447
    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_0

    const-string v1, "android-app"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 450
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .line 721
    return-object p2
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method protected getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "defaultTitleRes"    # I

    .line 504
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    .line 507
    .local v0, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 508
    .local v1, "named":Z
    :goto_1
    sget-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-ne v0, v4, :cond_2

    if-eqz p2, :cond_2

    .line 509
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 511
    :cond_2
    if-eqz v1, :cond_3

    .line 512
    iget v4, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 513
    :cond_3
    iget v2, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 511
    :goto_2
    return-object v2
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 538
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIconFactory:Landroid/util/IconDrawableFactory;

    if-nez v0, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIconFactory:Landroid/util/IconDrawableFactory;

    .line 543
    :cond_0
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 545
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 546
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mIconFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v1, v0}, Landroid/util/IconDrawableFactory;->getShadowedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 549
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v0

    .line 550
    .local v0, "iconRes":I
    if-eqz v0, :cond_2

    .line 551
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 552
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 553
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v2, v1}, Landroid/util/IconDrawableFactory;->getShadowedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 558
    .end local v0    # "iconRes":I
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "ResolverActivity"

    const-string v2, "Couldn\'t find resources for package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIconFactory:Landroid/util/IconDrawableFactory;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 0
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .line 933
    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 674
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 675
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v1

    goto :goto_0

    .line 677
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v1

    :goto_0
    const v2, 0x10201df

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 679
    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v4

    .line 675
    xor-int/2addr v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 680
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 400
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 401
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 402
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 245
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v8

    .line 246
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    .line 247
    .local v9, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    .line 249
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "android.intent.category.HOME"

    .line 250
    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 255
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    .line 257
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 258
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "supportsAlwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 276
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Landroid/content/res/ThemeController;->getCorrectThemeResource([I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v2

    new-array v3, v1, [I

    fill-array-data v3, :array_1

    invoke-virtual {v2, v3}, Landroid/content/res/ThemeController;->getCorrectThemeResource([I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 287
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 291
    invoke-virtual {p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setProfileSwitchMessageId(I)V

    .line 294
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    .line 294
    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    .line 300
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 308
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 310
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mReferrerPackage:Ljava/lang/String;

    .line 311
    iput-boolean p7, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    .line 313
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 314
    .local v2, "am":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    .line 317
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 318
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    .line 319
    iput p4, p0, Lcom/android/internal/app/ResolverActivity;->mDefaultTitleResId:I

    .line 321
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, p5, p6}, Lcom/android/internal/app/ResolverActivity;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 322
    return-void

    .line 327
    :cond_1
    invoke-static {p0}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v4

    if-eqz v4, :cond_3

    .line 328
    invoke-static {p0}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v4

    if-ne v4, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsWhiteTheme:Z

    .line 330
    const v1, 0x102020d

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 331
    .local v1, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v1, :cond_5

    .line 332
    new-instance v4, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v4, p0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 339
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsed(Z)V

    .line 341
    :cond_4
    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 345
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mIsWhiteTheme:Z

    if-eqz v3, :cond_5

    .line 346
    new-instance v3, Lcom/android/internal/app/ResolverActivity$3;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnFullscreenChangedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnFullscreenChangedListener;)V

    .line 366
    :cond_5
    const v3, 0x1020393

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    .line 367
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 368
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    new-instance v4, Lcom/android/internal/app/ResolverActivity$4;

    invoke-direct {v4, p0}, Lcom/android/internal/app/ResolverActivity$4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    .line 386
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->onSetupVoiceInteraction()V

    .line 389
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    .line 390
    .local v3, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 391
    const/16 v4, 0x1c3

    goto :goto_3

    .line 392
    :cond_8
    const/16 v4, 0x1c5

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_9
    const-string v6, ""

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 390
    invoke-static {p0, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 395
    invoke-static {p0, v0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIconFactory:Landroid/util/IconDrawableFactory;

    .line 396
    return-void

    .line 302
    .end local v1    # "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v3    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 303
    return-void

    nop

    :array_0
    .array-data 4
        0x10303c6
        0x10303c7
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1000000
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "supportsAlwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 267
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 269
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 600
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 601
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->cancel()V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 605
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$200(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverListController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 609
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$200(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverListController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->destroy()V

    .line 611
    :cond_2
    return-void
.end method

.method public onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)V
    .locals 6
    .param p1, "adapterView"    # Landroid/widget/AbsListView;
    .param p2, "adapter"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 1028
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    .line 1029
    .local v0, "useHeader":Z
    instance-of v1, p1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1031
    .local v1, "listView":Landroid/widget/ListView;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1033
    new-instance v2, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .line 1034
    .local v2, "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1035
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1037
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v3, :cond_1

    .line 1038
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1043
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 1044
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900d2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1047
    :cond_2
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .line 564
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 565
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 570
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 571
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    .line 573
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 615
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 616
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resetAlwaysOrOnceButtonBar()V

    .line 617
    return-void
.end method

.method public onSetupVoiceInteraction()V
    .locals 0

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->sendVoiceChoicesIfNeeded()V

    .line 410
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 577
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 578
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 583
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mRetainInOnStop:Z

    if-nez v1, :cond_1

    .line 592
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_1

    .line 593
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 596
    :cond_1
    return-void
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 26
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "alwaysCheck"    # Z

    move-object/from16 v1, p0

    .line 725
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 726
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 728
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_20

    iget-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 884
    :cond_1
    move-object/from16 v22, v3

    goto/16 :goto_14

    .line 728
    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    if-eqz v0, :cond_20

    .line 731
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v7, v0

    .line 734
    .local v7, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v5}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 735
    invoke-virtual {v5}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    .local v0, "filterIntent":Landroid/content/Intent;
    goto :goto_2

    .line 737
    .end local v0    # "filterIntent":Landroid/content/Intent;
    :cond_3
    move-object v0, v5

    .restart local v0    # "filterIntent":Landroid/content/Intent;
    :goto_2
    move-object v8, v0

    .line 740
    .end local v0    # "filterIntent":Landroid/content/Intent;
    .local v8, "filterIntent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 741
    .local v9, "action":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 742
    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 744
    :cond_4
    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v10

    .line 745
    .local v10, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_5

    .line 746
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 747
    .local v11, "cat":Ljava/lang/String;
    invoke-virtual {v7, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 748
    .end local v11    # "cat":Ljava/lang/String;
    goto :goto_3

    .line 750
    :cond_5
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 752
    iget v0, v3, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v11, 0xfff0000

    and-int/2addr v11, v0

    .line 753
    .local v11, "cat":I
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 754
    .local v12, "data":Landroid/net/Uri;
    const/high16 v13, 0x600000

    if-ne v11, v13, :cond_6

    .line 755
    invoke-virtual {v8, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 756
    .local v14, "mimeType":Ljava/lang/String;
    if-eqz v14, :cond_6

    .line 758
    :try_start_0
    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    goto :goto_4

    .line 759
    :catch_0
    move-exception v0

    move-object v15, v0

    .line 760
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v15, "ResolverActivity"

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 761
    const/4 v7, 0x0

    .line 765
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v14    # "mimeType":Ljava/lang/String;
    :cond_6
    :goto_4
    if-eqz v12, :cond_e

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 769
    if-ne v11, v13, :cond_7

    const-string v0, "file"

    .line 770
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "content"

    .line 771
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 772
    :cond_7
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 776
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 777
    .local v0, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v0, :cond_9

    .line 778
    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    .line 779
    .local v13, "ssp":Ljava/lang/String;
    :goto_5
    if-eqz v13, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 780
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PatternMatcher;

    .line 781
    .local v14, "p":Landroid/os/PatternMatcher;
    invoke-virtual {v14, v13}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 782
    invoke-virtual {v14}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Landroid/os/PatternMatcher;->getType()I

    move-result v4

    invoke-virtual {v7, v15, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 783
    goto :goto_6

    .line 785
    .end local v14    # "p":Landroid/os/PatternMatcher;
    :cond_8
    goto :goto_5

    .line 787
    .end local v13    # "ssp":Ljava/lang/String;
    :cond_9
    :goto_6
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v4}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 788
    .local v4, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v4, :cond_c

    .line 789
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 790
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/IntentFilter$AuthorityEntry;

    .line 791
    .local v13, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v13, v12}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v14

    if-ltz v14, :cond_b

    .line 792
    invoke-virtual {v13}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v14

    .line 793
    .local v14, "port":I
    invoke-virtual {v13}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 794
    if-ltz v14, :cond_a

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 793
    move-object/from16 v6, v17

    goto :goto_8

    .line 794
    :cond_a
    nop

    .line 793
    const/4 v6, 0x0

    :goto_8
    invoke-virtual {v7, v15, v6}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    goto :goto_9

    .line 797
    .end local v13    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v14    # "port":I
    :cond_b
    goto :goto_7

    .line 799
    :cond_c
    :goto_9
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v6}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 800
    if-eqz v0, :cond_e

    .line 801
    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 802
    .local v6, "path":Ljava/lang/String;
    :goto_a
    if-eqz v6, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 803
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PatternMatcher;

    .line 804
    .local v13, "p":Landroid/os/PatternMatcher;
    invoke-virtual {v13, v6}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 805
    invoke-virtual {v13}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Landroid/os/PatternMatcher;->getType()I

    move-result v15

    invoke-virtual {v7, v14, v15}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 806
    goto :goto_b

    .line 808
    .end local v13    # "p":Landroid/os/PatternMatcher;
    :cond_d
    goto :goto_a

    .line 813
    .end local v0    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v4    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v6    # "path":Ljava/lang/String;
    :cond_e
    :goto_b
    if-eqz v7, :cond_20

    .line 814
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 819
    .local v4, "N":I
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 820
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$300(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_c

    :cond_f
    const/4 v0, 0x0

    :goto_c
    move v13, v0

    .line 821
    .local v13, "needToAddBackProfileForwardingComponent":Z
    if-nez v13, :cond_10

    .line 822
    new-array v0, v4, [Landroid/content/ComponentName;

    .local v0, "set":[Landroid/content/ComponentName;
    goto :goto_d

    .line 824
    .end local v0    # "set":[Landroid/content/ComponentName;
    :cond_10
    add-int/lit8 v0, v4, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    .restart local v0    # "set":[Landroid/content/ComponentName;
    :goto_d
    move-object v14, v0

    .line 827
    .end local v0    # "set":[Landroid/content/ComponentName;
    .local v14, "set":[Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 828
    .local v0, "bestMatch":I
    move v15, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v15, "bestMatch":I
    :goto_e
    if-ge v0, v4, :cond_12

    .line 829
    iget-object v6, v1, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v6, v6, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    move-object/from16 v18, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 830
    .end local v8    # "filterIntent":Landroid/content/Intent;
    .local v6, "r":Landroid/content/pm/ResolveInfo;
    .local v18, "filterIntent":Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    move/from16 v20, v11

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .end local v11    # "cat":I
    .local v20, "cat":I
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v11, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v14, v0

    .line 832
    iget v2, v6, Landroid/content/pm/ResolveInfo;->match:I

    if-le v2, v15, :cond_11

    iget v2, v6, Landroid/content/pm/ResolveInfo;->match:I

    .line 828
    .end local v6    # "r":Landroid/content/pm/ResolveInfo;
    .end local v15    # "bestMatch":I
    .local v2, "bestMatch":I
    move v15, v2

    .end local v2    # "bestMatch":I
    .restart local v15    # "bestMatch":I
    :cond_11
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v18

    move/from16 v11, v20

    goto :goto_e

    .line 835
    .end local v0    # "i":I
    .end local v18    # "filterIntent":Landroid/content/Intent;
    .end local v20    # "cat":I
    .restart local v8    # "filterIntent":Landroid/content/Intent;
    .restart local v11    # "cat":I
    :cond_12
    move-object/from16 v18, v8

    move/from16 v20, v11

    .end local v8    # "filterIntent":Landroid/content/Intent;
    .end local v11    # "cat":I
    .restart local v18    # "filterIntent":Landroid/content/Intent;
    .restart local v20    # "cat":I
    if-eqz v13, :cond_13

    .line 836
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$300(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    aput-object v0, v14, v4

    .line 837
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$300(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 838
    .local v0, "otherProfileMatch":I
    if-le v0, v15, :cond_13

    move v15, v0

    .line 841
    .end local v0    # "otherProfileMatch":I
    :cond_13
    if-eqz p2, :cond_1f

    .line 842
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v0

    .line 843
    .local v0, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 846
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v6, v7, v15, v14, v8}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 848
    iget-boolean v8, v3, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v8, :cond_15

    .line 850
    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v8

    .line 851
    .local v8, "packageName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 852
    iget-object v11, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v11, v0}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    .line 854
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_14
    nop

    .line 874
    move-object/from16 v22, v3

    move/from16 v24, v4

    goto/16 :goto_13

    .line 856
    :cond_15
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 857
    .local v8, "cn":Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 858
    .local v11, "packageName":Ljava/lang/String;
    if-eqz v12, :cond_16

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v16

    goto :goto_f

    :cond_16
    const/16 v16, 0x0

    :goto_f
    move-object/from16 v21, v16

    .line 860
    .local v21, "dataScheme":Ljava/lang/String;
    move-object/from16 v2, v21

    if-eqz v2, :cond_18

    .end local v21    # "dataScheme":Ljava/lang/String;
    .local v2, "dataScheme":Ljava/lang/String;
    move-object/from16 v22, v3

    const-string v3, "http"

    .line 861
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .local v22, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string v3, "https"

    .line 862
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_17
    const/4 v3, 0x1

    goto :goto_10

    .end local v22    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_18
    move-object/from16 v22, v3

    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v22    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_19
    const/4 v3, 0x0

    .line 864
    .local v3, "isHttpOrHttps":Z
    :goto_10
    if-eqz v9, :cond_1a

    move-object/from16 v23, v2

    const-string v2, "android.intent.action.VIEW"

    .end local v2    # "dataScheme":Ljava/lang/String;
    .local v23, "dataScheme":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_11

    .end local v23    # "dataScheme":Ljava/lang/String;
    .restart local v2    # "dataScheme":Ljava/lang/String;
    :cond_1a
    move-object/from16 v23, v2

    .end local v2    # "dataScheme":Ljava/lang/String;
    .restart local v23    # "dataScheme":Ljava/lang/String;
    :cond_1b
    const/4 v2, 0x0

    .line 865
    .local v2, "isViewAction":Z
    :goto_11
    if-eqz v10, :cond_1c

    move/from16 v24, v4

    const-string v4, "android.intent.category.BROWSABLE"

    .line 866
    .end local v4    # "N":I
    .local v24, "N":I
    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v19, 0x1

    goto :goto_12

    .end local v24    # "N":I
    .restart local v4    # "N":I
    :cond_1c
    move/from16 v24, v4

    .end local v4    # "N":I
    .restart local v24    # "N":I
    :cond_1d
    const/16 v19, 0x0

    :goto_12
    move/from16 v4, v19

    .line 868
    .local v4, "hasCategoryBrowsable":Z
    if-eqz v3, :cond_1e

    if-eqz v2, :cond_1e

    if-eqz v4, :cond_1e

    .line 869
    move/from16 v25, v2

    const/4 v2, 0x2

    .end local v2    # "isViewAction":Z
    .local v25, "isViewAction":Z
    invoke-virtual {v6, v11, v2, v0}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    .line 874
    .end local v0    # "userId":I
    .end local v3    # "isHttpOrHttps":Z
    .end local v4    # "hasCategoryBrowsable":Z
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v23    # "dataScheme":Ljava/lang/String;
    .end local v25    # "isViewAction":Z
    :cond_1e
    :goto_13
    goto :goto_14

    .line 876
    .end local v22    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v24    # "N":I
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    .local v4, "N":I
    :cond_1f
    move-object/from16 v22, v3

    move/from16 v24, v4

    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "N":I
    .restart local v22    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v24    # "N":I
    :try_start_1
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$200(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverListController;

    move-result-object v0

    invoke-virtual {v0, v5, v7, v15}, Lcom/android/internal/app/ResolverListController;->setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 879
    goto :goto_14

    .line 877
    :catch_1
    move-exception v0

    .line 878
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "action":Ljava/lang/String;
    .end local v10    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "data":Landroid/net/Uri;
    .end local v13    # "needToAddBackProfileForwardingComponent":Z
    .end local v14    # "set":[Landroid/content/ComponentName;
    .end local v15    # "bestMatch":I
    .end local v18    # "filterIntent":Landroid/content/Intent;
    .end local v20    # "cat":I
    .end local v24    # "N":I
    goto :goto_14

    .line 884
    .end local v22    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_20
    move-object/from16 v22, v3

    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v22    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_14
    if-eqz p1, :cond_21

    .line 885
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 887
    :cond_21
    const/4 v3, 0x1

    return v3
.end method

.method optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "index"    # I

    .line 430
    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public resetAlwaysOrOnceButtonBar()V
    .locals 4

    .line 1094
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1095
    const v0, 0x10201e0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1096
    .local v0, "buttonLayout":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1097
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1098
    const v2, 0x10201df

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    .line 1099
    const v2, 0x10201e1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    goto :goto_0

    .line 1101
    :cond_0
    const-string v2, "ResolverActivity"

    const-string v3, "Layout unexpectedly does not have a button bar"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    .end local v0    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 1106
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 1107
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 1108
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1109
    return-void

    .line 1113
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    .line 1114
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 1115
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    invoke-direct {p0, v3, v0, v3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 1116
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1118
    :cond_3
    return-void
.end method

.method public safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 1
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .line 893
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 895
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityInternal(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 898
    nop

    .line 899
    return-void

    .line 897
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    throw v0
.end method

.method public sendVoiceChoicesIfNeeded()V
    .locals 4

    .line 413
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    new-array v0, v0, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 420
    .local v0, "options":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "N":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 421
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/app/ResolverActivity;->optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v3

    aput-object v3, v0, v1

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_1
    new-instance v1, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    new-instance v2, Landroid/app/VoiceInteractor$Prompt;

    .line 425
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .line 426
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v1, v2}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    .line 427
    return-void
.end method

.method protected final setAdditionalTargets([Landroid/content/Intent;)V
    .locals 4
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 434
    if-eqz p1, :cond_0

    .line 435
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 436
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    .end local v2    # "intent":Landroid/content/Intent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    :cond_0
    return-void
.end method

.method protected final setParallelAppSupport(Z)V
    .locals 3
    .param p1, "alwaysShowParallelApp"    # Z

    .line 2270
    const-string v0, "ResolverActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setParallelAppSupport: alwaysShowParallelApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/OnePlusParallelAppUtils;->pLogd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysShowParallelApp:Z

    .line 2272
    return-void
.end method

.method protected setRetainInOnStop(Z)V
    .locals 0
    .param p1, "retainInOnStop"    # Z

    .line 1129
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mRetainInOnStop:Z

    .line 1130
    return-void
.end method

.method public setSafeForwardingMode(Z)V
    .locals 0
    .param p1, "safeForwarding"    # Z

    .line 500
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    .line 501
    return-void
.end method

.method public setTitleAndIcon()V
    .locals 9

    .line 1050
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    const v1, 0x1020016

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$400(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1051
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1052
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1053
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1057
    .end local v0    # "titleView":Landroid/widget/TextView;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1058
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1059
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mDefaultTitleResId:I

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1061
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 1062
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1063
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 1064
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1069
    const v2, 0x1020468

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1070
    .local v2, "titleIcon":Landroid/widget/ImageView;
    if-eqz v2, :cond_4

    .line 1071
    const/4 v4, 0x0

    .line 1073
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mReferrerPackage:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1074
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mReferrerPackage:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 1078
    :cond_3
    goto :goto_1

    .line 1076
    :catch_0
    move-exception v5

    .line 1077
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find referrer package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mReferrerPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    if-eqz v4, :cond_4

    .line 1081
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1086
    .end local v1    # "titleView":Landroid/widget/TextView;
    .end local v2    # "titleIcon":Landroid/widget/ImageView;
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_4
    const v1, 0x1020006

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1087
    .local v1, "iconView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v2

    .line 1088
    .local v2, "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 1089
    new-instance v4, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1091
    :cond_5
    return-void
.end method

.method public shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .line 940
    const/4 v0, 0x1

    return v0
.end method

.method public shouldGetActivityMetadata()Z
    .locals 1

    .line 936
    const/4 v0, 0x0

    return v0
.end method

.method public showTargetDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 4
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 944
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "package"

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 945
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 946
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 947
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 948
    return-void
.end method

.method public startSelected(IZZ)V
    .locals 7
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "hasIndexBeenFiltered"    # Z

    .line 683
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 687
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 688
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 690
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 688
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 691
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 692
    return-void

    .line 695
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    .line 696
    .local v1, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    if-nez v1, :cond_2

    .line 697
    return-void

    .line 699
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 700
    if-eqz p2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v2, :cond_3

    .line 701
    const/16 v2, 0x1c7

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    .line 703
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v2, :cond_4

    .line 704
    const/16 v2, 0x1c8

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    .line 707
    :cond_4
    const/16 v2, 0x1c9

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 710
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 711
    const/16 v2, 0x1c4

    goto :goto_1

    .line 712
    :cond_5
    const/16 v2, 0x1c6

    .line 710
    :goto_1
    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 713
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 715
    :cond_6
    return-void
.end method
