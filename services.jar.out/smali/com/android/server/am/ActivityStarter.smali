.class Lcom/android/server/am/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStarter$Request;,
        Lcom/android/server/am/ActivityStarter$DefaultFactory;,
        Lcom/android/server/am/ActivityStarter$Factory;
    }
.end annotation


# static fields
.field private static final INVALID_LAUNCH_MODE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAddingToTask:Z

.field private mAvoidMoveToFront:Z

.field private mCallingUid:I

.field private final mController:Lcom/android/server/am/ActivityStartController;

.field private mDoResume:Z

.field private mInTask:Lcom/android/server/am/TaskRecord;

.field private mIntent:Landroid/content/Intent;

.field private mIntentDelivered:Z

.field private final mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

.field private mKeepCurTransition:Z

.field private final mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

.field private mLastStartActivityResult:I

.field private mLastStartActivityTimeMs:J

.field private mLastStartReason:Ljava/lang/String;

.field private mLaunchFlags:I

.field private mLaunchMode:I

.field private mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

.field private mLaunchTaskBehind:Z

.field private mMovedToFront:Z

.field private mNewTaskInfo:Landroid/content/pm/ActivityInfo;

.field private mNewTaskIntent:Landroid/content/Intent;

.field private mNoAnimation:Z

.field private mNotTop:Lcom/android/server/am/ActivityRecord;

.field private mOptions:Landroid/app/ActivityOptions;

.field public mPerf:Landroid/util/BoostFramework;

.field private mPreferredDisplayId:I

.field private mRequest:Lcom/android/server/am/ActivityStarter$Request;

.field private mReuseTask:Lcom/android/server/am/TaskRecord;

.field mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSourceRecord:Lcom/android/server/am/ActivityRecord;

.field private mSourceStack:Lcom/android/server/am/ActivityStack;

.field private mStartActivity:Lcom/android/server/am/ActivityRecord;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mTargetStack:Lcom/android/server/am/ActivityStack;

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field private mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStartController;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStartInterceptor;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/server/am/ActivityStartController;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p4, "interceptor"    # Lcom/android/server/am/ActivityStartInterceptor;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 207
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    .line 220
    new-instance v1, Lcom/android/server/am/ActivityStarter$Request;

    invoke-direct {v1}, Lcom/android/server/am/ActivityStarter$Request;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    .line 443
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    .line 444
    iput-object p2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 445
    iput-object p3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 446
    iput-object p4, p0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    .line 447
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStarter;->reset(Z)V

    .line 448
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 449
    return-void
.end method

.method private addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 2
    .param p1, "parent"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2439
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2442
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    goto :goto_1

    .line 2440
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    .line 2444
    :goto_1
    return-void
.end method

.method private addUserIdtoClipData(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 2866
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 2867
    .local v0, "clipData":Landroid/content/ClipData;
    if-eqz v0, :cond_1

    .line 2868
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2869
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 2870
    .local v2, "item":Landroid/content/ClipData$Item;
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 2871
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 2872
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/android/server/am/ActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 2873
    .local v3, "newItem":Landroid/content/ClipData$Item;
    invoke-virtual {v0, v1, v3}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    .line 2868
    .end local v2    # "item":Landroid/content/ClipData$Item;
    .end local v3    # "newItem":Landroid/content/ClipData$Item;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2875
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 2877
    :cond_1
    return-object p1
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchSingleInstance"    # Z
    .param p3, "launchSingleTask"    # Z
    .param p4, "launchFlags"    # I

    .line 2448
    const/high16 v0, 0x80000

    and-int v1, p4, v0

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 2451
    :cond_0
    const-string v0, "ActivityManager"

    const-string v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    const v0, -0x8080001

    and-int/2addr p4, v0

    goto :goto_0

    .line 2456
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2466
    :pswitch_0
    const v0, -0x8000001

    and-int/2addr p4, v0

    goto :goto_0

    .line 2463
    :pswitch_1
    or-int/2addr p4, v0

    .line 2464
    goto :goto_0

    .line 2460
    :pswitch_2
    or-int/2addr p4, v0

    .line 2461
    goto :goto_0

    .line 2458
    :pswitch_3
    nop

    .line 2470
    :goto_0
    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private canLaunchIntoFocusedStack(Lcom/android/server/am/ActivityRecord;Z)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z

    .line 2534
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 2536
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isActivityTypeAssistant()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2537
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v1

    .local v1, "canUseFocusedStack":Z
    goto :goto_0

    .line 2539
    .end local v1    # "canUseFocusedStack":Z
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    .line 2558
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 2559
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 2553
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->supportsFreeform()Z

    move-result v1

    .line 2554
    .restart local v1    # "canUseFocusedStack":Z
    goto :goto_0

    .line 2549
    .end local v1    # "canUseFocusedStack":Z
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    .line 2550
    .restart local v1    # "canUseFocusedStack":Z
    goto :goto_0

    .line 2544
    .end local v1    # "canUseFocusedStack":Z
    :cond_2
    const/4 v1, 0x1

    .line 2545
    .restart local v1    # "canUseFocusedStack":Z
    nop

    .line 2559
    :goto_0
    nop

    .line 2562
    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    iget v5, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-ne v4, v5, :cond_3

    move v2, v3

    nop

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private computeLaunchingTaskFlags()V
    .locals 10

    .line 1818
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/high16 v4, 0x10000000

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1819
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1820
    .local v0, "baseIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1821
    .local v5, "root":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_5

    .line 1829
    invoke-direct {p0, v3, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1830
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1835
    if-nez v5, :cond_0

    goto :goto_0

    .line 1836
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1837
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller with mInTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but target is singleInstance/Task"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1831
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1832
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to launch singleInstance/Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " into different task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1844
    :cond_2
    :goto_0
    if-nez v5, :cond_3

    .line 1845
    const v6, 0x18082000

    .line 1847
    .local v6, "flagsOfInterest":I
    iget v7, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v8, -0x18082001

    and-int/2addr v7, v8

    .line 1848
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const v9, 0x18082000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1849
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v8, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1850
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7, v8}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1851
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1856
    .end local v6    # "flagsOfInterest":I
    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_4

    .line 1857
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_1

    .line 1860
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1863
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 1864
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v5    # "root":Lcom/android/server/am/ActivityRecord;
    goto :goto_2

    .line 1822
    .restart local v0    # "baseIntent":Landroid/content/Intent;
    .restart local v5    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1823
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching into task without base intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1865
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v5    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1871
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1872
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1873
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1877
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_b

    .line 1878
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_9

    .line 1881
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v4

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_b

    .line 1882
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_3

    .line 1886
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-ne v0, v3, :cond_a

    .line 1890
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_3

    .line 1891
    :cond_a
    invoke-direct {p0, v3, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1894
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1897
    :cond_b
    :goto_3
    return-void
.end method

.method static computeResolveFilterUid(III)I
    .locals 1
    .param p0, "customCallingUid"    # I
    .param p1, "actualCallingUid"    # I
    .param p2, "filterCallingUid"    # I

    .line 1339
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_0

    .line 1340
    nop

    .line 1339
    move v0, p2

    goto :goto_0

    .line 1341
    :cond_0
    if-ltz p0, :cond_1

    .line 1339
    move v0, p0

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method private computeSourceStack()V
    .locals 5

    .line 1900
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1901
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1902
    return-void

    .line 1904
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    .line 1905
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1906
    return-void

    .line 1913
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 1914
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity called from finishing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1917
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 1923
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 1924
    .local v0, "sourceTask":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 1926
    .end local v0    # "sourceTask":Lcom/android/server/am/TaskRecord;
    :cond_3
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1927
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1928
    return-void
.end method

.method private computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "launchFlags"    # I
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    .line 2475
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2476
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-direct {p0, p1, p3, v0, p4}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2477
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_0

    .line 2478
    return-object v1

    .line 2481
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2482
    .local v2, "currentStack":Lcom/android/server/am/ActivityStack;
    :goto_0
    if-eqz v2, :cond_6

    .line 2483
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v3, v2, :cond_3

    .line 2484
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_5

    :cond_2
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeStackFocus: Setting focused stack to r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2488
    :cond_3
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_5

    :cond_4
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeStackFocus: Focused stack already="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    :cond_5
    :goto_1
    return-object v2

    .line 2495
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStarter;->canLaunchIntoFocusedStack(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2496
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_8

    :cond_7
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeStackFocus: Have a focused stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v3

    .line 2501
    :cond_9
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v3, :cond_c

    .line 2503
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2504
    if-nez v1, :cond_c

    .line 2506
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_b

    :cond_a
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeStackFocus: Can\'t launch on mPreferredDisplayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", looking on all displays."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    :cond_b
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v3, p1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2512
    :cond_c
    if-nez v1, :cond_11

    .line 2514
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    .line 2515
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "stackNdx":I
    :goto_2
    if-ltz v4, :cond_10

    .line 2516
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2517
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v6

    if-nez v6, :cond_f

    .line 2518
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v5, :cond_d

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v5, :cond_e

    :cond_d
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "computeStackFocus: Setting focused stack="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    :cond_e
    return-object v1

    .line 2515
    :cond_f
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 2524
    .end local v4    # "stackNdx":I
    :cond_10
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p1, p4, v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2526
    .end local v3    # "display":Lcom/android/server/am/ActivityDisplay;
    :cond_11
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v3, :cond_12

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_13

    :cond_12
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeStackFocus: New stack r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    :cond_13
    return-object v1
.end method

.method private createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 20
    .param p1, "auxiliaryResponse"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "originalIntent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "verificationBundle"    # Landroid/os/Bundle;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "userId"    # I

    move-object/from16 v7, p1

    .line 1010
    if-eqz v7, :cond_0

    iget-boolean v0, v7, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_0

    .line 1012
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    move-object v1, v7

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 1016
    :cond_0
    move-object/from16 v8, p0

    .line 1018
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    .line 1019
    const/4 v0, 0x0

    if-nez v7, :cond_1

    .line 1024
    move-object v11, v0

    goto :goto_1

    .line 1019
    :cond_1
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 1024
    move-object v11, v1

    :goto_1
    if-nez v7, :cond_2

    .line 1025
    move-object/from16 v16, v0

    goto :goto_2

    .line 1024
    :cond_2
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    .line 1025
    move-object/from16 v16, v1

    :goto_2
    if-nez v7, :cond_3

    move-object/from16 v17, v0

    goto :goto_3

    :cond_3
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    move-object/from16 v17, v1

    :goto_3
    if-eqz v7, :cond_4

    iget-boolean v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 1027
    :goto_4
    move/from16 v18, v1

    if-nez v7, :cond_5

    .line 1016
    :goto_5
    move-object/from16 v19, v0

    goto :goto_6

    .line 1027
    :cond_5
    iget-object v0, v7, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    goto :goto_5

    .line 1016
    :goto_6
    move-object/from16 v9, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    invoke-static/range {v9 .. v19}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .line 2246
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_0

    .line 2247
    return-void

    .line 2250
    :cond_0
    const/16 v0, 0x7533

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2251
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 2253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    .line 2254
    return-void
.end method

.method static getExternalResult(I)I
    .locals 1
    .param p0, "result"    # I

    .line 589
    const/16 v0, 0x66

    if-eq p0, v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    .line 2570
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    .line 2571
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0

    .line 2574
    :cond_0
    and-int/lit16 v0, p2, 0x1000

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2586
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 2588
    .local v0, "parentStack":Lcom/android/server/am/ActivityStack;
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, v1, :cond_3

    .line 2590
    return-object v0

    .line 2592
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne p3, v1, :cond_4

    .line 2595
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v1

    .line 2598
    :cond_4
    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2601
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivityType(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I

    move-result v2

    .line 2602
    .local v2, "activityType":I
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2608
    .end local v2    # "activityType":I
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2609
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2610
    .local v2, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2612
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1, p4, p3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2614
    :cond_6
    return-object v2

    .line 2579
    .end local v0    # "parentStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "dockedStack":Lcom/android/server/am/ActivityStack;
    :cond_7
    :goto_1
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    :goto_2
    move v6, v0

    goto :goto_3

    :cond_8
    const/4 v0, -0x1

    goto :goto_2

    .line 2580
    .local v6, "candidateDisplay":I
    :goto_3
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x1

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZI)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method private getPreferedDisplayId(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)I
    .locals 5
    .param p1, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "startingActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "options"    # Landroid/app/ActivityOptions;

    .line 1980
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 1981
    return v0

    .line 1985
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mVr2dDisplayId:I

    .line 1986
    .local v1, "displayId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1987
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_1

    .line 1988
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSourceDisplayId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :cond_1
    return v1

    .line 1995
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v3

    goto :goto_0

    :cond_3
    move v3, v2

    .line 1996
    .local v3, "launchDisplayId":I
    :goto_0
    if-eq v3, v2, :cond_4

    .line 1997
    return v3

    .line 2000
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v4

    goto :goto_1

    :cond_5
    move v4, v2

    :goto_1
    move v1, v4

    .line 2002
    if-eq v1, v2, :cond_6

    .line 2003
    return v1

    .line 2005
    :cond_6
    return v0
.end method

.method private getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;
    .locals 9

    .line 1940
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x8000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_1

    .line 1942
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1946
    .local v0, "putIntoExistingTask":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    and-int/2addr v0, v5

    .line 1947
    const/4 v5, 0x0

    .line 1948
    .local v5, "intentActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 1949
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1950
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    move-object v5, v2

    .line 1951
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_3

    :cond_5
    if-eqz v0, :cond_9

    .line 1952
    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v2, v6, :cond_6

    .line 1955
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1956
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v4

    .line 1955
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    goto :goto_3

    .line 1957
    :cond_6
    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_8

    .line 1960
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-eq v1, v8, :cond_7

    move v3, v4

    nop

    :cond_7
    invoke-virtual {v2, v6, v7, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    goto :goto_3

    .line 1964
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1967
    :cond_9
    :goto_3
    return-object v5
.end method

.method static isDocumentLaunchesIntoExisting(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 2625
    const/high16 v0, 0x80000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLaunchModeOneOf(II)Z
    .locals 1
    .param p1, "mode1"    # I
    .param p2, "mode2"    # I

    .line 2621
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private maybeAddOwnerUserIdtoIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2961
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, -0x45ee9a33

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 2964
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActivityStarter;->addUserIdtoClipData(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    .line 2965
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2966
    .local v0, "extraStream":Landroid/net/Uri;
    if-eqz v0, :cond_3

    const-string/jumbo v1, "mms"

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2967
    const-string v1, "android.intent.extra.STREAM"

    .line 2968
    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 2967
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2974
    .end local v0    # "extraStream":Landroid/net/Uri;
    :cond_3
    :goto_2
    return-object p1
.end method

.method private maybeAddParallelUserIdtoIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2899
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/16 v1, 0x3e7

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 2939
    :pswitch_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStarter;->addUserIdtoClipData(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    .line 2940
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2942
    .local v0, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v0, :cond_3

    .line 2943
    nop

    .line 2943
    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2944
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 2945
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_1

    const-string v4, "ActivityManager"

    .line 2946
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 2945
    invoke-static {v4, v5}, Landroid/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2947
    invoke-direct {p0, v3, v1}, Lcom/android/server/am/ActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    .line 2949
    :cond_1
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2943
    .end local v3    # "uri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2951
    .end local v2    # "i":I
    :cond_2
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_3

    .line 2928
    .end local v0    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :pswitch_1
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStarter;->addUserIdtoClipData(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    .line 2929
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2930
    .local v0, "extraStream":Landroid/net/Uri;
    if-eqz v0, :cond_3

    const-string v2, "ActivityManager"

    .line 2931
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 2930
    invoke-static {v2, v3}, Landroid/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2932
    const-string v2, "android.intent.extra.STREAM"

    .line 2933
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 2932
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    .line 2915
    .end local v0    # "extraStream":Landroid/net/Uri;
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2918
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_3

    const-string v2, "ActivityManager"

    .line 2919
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 2918
    invoke-static {v2, v3}, Landroid/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2920
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 2921
    .local v2, "type":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2923
    .end local v2    # "type":Ljava/lang/String;
    goto :goto_3

    .line 2903
    .end local v0    # "data":Landroid/net/Uri;
    :pswitch_3
    const-string/jumbo v0, "output"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2906
    .local v0, "output":Landroid/net/Uri;
    if-eqz v0, :cond_3

    const-string v2, "ActivityManager"

    .line 2907
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 2906
    invoke-static {v2, v3}, Landroid/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2908
    const-string/jumbo v2, "output"

    .line 2909
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 2908
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2957
    .end local v0    # "output":Landroid/net/Uri;
    :cond_3
    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x74de9aed -> :sswitch_5
        -0x62d863dd -> :sswitch_4
        -0x45ee9a33 -> :sswitch_3
        -0x45ed2f16 -> :sswitch_2
        -0x37c67be -> :sswitch_1
        0x29c9b033 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    .line 2851
    if-nez p1, :cond_0

    .line 2852
    const/4 v0, 0x0

    return-object v0

    .line 2853
    :cond_0
    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const-string v0, "content"

    .line 2854
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2855
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStarter;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2857
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2858
    .local v0, "builder":Landroid/net/Uri$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2859
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 2862
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_1
    return-object p1
.end method

.method private maybeAddUserIdtoIntent(ILandroid/content/Intent;I)Landroid/content/Intent;
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "destAppUserId"    # I

    .line 2881
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2882
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2884
    .local v0, "callingAppUserId":I
    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    if-nez p3, :cond_0

    .line 2886
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityStarter;->maybeAddParallelUserIdtoIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    .line 2889
    :cond_0
    if-nez v0, :cond_1

    if-ne p3, v1, :cond_1

    .line 2891
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityStarter;->maybeAddOwnerUserIdtoIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    .line 2895
    .end local v0    # "callingAppUserId":I
    :cond_1
    return-object p2
.end method

.method private onExecutionComplete()V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStartController;->onExecutionComplete(Lcom/android/server/am/ActivityStarter;)V

    .line 598
    return-void
.end method

.method private resumeTargetStackIfNeeded()V
    .locals 4

    .line 2199
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_0

    .line 2200
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_0

    .line 2202
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2204
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    .line 2205
    return-void
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .locals 9

    .line 1800
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1801
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1802
    .local v0, "sourceStack":Lcom/android/server/am/ActivityStack;
    :goto_0
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 1807
    const-string v2, "ActivityManager"

    const-string v3, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const/4 v3, -0x1

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v2, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1811
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1813
    :cond_1
    return-void
.end method

.method private setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "doResume"    # Z
    .param p5, "startFlags"    # I
    .param p6, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    .line 1691
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStarter;->reset(Z)V

    .line 1693
    iput-object v8, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1694
    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1695
    iput-object v9, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1696
    iget v1, v8, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 1697
    move-object/from16 v14, p6

    iput-object v14, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1698
    move-object/from16 v15, p7

    iput-object v15, v0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1699
    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 1701
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/am/ActivityStarter;->getPreferedDisplayId(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    .line 1703
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    .line 1705
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v1

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    const/4 v3, 0x0

    move-object v2, v10

    move-object v4, v8

    move-object v5, v14

    move-object/from16 v16, v6

    move-object v6, v9

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/LaunchParamsController;->calculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    .line 1708
    iget v1, v8, Lcom/android/server/am/ActivityRecord;->launchMode:I

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    .line 1710
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v13

    :goto_0
    iget v4, v0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    const/4 v5, 0x2

    if-ne v5, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v13

    :goto_1
    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1712
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 1710
    invoke-direct {v0, v8, v1, v4, v6}, Lcom/android/server/am/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1713
    iget-boolean v1, v8, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    const/high16 v4, 0x80000

    if-eqz v1, :cond_2

    .line 1714
    invoke-direct {v0, v5, v2}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v13

    :goto_2
    iput-boolean v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 1717
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    .line 1719
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    const/high16 v2, 0x10000000

    if-eqz v1, :cond_3

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_3

    .line 1720
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1725
    :cond_3
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 1726
    iget-boolean v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v1, :cond_4

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-ne v1, v5, :cond_5

    .line 1728
    :cond_4
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1734
    :cond_5
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x40000

    and-int/2addr v2, v4

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_3

    :cond_6
    move v2, v13

    :goto_3
    iput-boolean v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1735
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v1, :cond_7

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity() => mUserLeaving="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    :cond_7
    iput-boolean v11, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1742
    if-eqz v11, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1743
    :cond_8
    iput-boolean v3, v8, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1744
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1747
    :cond_9
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 1748
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1749
    iput-boolean v3, v8, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    .line 1750
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1751
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1752
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    .line 1751
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1753
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    goto :goto_4

    :cond_a
    move-object v4, v2

    .line 1754
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    :goto_4
    if-eqz v4, :cond_b

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 1758
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1759
    iput-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 1761
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_b
    goto :goto_5

    .line 1762
    :cond_c
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1763
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1764
    iput-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 1768
    :cond_d
    :goto_5
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_e

    move-object v1, v8

    goto :goto_6

    :cond_e
    move-object v1, v2

    :goto_6
    iput-object v1, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 1770
    iput-object v10, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1775
    if-eqz v10, :cond_f

    iget-boolean v1, v10, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-nez v1, :cond_f

    .line 1776
    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting activity in task not in recents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1780
    :cond_f
    iput v12, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1784
    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_11

    .line 1785
    move-object v1, v14

    .line 1786
    .local v1, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_10

    .line 1787
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1790
    :cond_10
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v4, v8, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1792
    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1796
    .end local v1    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_11
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    move v13, v3

    nop

    :cond_12
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 1797
    return-void
.end method

.method private setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 21
    .param p1, "intentActivity"    # Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    .line 2015
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2016
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2021
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2022
    .local v2, "focusStack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_0

    .line 2023
    move-object v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 2025
    .local v4, "curTop":Lcom/android/server/am/ActivityRecord;
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 2026
    .local v5, "topTask":Lcom/android/server/am/TaskRecord;
    :goto_1
    const/4 v6, 0x0

    if-eqz v5, :cond_d

    .line 2027
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-ne v5, v7, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-eq v5, v7, :cond_d

    :cond_2
    iget-boolean v7, v0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v7, :cond_d

    .line 2029
    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v8, 0x400000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2030
    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 2031
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-ne v7, v8, :cond_d

    .line 2033
    :cond_3
    iget-boolean v7, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_4

    .line 2034
    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 2043
    :cond_4
    iget v7, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v8, 0x10008000

    and-int/2addr v7, v8

    const/4 v9, 0x1

    if-ne v7, v8, :cond_5

    move v7, v9

    goto :goto_2

    :cond_5
    move v7, v6

    .line 2046
    .local v7, "willClearTask":Z
    :goto_2
    if-nez v7, :cond_d

    .line 2047
    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v10, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2048
    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2047
    invoke-direct {v0, v8, v10, v11, v12}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 2049
    .local v8, "launchStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v20

    .line 2050
    .local v20, "intentTask":Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_b

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-ne v8, v10, :cond_6

    goto/16 :goto_5

    .line 2057
    :cond_6
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2058
    iget v10, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v10, v10, 0x1000

    if-eqz v10, :cond_7

    .line 2061
    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "launchToSide"

    move-object/from16 v13, v20

    move-object v14, v8

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    goto :goto_3

    .line 2069
    :cond_7
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v12, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v15, "bringToFrontInsteadOfAdjacentLaunch"

    move-object/from16 v11, v20

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2073
    :goto_3
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v10

    .line 2074
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    if-eq v8, v10, :cond_8

    move v10, v9

    goto :goto_4

    :cond_8
    move v10, v6

    :goto_4
    iput-boolean v10, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_6

    .line 2075
    :cond_9
    iget v10, v8, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v11, v11, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v10, v11, :cond_a

    .line 2079
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "reparentToDisplay"

    move-object v14, v8

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2082
    iput-boolean v9, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_6

    .line 2083
    :cond_a
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2084
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v10

    if-nez v10, :cond_c

    .line 2089
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "reparentingHome"

    move-object v14, v8

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2092
    iput-boolean v9, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_6

    .line 2054
    :cond_b
    :goto_5
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v12, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v15, "bringingFoundTaskToFront"

    move-object/from16 v11, v20

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2056
    iput-boolean v9, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 2094
    :cond_c
    :goto_6
    iput-object v3, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2098
    invoke-virtual {v1, v3, v6, v9}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2105
    .end local v7    # "willClearTask":Z
    .end local v8    # "launchStack":Lcom/android/server/am/ActivityStack;
    .end local v20    # "intentTask":Lcom/android/server/am/TaskRecord;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2106
    iget-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-nez v3, :cond_f

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v3, :cond_f

    .line 2107
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_e

    const-string v3, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bring to front target: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    :cond_e
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v7, "intentActivityFound"

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2112
    :cond_f
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v7, v6, v6, v8}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    .line 2116
    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x200000

    and-int/2addr v3, v6

    if-eqz v3, :cond_10

    .line 2117
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v1, v6}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    return-object v3

    .line 2119
    :cond_10
    return-object v1
.end method

.method private setTaskFromInTask()I
    .locals 12

    .line 2352
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2353
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    const/16 v0, 0x65

    return v0

    .line 2357
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2361
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2362
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v3, v4, :cond_3

    .line 2364
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    .line 2365
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2366
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v9, "inTaskToFront"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2368
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 2371
    return v2

    .line 2373
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2374
    const/4 v1, 0x3

    return v1

    .line 2378
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v3, :cond_4

    .line 2379
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v9, "inTaskToFront"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2383
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2384
    return v1

    .line 2387
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v1, v1, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2389
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2390
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 2391
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string/jumbo v11, "inTaskToFront"

    move-object v6, v1

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2393
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2396
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v3, v3, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityStarter;->updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    .line 2399
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v9, "inTaskToFront"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2402
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v2, "setTaskFromInTask"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2403
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_7

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting new activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in explicit task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2404
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2403
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    :cond_7
    const/4 v1, 0x0

    return v1
.end method

.method private setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "intentActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 2123
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v1, 0x10008000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2134
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2135
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 2136
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 2137
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2138
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_7

    const/4 v0, 0x3

    const/4 v2, 0x2

    .line 2139
    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2163
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2168
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v1, v0, :cond_4

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 2170
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2171
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_3

    .line 2172
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2174
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_1

    .line 2175
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskRecord;->isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2178
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2179
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto :goto_1

    .line 2181
    :cond_5
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_6

    .line 2186
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2187
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto :goto_1

    .line 2188
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_9

    .line 2194
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_1

    .line 2140
    :cond_7
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2142
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_8

    .line 2146
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2149
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 2152
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 2153
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 2154
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-nez v3, :cond_8

    .line 2157
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2159
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/2addr v1, v4

    const-string/jumbo v4, "startActivityUnchecked"

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    .line 2163
    .end local v0    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_8
    nop

    .line 2196
    :cond_9
    :goto_1
    return-void
.end method

.method private setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)I
    .locals 16
    .param p1, "taskToAffiliate"    # Lcom/android/server/am/TaskRecord;
    .param p2, "topStack"    # Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2209
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v5, 0x1

    invoke-direct {v0, v2, v5, v3, v4}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2214
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_3

    .line 2215
    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2216
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v7

    .line 2217
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 2218
    :goto_0
    move-object v8, v2

    goto :goto_1

    .line 2217
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 2218
    :goto_1
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    :goto_2
    move-object v9, v2

    goto :goto_3

    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    goto :goto_2

    :goto_3
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/lit8 v12, v2, 0x1

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v15, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2215
    invoke-virtual/range {v6 .. v15}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 2221
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    const-string/jumbo v3, "setTaskFromReuseOrCreateNewTask - mReuseTask"

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2222
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v4, v4, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStarter;->updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    .line 2224
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_2

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting new activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in new task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2225
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2224
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    goto :goto_4

    .line 2227
    :cond_3
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v3, "setTaskFromReuseOrCreateNewTask"

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2230
    :goto_4
    if-eqz v1, :cond_4

    .line 2231
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 2234
    :cond_4
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2235
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    const/16 v2, 0x65

    return v2

    .line 2239
    :cond_5
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_6

    .line 2240
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v3, "reuseOrNewTask"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2242
    :cond_6
    const/4 v2, 0x0

    return v2
.end method

.method private setTaskFromSourceRecord()I
    .locals 14

    .line 2257
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2258
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    const/16 v0, 0x65

    return v0

    .line 2261
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2263
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 2264
    .local v1, "sourceTask":Lcom/android/server/am/TaskRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 2269
    .local v9, "sourceStack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_0

    .line 2270
    :cond_1
    iget v2, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    :goto_0
    move v10, v2

    .line 2271
    .local v10, "targetDisplayId":I
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2272
    invoke-virtual {v2, v10}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v12

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v11

    :goto_2
    move v13, v2

    .line 2273
    .local v13, "moveStackAllowed":Z
    if-eqz v13, :cond_5

    .line 2274
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2278
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_4

    iget v2, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v10, v2, :cond_4

    .line 2280
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2283
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_5

    .line 2286
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2291
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_6

    .line 2292
    iput-object v9, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    goto :goto_3

    .line 2293
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eq v2, v9, :cond_7

    .line 2294
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "launchToSide"

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2298
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 2299
    .local v8, "topTask":Lcom/android/server/am/TaskRecord;
    if-eq v8, v1, :cond_8

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v2, :cond_8

    .line 2300
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v7, "sourceTaskToFront"

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_4

    .line 2302
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_9

    .line 2303
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v3, "sourceStackToFront"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2306
    :cond_9
    :goto_4
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x7533

    if-nez v2, :cond_c

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x4000000

    and-int/2addr v2, v6

    if-eqz v2, :cond_c

    .line 2309
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v1, v2, v6}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 2310
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 2311
    if-eqz v2, :cond_b

    .line 2312
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2313
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2315
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2316
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v4, :cond_a

    .line 2317
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2319
    :cond_a
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v4}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2320
    return v3

    .line 2322
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_b
    goto :goto_5

    :cond_c
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v2, :cond_e

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x20000

    and-int/2addr v2, v6

    if-eqz v2, :cond_e

    .line 2326
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 2327
    .restart local v2    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_e

    .line 2328
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 2329
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v6, v2}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2330
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v7}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2331
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-static {v5, v7, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2332
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2333
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2334
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v4, :cond_d

    .line 2335
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2337
    :cond_d
    return v3

    .line 2343
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_e
    :goto_5
    const-string/jumbo v2, "setTaskFromSourceRecord"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2344
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_f

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in existing task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2345
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2344
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    :cond_f
    return v12
.end method

.method private setTaskToCurrentTopOrCreateNewTask()V
    .locals 12

    .line 2424
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2425
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_0

    .line 2426
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string v1, "addingToTopTask"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2428
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2429
    .local v0, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2430
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v3

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v11, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2429
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 2432
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    :goto_0
    const-string/jumbo v2, "setTaskToCurrentTopOrCreateNewTask"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2433
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/am/TaskRecord;)V

    .line 2434
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_2

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in new guessed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2435
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2434
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    :cond_2
    return-void
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I
    .locals 26
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ephemeralIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "resultWho"    # Ljava/lang/String;
    .param p11, "requestCode"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "callingPackage"    # Ljava/lang/String;
    .param p15, "realCallingPid"    # I
    .param p16, "realCallingUid"    # I
    .param p17, "startFlags"    # I
    .param p18, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p19, "ignoreTargetSecurity"    # Z
    .param p20, "componentSpecified"    # Z
    .param p21, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p22, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p23, "reason"    # Ljava/lang/String;
    .param p24, "allowPendingRemoteAnimationRegistryLookup"    # Z

    move-object/from16 v15, p0

    .line 566
    invoke-static/range {p23 .. p23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 569
    move-object/from16 v14, p23

    iput-object v14, v15, Lcom/android/server/am/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v15, Lcom/android/server/am/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 571
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    const/16 v24, 0x0

    aput-object v1, v0, v24

    .line 573
    iget-object v13, v15, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v21, v13

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v22, p22

    move/from16 v23, p24

    invoke-direct/range {v0 .. v23}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Z)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    .line 579
    if-eqz p21, :cond_0

    .line 581
    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v0, v24

    aput-object v0, p21, v24

    .line 584
    :cond_0
    iget v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    invoke-static {v0}, Lcom/android/server/am/ActivityStarter;->getExternalResult(I)I

    move-result v0

    return v0

    .line 567
    :cond_1
    move-object v1, v15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Need to specify a reason."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Z)I
    .locals 61
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ephemeralIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "resultWho"    # Ljava/lang/String;
    .param p11, "requestCode"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "callingPackage"    # Ljava/lang/String;
    .param p15, "realCallingPid"    # I
    .param p16, "realCallingUid"    # I
    .param p17, "startFlags"    # I
    .param p18, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p19, "ignoreTargetSecurity"    # Z
    .param p20, "componentSpecified"    # Z
    .param p21, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p22, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p23, "allowPendingRemoteAnimationRegistryLookup"    # Z

    move-object/from16 v15, p0

    move-object/from16 v4, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p9

    move/from16 v6, p12

    move-object/from16 v14, p14

    move/from16 v13, p16

    move/from16 v12, p17

    move-object/from16 v11, p18

    .line 611
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/16 v17, -0x5e

    const/4 v10, 0x0

    if-eqz v5, :cond_1

    .line 612
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " startActivityLocked # aInfo = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", callingPackage="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 613
    if-eqz v2, :cond_0

    .line 614
    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v5

    invoke-virtual {v5, v2, v14}, Lcom/android/server/am/OnePlusAppBootManager;->canActivityGo(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 615
    const-string v5, "OnePlusAppBootManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "forbid start "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " (pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p13

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return v17

    .line 620
    :cond_0
    move/from16 v8, p13

    const-string v5, "OnePlusAppBootManager"

    const-string v7, "# startActivityLocked # aInfo = null"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 627
    :cond_1
    move/from16 v8, p13

    :goto_0
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 628
    if-eqz v2, :cond_2

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    .line 629
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v7, "startActivityLocked"

    invoke-static {v5, v7}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 634
    :cond_2
    const/4 v7, 0x0

    .line 637
    .local v7, "err":I
    if-eqz v11, :cond_3

    invoke-virtual/range {p18 .. p18}, Lcom/android/server/am/SafeActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v10

    .line 639
    .local v5, "verificationBundle":Landroid/os/Bundle;
    :goto_1
    const/4 v9, 0x0

    .line 640
    .local v9, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v4, :cond_5

    .line 641
    iget-object v10, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10, v4}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    .line 642
    if-eqz v9, :cond_4

    .line 643
    iget v6, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 644
    .end local p12    # "callingPid":I
    .local v6, "callingPid":I
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 653
    .end local p13    # "callingUid":I
    .local v8, "callingUid":I
    move/from16 v19, v7

    move v10, v8

    move v8, v6

    goto :goto_2

    .line 646
    .end local v6    # "callingPid":I
    .end local v8    # "callingUid":I
    .restart local p12    # "callingPid":I
    .restart local p13    # "callingUid":I
    :cond_4
    const-string v10, "ActivityManager"

    move/from16 v19, v7

    new-instance v7, Ljava/lang/StringBuilder;

    .line 646
    .end local v7    # "err":I
    .local v19, "err":I
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find app for caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " (pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") when starting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 646
    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/16 v7, -0x5e

    .line 653
    .end local v19    # "err":I
    .restart local v7    # "err":I
    move v8, v6

    move/from16 v19, v7

    move/from16 v10, p13

    goto :goto_2

    :cond_5
    move/from16 v19, v7

    move v8, v6

    move/from16 v10, p13

    .line 653
    .end local v7    # "err":I
    .end local p12    # "callingPid":I
    .end local p13    # "callingUid":I
    .local v8, "callingPid":I
    .local v10, "callingUid":I
    .restart local v19    # "err":I
    :goto_2
    if-eqz v2, :cond_6

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_6

    .line 654
    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    .line 659
    .local v6, "userId":I
    :goto_3
    move-object/from16 v37, v5

    .line 659
    .end local v5    # "verificationBundle":Landroid/os/Bundle;
    .local v37, "verificationBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    .line 660
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v39, v6

    move-object v6, v7

    .line 660
    .end local v6    # "userId":I
    .local v39, "userId":I
    const/4 v5, 0x0

    move-object v7, v4

    move/from16 v41, v8

    move/from16 v8, p11

    .line 660
    .end local v8    # "callingPid":I
    .local v41, "callingPid":I
    move-object/from16 v42, v9

    move-object v9, v14

    .line 660
    .end local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v42, "callerApp":Lcom/android/server/am/ProcessRecord;
    move/from16 v43, v10

    move-object v10, v2

    .line 660
    .end local v10    # "callingUid":I
    .local v43, "callingUid":I
    move-object v11, v0

    move/from16 v12, v43

    move/from16 v13, v39

    move-object/from16 v14, p18

    invoke-virtual/range {v6 .. v14}, Lcom/android/server/am/ActivityManagerService;->checkParallelAppControl(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IILcom/android/server/am/SafeActivityOptions;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 663
    const-string v6, "IS_FROM_CHOOSER_ACTIVITY"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_7

    .line 664
    const-string v6, "IS_FROM_CHOOSER_ACTIVITY"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 665
    const-string v6, " "

    invoke-static {v0, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v12

    .line 666
    .local v12, "chooserIntent":Landroid/content/Intent;
    const-string v6, "IS_SHOW_PARALLEL_APP"

    invoke-virtual {v12, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 667
    move-object v0, v12

    .line 668
    .end local p2    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v0

    move/from16 v11, p16

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 669
    .end local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v13, 0x0

    move/from16 v14, p17

    invoke-virtual {v7, v0, v6, v14, v13}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 671
    .end local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startActivityLocked: userId("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v39

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v39    # "userId":I
    .local v11, "userId":I
    const-string v9, "), aInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", callingPackage="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p14

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/OnePlusParallelAppUtils;->pLogd(Ljava/lang/String;Ljava/lang/String;)V

    .end local v12    # "chooserIntent":Landroid/content/Intent;
    goto :goto_4

    .line 680
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "userId":I
    .restart local v39    # "userId":I
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_7
    move/from16 v11, v39

    move-object/from16 v9, p14

    const/4 v13, 0x0

    move/from16 v14, p17

    .line 680
    .end local v39    # "userId":I
    .restart local v11    # "userId":I
    move-object/from16 v6, p6

    .line 680
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_4
    move/from16 v12, v43

    invoke-direct {v15, v12, v0, v11}, Lcom/android/server/am/ActivityStarter;->maybeAddUserIdtoIntent(ILandroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    .line 687
    .end local v43    # "callingUid":I
    .local v12, "callingUid":I
    move-object v10, v0

    move-object v8, v6

    goto :goto_5

    .line 687
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v11    # "userId":I
    .end local v12    # "callingUid":I
    .end local v41    # "callingPid":I
    .end local v42    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v6, "userId":I
    .restart local v8    # "callingPid":I
    .restart local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v10    # "callingUid":I
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_8
    move v11, v6

    move/from16 v41, v8

    move-object/from16 v42, v9

    move-object v9, v14

    const/4 v5, 0x0

    const/4 v13, 0x0

    move v14, v12

    move v12, v10

    .line 687
    .end local v6    # "userId":I
    .end local v8    # "callingPid":I
    .end local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "callingUid":I
    .restart local v11    # "userId":I
    .restart local v12    # "callingUid":I
    .restart local v41    # "callingPid":I
    .restart local v42    # "callerApp":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v8, p6

    move-object v10, v0

    .line 687
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v8, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v10, "intent":Landroid/content/Intent;
    :goto_5
    const/16 v0, 0x2710

    if-lt v12, v0, :cond_9

    if-eqz v2, :cond_9

    const-string v0, "com.oneplus.factorymode"

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 688
    return v17

    .line 693
    :cond_9
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

    if-nez v0, :cond_a

    .line 694
    const-class v0, Landroid/secrecy/SecrecyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/secrecy/SecrecyManagerInternal;

    iput-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

    .line 696
    :cond_a
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

    if-eqz v0, :cond_b

    const-string/jumbo v0, "sys.oem.decrypt"

    .line 697
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

    .line 698
    move/from16 v7, v41

    invoke-virtual {v0, v2, v9, v12, v7}, Landroid/secrecy/SecrecyManagerInternal;->isInEncryptedAppList(Landroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v0

    .line 698
    .end local v41    # "callingPid":I
    .local v7, "callingPid":I
    if-eqz v0, :cond_c

    .line 700
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " is isInEncryptedAppList "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/16 v19, 0x64

    goto :goto_6

    .line 707
    .end local v7    # "callingPid":I
    .restart local v41    # "callingPid":I
    :cond_b
    move/from16 v7, v41

    .line 707
    .end local v41    # "callingPid":I
    .restart local v7    # "callingPid":I
    :cond_c
    :goto_6
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v8, v12}, Lcom/oneplus/util/OemSceneModeUtils;->isBlockedByGameModeWithUid(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 708
    return v5

    .line 712
    :cond_d
    if-nez v19, :cond_f

    .line 713
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "START u"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " {"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    invoke-virtual {v10, v13, v13, v13, v5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "} from uid "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 725
    .local v0, "cmp":Landroid/content/ComponentName;
    if-eqz v0, :cond_f

    .line 726
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 727
    .local v4, "name":Ljava/lang/String;
    const-string v6, "android"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 728
    :cond_e
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConnor:Lcom/android/server/am/Connor;

    const-string v13, "android.intent.category.HOME"

    invoke-virtual {v10, v13}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v6, v4, v13}, Lcom/android/server/am/Connor;->feed(Ljava/lang/String;Z)V

    .line 733
    .end local v0    # "cmp":Landroid/content/ComponentName;
    .end local v4    # "name":Ljava/lang/String;
    :cond_f
    const/4 v0, 0x0

    .line 734
    .local v0, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v4, 0x0

    .line 735
    .local v4, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_11

    .line 736
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 737
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v6, :cond_10

    const-string v6, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Will send result to "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_10
    if-eqz v0, :cond_11

    .line 740
    if-ltz p11, :cond_11

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_11

    .line 741
    move-object v4, v0

    .line 746
    .end local v0    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .local v5, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_11
    move-object v5, v0

    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v17

    .line 748
    .local v17, "launchFlags":I
    const/high16 v0, 0x2000000

    and-int v0, v17, v0

    if-eqz v0, :cond_16

    if-eqz v5, :cond_16

    .line 751
    if-ltz p11, :cond_12

    .line 752
    invoke-static/range {p18 .. p18}, Lcom/android/server/am/SafeActivityOptions;->abort(Lcom/android/server/am/SafeActivityOptions;)V

    .line 753
    const/16 v0, -0x5d

    return v0

    .line 755
    :cond_12
    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 756
    .end local v4    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .local v0, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked()Z

    move-result v4

    if-nez v4, :cond_13

    .line 757
    const/4 v0, 0x0

    .line 759
    :cond_13
    iget-object v4, v5, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 760
    .end local p10    # "resultWho":Ljava/lang/String;
    .local v4, "resultWho":Ljava/lang/String;
    iget v6, v5, Lcom/android/server/am/ActivityRecord;->requestCode:I

    .line 761
    .end local p11    # "requestCode":I
    .local v6, "requestCode":I
    const/4 v13, 0x0

    iput-object v13, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 762
    if-eqz v0, :cond_14

    .line 763
    invoke-virtual {v0, v5, v4, v6}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 765
    :cond_14
    iget v13, v5, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    if-ne v13, v12, :cond_15

    .line 776
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 780
    .end local v0    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "requestCode":I
    .end local p14    # "callingPackage":Ljava/lang/String;
    .local v4, "callingPackage":Ljava/lang/String;
    .local v13, "resultRecord":Lcom/android/server/am/ActivityRecord;
    .local v16, "resultWho":Ljava/lang/String;
    .local v18, "requestCode":I
    :cond_15
    move-object v13, v0

    move-object/from16 v16, v4

    move/from16 v18, v6

    goto :goto_7

    .line 780
    .end local v13    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "resultWho":Ljava/lang/String;
    .end local v18    # "requestCode":I
    .local v4, "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local p10    # "resultWho":Ljava/lang/String;
    .restart local p11    # "requestCode":I
    .restart local p14    # "callingPackage":Ljava/lang/String;
    :cond_16
    move-object/from16 v16, p10

    move/from16 v18, p11

    move-object v13, v4

    .line 780
    .end local p10    # "resultWho":Ljava/lang/String;
    .end local p11    # "requestCode":I
    .end local p14    # "callingPackage":Ljava/lang/String;
    .local v4, "callingPackage":Ljava/lang/String;
    .restart local v13    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "resultWho":Ljava/lang/String;
    .restart local v18    # "requestCode":I
    :goto_7
    move-object v4, v9

    if-nez v19, :cond_17

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_17

    .line 783
    const/16 v19, -0x5b

    .line 786
    :cond_17
    if-nez v19, :cond_18

    if-nez v2, :cond_18

    .line 789
    const/16 v19, -0x5c

    .line 792
    :cond_18
    if-nez v19, :cond_1a

    if-eqz v5, :cond_1a

    .line 793
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1a

    .line 798
    const/high16 v0, 0x10000000

    and-int v0, v17, v0

    if-nez v0, :cond_1a

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v6, :cond_1a

    .line 801
    :try_start_0
    const-string v0, "android.intent.category.VOICE"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 803
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 802
    invoke-interface {v0, v6, v10, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 804
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    const/16 v0, -0x61

    .line 812
    .end local v19    # "err":I
    .local v0, "err":I
    move/from16 v19, v0

    .line 812
    .end local v0    # "err":I
    .restart local v19    # "err":I
    :cond_19
    goto :goto_8

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "ActivityManager"

    const-string v9, "Failure checking voice capabilities"

    invoke-static {v6, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 811
    const/16 v19, -0x61

    .line 816
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    :goto_8
    if-nez v19, :cond_1c

    if-eqz p7, :cond_1c

    .line 820
    :try_start_1
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v0, v6, v10, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 822
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity being started in new voice task does not support: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 825
    const/16 v0, -0x61

    .line 830
    .end local v19    # "err":I
    .local v0, "err":I
    move/from16 v19, v0

    .line 830
    .end local v0    # "err":I
    .restart local v19    # "err":I
    :cond_1b
    goto :goto_9

    .line 827
    :catch_1
    move-exception v0

    .line 828
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "ActivityManager"

    const-string v9, "Failure checking voice capabilities"

    invoke-static {v6, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 829
    const/16 v19, -0x61

    .line 833
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v19    # "err":I
    .local v38, "err":I
    :cond_1c
    :goto_9
    move/from16 v38, v19

    if-nez v13, :cond_1d

    const/16 v44, 0x0

    goto :goto_a

    :cond_1d
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    move-object/from16 v44, v0

    .line 835
    .local v44, "resultStack":Lcom/android/server/am/ActivityStack;
    :goto_a
    if-eqz v38, :cond_1f

    .line 836
    if-eqz v13, :cond_1e

    .line 837
    const/16 v45, -0x1

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v46, v13

    move-object/from16 v47, v16

    move/from16 v48, v18

    invoke-virtual/range {v44 .. v50}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 840
    :cond_1e
    invoke-static/range {p18 .. p18}, Lcom/android/server/am/SafeActivityOptions;->abort(Lcom/android/server/am/SafeActivityOptions;)V

    .line 841
    return v38

    .line 844
    :cond_1f
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz p22, :cond_20

    const/16 v28, 0x1

    goto :goto_b

    :cond_20
    const/16 v28, 0x0

    :goto_b
    move-object/from16 v19, v0

    move-object/from16 v20, v10

    move-object/from16 v21, v2

    move-object/from16 v22, v16

    move/from16 v23, v18

    move/from16 v24, v7

    move/from16 v25, v12

    move-object/from16 v26, v4

    move/from16 v27, p19

    move-object/from16 v29, v42

    move-object/from16 v30, v13

    move-object/from16 v31, v44

    invoke-virtual/range {v19 .. v31}, Lcom/android/server/am/ActivityStackSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZZLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    .line 847
    .local v0, "abort":Z
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v19, v7

    move-object v7, v10

    .line 847
    .end local v7    # "callingPid":I
    .local v19, "callingPid":I
    move-object/from16 v20, v8

    move v8, v12

    .line 847
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v20, "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v21, v9

    move/from16 v9, v19

    move-object v3, v10

    move-object v10, v1

    .line 847
    .end local v10    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    move/from16 v51, v11

    move-object/from16 v11, v21

    .line 847
    .end local v11    # "userId":I
    .local v51, "userId":I
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    or-int/2addr v6, v0

    .line 851
    .end local v0    # "abort":Z
    .local v6, "abort":Z
    move-object/from16 v11, p18

    if-eqz v11, :cond_21

    .line 852
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v10, v42

    invoke-virtual {v11, v3, v2, v10, v0}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 852
    .end local v42    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v10, "callerApp":Lcom/android/server/am/ProcessRecord;
    goto :goto_c

    .line 853
    .end local v10    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v42    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_21
    move-object/from16 v10, v42

    .line 853
    .end local v42    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v10    # "callerApp":Lcom/android/server/am/ProcessRecord;
    const/4 v0, 0x0

    .line 854
    .local v0, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_c
    if-eqz p23, :cond_22

    .line 855
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v7

    .line 856
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStartController;->getPendingRemoteAnimationRegistry()Lcom/android/server/am/PendingRemoteAnimationRegistry;

    move-result-object v7

    .line 857
    invoke-virtual {v7, v4, v0}, Lcom/android/server/am/PendingRemoteAnimationRegistry;->overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 859
    .end local v0    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v21, "checkedOptions":Landroid/app/ActivityOptions;
    :cond_22
    move-object/from16 v21, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_23

    .line 863
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    .line 864
    .local v0, "watchIntent":Landroid/content/Intent;
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v8, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v0, v8}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    or-int/2addr v6, v7

    .line 868
    .end local v0    # "watchIntent":Landroid/content/Intent;
    nop

    .line 871
    move v0, v6

    const/4 v9, 0x0

    goto :goto_e

    .line 866
    :catch_2
    move-exception v0

    .line 867
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 867
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_d

    .line 871
    :cond_23
    const/4 v9, 0x0

    :goto_d
    move v0, v6

    .line 871
    .end local v6    # "abort":Z
    .local v0, "abort":Z
    :goto_e
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move/from16 v7, v51

    move/from16 v8, p15

    move-object/from16 v22, v9

    move/from16 v9, p16

    move-object/from16 v41, v10

    move v10, v14

    .line 871
    .end local v10    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v41, "callerApp":Lcom/android/server/am/ProcessRecord;
    move-object v11, v4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;)V

    .line 872
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move-object v7, v3

    move-object/from16 v8, v20

    move-object v9, v2

    move-object v10, v1

    move-object/from16 v11, p22

    move/from16 v23, v12

    move/from16 v12, v19

    .line 872
    .end local v12    # "callingUid":I
    .local v23, "callingUid":I
    move-object/from16 v52, v5

    move-object/from16 v42, v13

    move-object/from16 v5, v22

    move/from16 v13, v23

    .line 872
    .end local v5    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .local v42, "resultRecord":Lcom/android/server/am/ActivityRecord;
    .local v52, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    move v5, v14

    move-object/from16 v14, v21

    invoke-virtual/range {v6 .. v14}, Lcom/android/server/am/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/am/TaskRecord;IILandroid/app/ActivityOptions;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 876
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v10, v6, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 877
    .end local v3    # "intent":Landroid/content/Intent;
    .local v10, "intent":Landroid/content/Intent;
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v8, v3, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 878
    .end local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v2, v3, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 879
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v1, v3, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 880
    .end local p4    # "resolvedType":Ljava/lang/String;
    .local v1, "resolvedType":Ljava/lang/String;
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 881
    .end local p22    # "inTask":Lcom/android/server/am/TaskRecord;
    .local v3, "inTask":Lcom/android/server/am/TaskRecord;
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v6, v6, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 882
    .end local v19    # "callingPid":I
    .local v6, "callingPid":I
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v7, v7, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 883
    .end local v23    # "callingUid":I
    .local v7, "callingUid":I
    iget-object v9, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 886
    .end local v21    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v9, "checkedOptions":Landroid/app/ActivityOptions;
    move-object/from16 v43, v3

    move-object v14, v9

    goto :goto_f

    .line 886
    .end local v1    # "resolvedType":Ljava/lang/String;
    .end local v6    # "callingPid":I
    .end local v7    # "callingUid":I
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v10    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    .restart local v19    # "callingPid":I
    .restart local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v21    # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v23    # "callingUid":I
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p22    # "inTask":Lcom/android/server/am/TaskRecord;
    :cond_24
    move-object/from16 v43, p22

    move-object v10, v3

    move/from16 v6, v19

    move-object/from16 v8, v20

    move-object/from16 v14, v21

    move/from16 v7, v23

    .line 886
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v19    # "callingPid":I
    .end local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v21    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v23    # "callingUid":I
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p22    # "inTask":Lcom/android/server/am/TaskRecord;
    .restart local v1    # "resolvedType":Ljava/lang/String;
    .restart local v6    # "callingPid":I
    .restart local v7    # "callingUid":I
    .restart local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v10    # "intent":Landroid/content/Intent;
    .local v14, "checkedOptions":Landroid/app/ActivityOptions;
    .local v43, "inTask":Lcom/android/server/am/TaskRecord;
    :goto_f
    if-eqz v0, :cond_26

    .line 887
    if-eqz v42, :cond_25

    .line 888
    const/16 v21, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v44

    move-object/from16 v22, v42

    move-object/from16 v23, v16

    move/from16 v24, v18

    invoke-virtual/range {v20 .. v26}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 893
    :cond_25
    invoke-static {v14}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 894
    const/16 v3, 0x66

    return v3

    .line 900
    :cond_26
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mPermissionReviewRequired:Z

    if-eqz v3, :cond_2b

    if-eqz v2, :cond_2b

    .line 901
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v13, v51

    invoke-virtual {v3, v9, v13}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v3

    .line 901
    .end local v51    # "userId":I
    .local v13, "userId":I
    if-eqz v3, :cond_2a

    .line 903
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v21, 0x2

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/4 v9, 0x1

    new-array v11, v9, [Landroid/content/Intent;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    move/from16 v53, v0

    new-array v0, v9, [Ljava/lang/String;

    .end local v0    # "abort":Z
    .local v53, "abort":Z
    aput-object v1, v0, v12

    const/high16 v30, 0x50000000

    const/16 v31, 0x0

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    move/from16 v23, v7

    move/from16 v24, v13

    move-object/from16 v28, v11

    move-object/from16 v29, v0

    invoke-virtual/range {v20 .. v31}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 909
    .local v0, "target":Landroid/content/IIntentSender;
    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v3

    .line 910
    .local v3, "flags":I
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 911
    .local v9, "newIntent":Landroid/content/Intent;
    const/high16 v11, 0x800000

    or-int/2addr v11, v3

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 913
    const-string v11, "android.intent.extra.PACKAGE_NAME"

    iget-object v12, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 914
    const-string v11, "android.intent.extra.INTENT"

    new-instance v12, Landroid/content/IntentSender;

    invoke-direct {v12, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 915
    if-eqz v42, :cond_27

    .line 916
    const-string v11, "android.intent.extra.RESULT_NEEDED"

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 918
    :cond_27
    move-object v10, v9

    .line 920
    const/4 v1, 0x0

    .line 921
    move/from16 v7, p16

    .line 922
    move/from16 v6, p15

    .line 924
    iget-object v11, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v24, 0x0

    iget-object v12, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v12, v12, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 925
    move-object/from16 v54, v9

    move/from16 v9, p16

    invoke-static {v7, v9, v12}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v25

    .line 924
    .end local v9    # "newIntent":Landroid/content/Intent;
    .local v54, "newIntent":Landroid/content/Intent;
    move-object/from16 v20, v11

    move-object/from16 v21, v10

    move-object/from16 v22, v1

    move/from16 v23, v13

    invoke-virtual/range {v20 .. v25}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 927
    iget-object v11, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v8, v5, v12}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 929
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v11, :cond_29

    .line 930
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v55, v0

    const-string v0, "START u"

    .line 930
    .end local v0    # "target":Landroid/content/IIntentSender;
    .local v55, "target":Landroid/content/IIntentSender;
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " {"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v56, v8

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {v10, v5, v5, v5, v8}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v56, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "} from uid "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pid "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " on display "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_28

    .line 938
    move v0, v8

    goto :goto_10

    :cond_28
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    :goto_10
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 930
    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    .end local v3    # "flags":I
    .end local v54    # "newIntent":Landroid/content/Intent;
    .end local v55    # "target":Landroid/content/IIntentSender;
    goto :goto_11

    .line 947
    .end local v56    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_29
    move-object/from16 v56, v8

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 947
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v56    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_11
    move-object/from16 v20, v2

    move/from16 v19, v6

    move v12, v7

    move-object v11, v10

    move-object/from16 v0, v56

    move-object v10, v1

    goto :goto_13

    .line 947
    .end local v53    # "abort":Z
    .end local v56    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v0, "abort":Z
    .restart local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_2a
    move/from16 v9, p16

    move/from16 v53, v0

    move-object/from16 v20, v8

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 947
    .end local v0    # "abort":Z
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v53    # "abort":Z
    goto :goto_12

    .line 947
    .end local v13    # "userId":I
    .end local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v53    # "abort":Z
    .restart local v0    # "abort":Z
    .restart local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v51    # "userId":I
    :cond_2b
    move/from16 v9, p16

    move/from16 v53, v0

    move-object/from16 v20, v8

    move/from16 v13, v51

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 947
    .end local v0    # "abort":Z
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v51    # "userId":I
    .restart local v13    # "userId":I
    .restart local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v53    # "abort":Z
    :goto_12
    move/from16 v19, v6

    move v12, v7

    move-object v11, v10

    move-object/from16 v0, v20

    move-object v10, v1

    move-object/from16 v20, v2

    .line 947
    .end local v1    # "resolvedType":Ljava/lang/String;
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "callingPid":I
    .end local v7    # "callingUid":I
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v10, "resolvedType":Ljava/lang/String;
    .local v11, "intent":Landroid/content/Intent;
    .restart local v12    # "callingUid":I
    .restart local v19    # "callingPid":I
    .local v20, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_13
    if-eqz v0, :cond_2c

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v1, :cond_2c

    .line 948
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    move-object v1, v15

    move-object/from16 v3, p3

    move-object/from16 v40, v4

    .line 948
    .end local v4    # "callingPackage":Ljava/lang/String;
    .local v40, "callingPackage":Ljava/lang/String;
    move-object v6, v10

    move v7, v13

    move/from16 v58, v12

    move-object/from16 v5, v37

    move-object/from16 v57, v52

    move/from16 v8, p17

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 950
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "callingUid":I
    .end local v37    # "verificationBundle":Landroid/os/Bundle;
    .end local v52    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .local v1, "intent":Landroid/content/Intent;
    .local v5, "verificationBundle":Landroid/os/Bundle;
    .local v57, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .local v58, "callingUid":I
    const/4 v2, 0x0

    .line 951
    .end local v10    # "resolvedType":Ljava/lang/String;
    .local v2, "resolvedType":Ljava/lang/String;
    move v3, v9

    .line 952
    .end local v58    # "callingUid":I
    .local v3, "callingUid":I
    move/from16 v4, p15

    .line 954
    .end local v19    # "callingPid":I
    .local v4, "callingPid":I
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v1, v0, v8, v12}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 957
    .end local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    move/from16 v58, v3

    move-object v3, v6

    goto :goto_14

    .line 957
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "resolvedType":Ljava/lang/String;
    .end local v3    # "callingUid":I
    .end local v5    # "verificationBundle":Landroid/os/Bundle;
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v40    # "callingPackage":Ljava/lang/String;
    .end local v57    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .local v4, "callingPackage":Ljava/lang/String;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v12    # "callingUid":I
    .restart local v19    # "callingPid":I
    .restart local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v37    # "verificationBundle":Landroid/os/Bundle;
    .restart local v52    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_2c
    move-object/from16 v40, v4

    move/from16 v58, v12

    move-object/from16 v5, v37

    move-object/from16 v57, v52

    move/from16 v8, p17

    .line 957
    .end local v4    # "callingPackage":Ljava/lang/String;
    .end local v12    # "callingUid":I
    .end local v37    # "verificationBundle":Landroid/os/Bundle;
    .end local v52    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v5    # "verificationBundle":Landroid/os/Bundle;
    .restart local v40    # "callingPackage":Ljava/lang/String;
    .restart local v57    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v58    # "callingUid":I
    move-object v2, v10

    move-object v1, v11

    move/from16 v4, v19

    move-object/from16 v3, v20

    .line 957
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v19    # "callingPid":I
    .end local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "resolvedType":Ljava/lang/String;
    .local v3, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v4, "callingPid":I
    :goto_14
    new-instance v6, Lcom/android/server/am/ActivityRecord;

    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 958
    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v28

    if-eqz p7, :cond_2d

    const/16 v33, 0x1

    goto :goto_15

    :cond_2d
    const/16 v33, 0x0

    :goto_15
    iget-object v10, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v41

    move/from16 v22, v4

    move/from16 v23, v58

    move-object/from16 v24, v40

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v29, v42

    move-object/from16 v30, v16

    move/from16 v31, v18

    move/from16 v32, p20

    move-object/from16 v34, v10

    move-object/from16 v35, v14

    move-object/from16 v36, v57

    invoke-direct/range {v19 .. v36}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V

    move-object v12, v6

    .line 961
    .local v12, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p21, :cond_2e

    .line 962
    const/4 v6, 0x0

    aput-object v12, p21, v6

    .line 965
    :cond_2e
    iget-object v6, v12, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v6, :cond_2f

    move-object/from16 v11, v57

    if-eqz v11, :cond_30

    .line 968
    .end local v57    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .local v11, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v11, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v6, v12, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_16

    .line 971
    .end local v11    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v57    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_2f
    move-object/from16 v11, v57

    .line 971
    .end local v57    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v11    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_30
    :goto_16
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v6, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 975
    .local v10, "stack":Lcom/android/server/am/ActivityStack;
    if-nez p7, :cond_34

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_32

    .line 976
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v6, v9, :cond_31

    goto :goto_17

    .line 986
    :cond_31
    move-object/from16 v59, v0

    move-object/from16 v60, v1

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    goto :goto_18

    .line 977
    :cond_32
    :goto_17
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v19, "Activity start"

    move v7, v4

    move/from16 v8, v58

    move/from16 v9, p15

    move-object/from16 v20, v10

    move/from16 v10, p16

    .line 977
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .local v20, "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v21, v11

    move-object/from16 v11, v19

    .line 977
    .end local v11    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .local v21, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 979
    iget-object v11, v15, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    new-instance v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    move-object v6, v10

    move-object v7, v12

    move-object/from16 v8, v21

    move/from16 v9, p17

    move-object/from16 v59, v0

    move-object v0, v10

    move-object/from16 v10, v20

    .line 979
    .end local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v59, "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v60, v1

    move-object v1, v11

    move-object/from16 v11, v41

    .line 979
    .end local v1    # "intent":Landroid/content/Intent;
    .local v60, "intent":Landroid/content/Intent;
    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStartController;->addPendingActivityLaunch(Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;)V

    .line 981
    invoke-static {v14}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 982
    const/16 v0, 0x64

    return v0

    .line 986
    .end local v59    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v60    # "intent":Landroid/content/Intent;
    .restart local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_33
    move-object/from16 v59, v0

    move-object/from16 v60, v1

    .line 986
    .end local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v59    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v60    # "intent":Landroid/content/Intent;
    goto :goto_18

    .line 986
    .end local v20    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v21    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .end local v59    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v60    # "intent":Landroid/content/Intent;
    .restart local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v11    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_34
    move-object/from16 v59, v0

    move-object/from16 v60, v1

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    .line 986
    .end local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v11    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v20    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v21    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v59    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v60    # "intent":Landroid/content/Intent;
    :goto_18
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v0, :cond_35

    .line 992
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    goto :goto_19

    .line 994
    :cond_35
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    .line 997
    :goto_19
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStartController;->doPendingActivityLaunches(Z)V

    .line 999
    const/4 v0, 0x1

    move-object v6, v15

    move-object v7, v12

    move-object/from16 v8, v21

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p17

    move-object v1, v12

    move v12, v0

    .line 999
    .end local v12    # "r":Lcom/android/server/am/ActivityRecord;
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    move/from16 v19, v13

    move-object v13, v14

    .line 999
    .end local v13    # "userId":I
    .local v19, "userId":I
    move-object v0, v14

    move-object/from16 v14, v43

    .line 999
    .end local v14    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v0, "checkedOptions":Landroid/app/ActivityOptions;
    move-object/from16 v15, p21

    invoke-direct/range {v6 .. v15}, Lcom/android/server/am/ActivityStarter;->startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v6

    return v6
.end method

.method private startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p9, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    move-object v1, p0

    .line 1348
    const/16 v0, -0x60

    move v2, v0

    .line 1350
    .local v2, "result":I
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1351
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/ActivityStarter;->startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    .end local v2    # "result":I
    .local v0, "result":I
    iget-object v2, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1358
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 1359
    iget-object v4, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "startActivity"

    const/4 v8, 0x1

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1362
    :cond_0
    iget-object v3, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1363
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    nop

    .line 1365
    iget-object v2, v1, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object v3, p1

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/server/am/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    .line 1367
    return v0

    .line 1357
    .end local v0    # "result":I
    .local v2, "result":I
    :catchall_0
    move-exception v0

    move-object v3, p1

    iget-object v4, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1358
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-static {v2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    .line 1359
    iget-object v6, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string/jumbo v9, "startActivity"

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1362
    :cond_1
    iget-object v5, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1363
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    throw v0
.end method

.method private startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ZILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I
    .locals 47
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/WaitResult;
    .param p14, "globalConfig"    # Landroid/content/res/Configuration;
    .param p15, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p16, "ignoreTargetSecurity"    # Z
    .param p17, "userId"    # I
    .param p18, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p19, "reason"    # Ljava/lang/String;
    .param p20, "allowPendingRemoteAnimationRegistryLookup"    # Z

    move-object/from16 v15, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p4

    move-object/from16 v14, p13

    move-object/from16 v13, p14

    move/from16 v12, p17

    .line 1085
    if-eqz v0, :cond_1

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1086
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1088
    :cond_1
    :goto_0
    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    .line 1089
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1091
    .local v2, "componentSpecified":Z
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v28

    .line 1092
    .local v28, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1095
    .local v10, "realCallingUid":I
    if-ltz p2, :cond_3

    .line 1096
    const/4 v5, -0x1

    .line 1101
    .local v5, "callingPid":I
    move/from16 v9, p2

    goto :goto_3

    .line 1097
    .end local v5    # "callingPid":I
    :cond_3
    if-nez v1, :cond_4

    .line 1098
    move/from16 v5, v28

    .line 1099
    .restart local v5    # "callingPid":I
    move v4, v10

    .line 1101
    .end local p2    # "callingUid":I
    .local v4, "callingUid":I
    .local v9, "callingUid":I
    :goto_2
    move v9, v4

    goto :goto_3

    .line 1101
    .end local v4    # "callingUid":I
    .end local v5    # "callingPid":I
    .end local v9    # "callingUid":I
    .restart local p2    # "callingUid":I
    :cond_4
    const/4 v5, -0x1

    move v4, v5

    goto :goto_2

    .line 1101
    .end local p2    # "callingUid":I
    .restart local v5    # "callingPid":I
    .restart local v9    # "callingUid":I
    :goto_3
    move v8, v5

    .line 1105
    .end local v5    # "callingPid":I
    .local v8, "callingPid":I
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1107
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v7, v5

    .line 1108
    .end local p4    # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    if-eqz v2, :cond_6

    const-string v5, "android.intent.action.VIEW"

    .line 1109
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_6

    :cond_5
    const-string v5, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    .line 1110
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    .line 1111
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1112
    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    .line 1113
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1117
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1118
    const/4 v2, 0x0

    .line 1121
    :cond_6
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v16, 0x0

    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v6, v6, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 1122
    invoke-static {v9, v10, v6}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v17

    .line 1121
    move-object v6, v7

    move-object/from16 v29, v7

    move-object/from16 v7, p5

    .line 1121
    .end local v7    # "intent":Landroid/content/Intent;
    .local v29, "intent":Landroid/content/Intent;
    move v11, v8

    move v8, v12

    .line 1121
    .end local v8    # "callingPid":I
    .local v11, "callingPid":I
    move v3, v9

    move/from16 v9, v16

    .line 1121
    .end local v9    # "callingUid":I
    .local v3, "callingUid":I
    move-object/from16 v32, v4

    move v4, v10

    move/from16 v10, v17

    .line 1121
    .end local v10    # "realCallingUid":I
    .local v4, "realCallingUid":I
    .local v32, "ephemeralIntent":Landroid/content/Intent;
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 1128
    .local v5, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->IS_PARALLEL_APP_FEATURED:Z

    if-eqz v6, :cond_8

    .line 1129
    if-nez v5, :cond_8

    .line 1130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1132
    .local v6, "identity":J
    const/16 v8, 0x3e7

    if-ne v12, v8, :cond_7

    .line 1133
    :try_start_0
    const-string v8, "ActivityManager"

    const-string/jumbo v9, "startActivity resolve intent to owner"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iget-object v8, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v9, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v9, v9, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 1135
    invoke-static {v3, v4, v9}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v21

    .line 1134
    move-object/from16 v16, v8

    move-object/from16 v17, v29

    move-object/from16 v18, p5

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v8

    goto :goto_4

    .line 1139
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_7
    :goto_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1140
    nop

    .line 1145
    .end local v5    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "identity":J
    .local v16, "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_8
    move-object/from16 v16, v5

    if-nez v16, :cond_a

    .line 1146
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 1147
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1151
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    .line 1152
    .local v9, "userManager":Landroid/os/UserManager;
    const/4 v5, 0x0

    .line 1153
    .local v5, "profileLockedAndParentUnlockingOrUnlocked":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    move-wide v7, v6

    .line 1155
    .local v7, "token":J
    :try_start_1
    invoke-virtual {v9, v12}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1156
    .local v6, "parent":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_9

    :try_start_2
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    .line 1157
    invoke-virtual {v9, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1158
    invoke-virtual {v9, v12}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    .line 1160
    .end local v6    # "parent":Landroid/content/pm/UserInfo;
    :catchall_1
    move-exception v0

    move-wide/from16 v33, v7

    move-object/from16 v19, v9

    move-object/from16 v17, v10

    goto :goto_6

    .line 1158
    .restart local v6    # "parent":Landroid/content/pm/UserInfo;
    :cond_9
    const/4 v0, 0x0

    .line 1160
    .end local v5    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v6    # "parent":Landroid/content/pm/UserInfo;
    .local v0, "profileLockedAndParentUnlockingOrUnlocked":Z
    :goto_5
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1161
    nop

    .line 1162
    if-eqz v0, :cond_a

    .line 1163
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/high16 v17, 0xc0000

    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v6, v6, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 1166
    invoke-static {v3, v4, v6}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v18

    .line 1163
    move-object/from16 v6, v29

    move-wide/from16 v33, v7

    move-object/from16 v7, p5

    .line 1163
    .end local v7    # "token":J
    .local v33, "token":J
    move v8, v12

    move-object/from16 v19, v9

    move/from16 v9, v17

    .line 1163
    .end local v9    # "userManager":Landroid/os/UserManager;
    .local v19, "userManager":Landroid/os/UserManager;
    move-object/from16 v17, v10

    move/from16 v10, v18

    .line 1163
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    .local v17, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 1163
    .end local v0    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v17    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v19    # "userManager":Landroid/os/UserManager;
    .end local v33    # "token":J
    goto :goto_7

    .line 1160
    .restart local v5    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .restart local v7    # "token":J
    .restart local v9    # "userManager":Landroid/os/UserManager;
    .restart local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_2
    move-exception v0

    move-wide/from16 v33, v7

    move-object/from16 v19, v9

    move-object/from16 v17, v10

    .line 1160
    .end local v7    # "token":J
    .end local v9    # "userManager":Landroid/os/UserManager;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v17    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v19    # "userManager":Landroid/os/UserManager;
    .restart local v33    # "token":J
    :goto_6
    move-wide/from16 v6, v33

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1160
    .end local v33    # "token":J
    .local v6, "token":J
    throw v0

    .line 1172
    .end local v5    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v6    # "token":J
    .end local v16    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v17    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v19    # "userManager":Landroid/os/UserManager;
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_a
    :goto_7
    move-object/from16 v10, v16

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v9, p11

    move-object/from16 v8, p12

    move-object/from16 v5, v29

    invoke-virtual {v0, v5, v10, v9, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 1174
    .end local v29    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1175
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_18

    move-object/from16 v35, v0

    .line 1176
    .local v35, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v13, :cond_b

    :try_start_4
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1177
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_a

    .line 1324
    .end local v35    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_3
    move-exception v0

    move-object/from16 v43, p5

    move-object/from16 v42, v1

    move/from16 v40, v3

    move-object/from16 v27, v6

    move-object/from16 v30, v7

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    .line 1324
    .end local v3    # "callingUid":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    .local v30, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "realCallingUid":I
    .local v40, "callingUid":I
    .local v42, "caller":Landroid/app/IApplicationThread;
    .local v43, "resolvedType":Ljava/lang/String;
    :goto_8
    move-object v7, v5

    :goto_9
    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    goto/16 :goto_20

    .line 1177
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v40    # "callingUid":I
    .end local v42    # "caller":Landroid/app/IApplicationThread;
    .end local v43    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "callingUid":I
    .local v4, "realCallingUid":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "ephemeralIntent":Landroid/content/Intent;
    .restart local v35    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :cond_b
    const/4 v0, 0x0

    :goto_a
    move-object/from16 v9, v35

    :try_start_5
    iput-boolean v0, v9, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1178
    .end local v35    # "stack":Lcom/android/server/am/ActivityStack;
    .local v9, "stack":Lcom/android/server/am/ActivityStack;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_18

    if-eqz v0, :cond_c

    :try_start_6
    const-string v0, "ActivityManager"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move/from16 v36, v2

    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1178
    .end local v2    # "componentSpecified":Z
    .local v36, "componentSpecified":Z
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting activity when config will change = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v9, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_c

    .line 1324
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_4
    move-exception v0

    move-object/from16 v43, p5

    move-object/from16 v42, v1

    move/from16 v40, v3

    .line 1324
    .end local v3    # "callingUid":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v36    # "componentSpecified":Z
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local v2    # "componentSpecified":Z
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "realCallingUid":I
    .restart local v40    # "callingUid":I
    .restart local v42    # "caller":Landroid/app/IApplicationThread;
    .restart local v43    # "resolvedType":Ljava/lang/String;
    :goto_b
    move-object/from16 v27, v6

    move-object/from16 v30, v7

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move/from16 v2, v36

    goto :goto_8

    .line 1324
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v40    # "callingUid":I
    .end local v42    # "caller":Landroid/app/IApplicationThread;
    .end local v43    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "callingUid":I
    .local v4, "realCallingUid":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "ephemeralIntent":Landroid/content/Intent;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move/from16 v36, v2

    move-object/from16 v43, p5

    move-object/from16 v42, v1

    move/from16 v40, v3

    move-object/from16 v27, v6

    move-object/from16 v30, v7

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object v7, v5

    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    .end local v2    # "componentSpecified":Z
    .restart local v36    # "componentSpecified":Z
    goto/16 :goto_20

    .line 1181
    .end local v36    # "componentSpecified":Z
    .restart local v2    # "componentSpecified":Z
    .restart local v9    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_c
    move/from16 v36, v2

    .line 1181
    .end local v2    # "componentSpecified":Z
    .restart local v36    # "componentSpecified":Z
    :goto_c
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_17

    move-wide/from16 v37, v16

    .line 1183
    .local v37, "origId":J
    const/4 v2, 0x2

    if-eqz v7, :cond_15

    :try_start_9
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v0, :cond_15

    .line 1189
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1190
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 1191
    .local v0, "heavy":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_15

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_10

    if-ne v8, v2, :cond_e

    :try_start_a
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1192
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-nez v2, :cond_d

    goto :goto_d

    .line 1249
    .end local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    :cond_d
    move/from16 v40, v3

    move-object/from16 v27, v6

    move-object/from16 v19, v7

    move-object/from16 v45, v9

    move-object/from16 v18, v10

    const/16 v21, 0x0

    goto/16 :goto_16

    .line 1193
    .restart local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    :cond_e
    :goto_d
    move v2, v3

    .line 1194
    .local v2, "appCallingUid":I
    if-eqz v1, :cond_10

    .line 1195
    :try_start_b
    iget-object v8, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 1196
    .local v8, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v8, :cond_f

    .line 1197
    move/from16 v39, v2

    :try_start_c
    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1197
    .end local v2    # "appCallingUid":I
    .local v39, "appCallingUid":I
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1207
    .end local v39    # "appCallingUid":I
    .restart local v2    # "appCallingUid":I
    move/from16 v39, v2

    move/from16 v40, v3

    goto :goto_e

    .line 1199
    :cond_f
    move/from16 v39, v2

    .line 1199
    .end local v2    # "appCallingUid":I
    .restart local v39    # "appCallingUid":I
    :try_start_d
    const-string v2, "ActivityManager"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move/from16 v40, v3

    :try_start_e
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1199
    .end local v3    # "callingUid":I
    .restart local v40    # "callingUid":I
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v41, v8

    const-string v8, "Unable to find app for caller "

    .line 1199
    .end local v8    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v41, "callerApp":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " (pid="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") when starting: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1199
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-static/range {p15 .. p15}, Lcom/android/server/am/SafeActivityOptions;->abort(Lcom/android/server/am/SafeActivityOptions;)V

    .line 1203
    const/16 v2, -0x5e

    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1324
    .end local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v37    # "origId":J
    .end local v39    # "appCallingUid":I
    .end local v41    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :catchall_6
    move-exception v0

    move-object/from16 v43, p5

    move-object/from16 v42, v1

    goto/16 :goto_b

    .line 1324
    .end local v40    # "callingUid":I
    .restart local v3    # "callingUid":I
    :catchall_7
    move-exception v0

    move/from16 v40, v3

    move-object/from16 v43, p5

    move-object/from16 v42, v1

    move-object/from16 v27, v6

    move-object/from16 v30, v7

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move/from16 v2, v36

    move-object v7, v5

    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    .end local v3    # "callingUid":I
    .restart local v40    # "callingUid":I
    goto/16 :goto_20

    .line 1207
    .end local v40    # "callingUid":I
    .restart local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "appCallingUid":I
    .restart local v3    # "callingUid":I
    .restart local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v37    # "origId":J
    :cond_10
    move/from16 v39, v2

    move/from16 v40, v3

    .line 1207
    .end local v2    # "appCallingUid":I
    .end local v3    # "callingUid":I
    .restart local v39    # "appCallingUid":I
    .restart local v40    # "callingUid":I
    :goto_e
    :try_start_f
    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v17, 0x2

    const-string v18, "android"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v3, 0x1

    new-array v8, v3, [Landroid/content/Intent;

    const/16 v16, 0x0

    aput-object v5, v8, v16

    new-array v1, v3, [Ljava/lang/String;

    aput-object p5, v1, v16

    const/high16 v26, 0x50000000

    const/16 v27, 0x0

    move-object/from16 v16, v2

    move/from16 v19, v39

    move/from16 v20, v12

    move-object/from16 v24, v8

    move-object/from16 v25, v1

    invoke-virtual/range {v16 .. v27}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 1213
    .local v1, "target":Landroid/content/IIntentSender;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 1214
    .local v2, "newIntent":Landroid/content/Intent;
    if-ltz p10, :cond_11

    .line 1216
    :try_start_10
    const-string v8, "has_result"

    const/4 v3, 0x1

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto :goto_f

    .line 1324
    .end local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "target":Landroid/content/IIntentSender;
    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v37    # "origId":J
    .end local v39    # "appCallingUid":I
    :catchall_8
    move-exception v0

    move-object/from16 v43, p5

    move-object/from16 v27, v6

    move-object/from16 v30, v7

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move/from16 v2, v36

    move-object/from16 v42, p1

    goto/16 :goto_8

    .line 1218
    .restart local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "target":Landroid/content/IIntentSender;
    .restart local v2    # "newIntent":Landroid/content/Intent;
    .restart local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v37    # "origId":J
    .restart local v39    # "appCallingUid":I
    :cond_11
    :goto_f
    :try_start_11
    const-string/jumbo v3, "intent"

    new-instance v8, Landroid/content/IntentSender;

    invoke-direct {v8, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1220
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    if-lez v3, :cond_12

    .line 1221
    :try_start_12
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1222
    .local v3, "hist":Lcom/android/server/am/ActivityRecord;
    const-string v8, "cur_app"

    move-object/from16 v44, v0

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1222
    .end local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    .local v44, "heavy":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v2, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1224
    const-string v0, "cur_task"

    .line 1225
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 1224
    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 1224
    .end local v3    # "hist":Lcom/android/server/am/ActivityRecord;
    goto :goto_10

    .line 1227
    .end local v44    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    :cond_12
    move-object/from16 v44, v0

    .line 1227
    .end local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v44    # "heavy":Lcom/android/server/am/ProcessRecord;
    :goto_10
    :try_start_13
    const-string/jumbo v0, "new_app"

    iget-object v3, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1229
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1230
    const-string v0, "android"

    const-class v3, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 1231
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1230
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    .line 1232
    move-object/from16 v27, v6

    move-object v6, v2

    .line 1233
    .end local v5    # "intent":Landroid/content/Intent;
    .local v6, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 1234
    .end local p5    # "resolvedType":Ljava/lang/String;
    .local v3, "resolvedType":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1235
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .local v16, "caller":Landroid/app/IApplicationThread;
    :try_start_14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    move v8, v0

    .line 1236
    .end local v40    # "callingUid":I
    .local v8, "callingUid":I
    :try_start_15
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    move v11, v0

    .line 1237
    const/16 v17, 0x1

    .line 1238
    .end local v36    # "componentSpecified":Z
    .local v17, "componentSpecified":Z
    :try_start_16
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v18, 0x0

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v0, v0, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 1239
    invoke-static {v8, v4, v0}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    .line 1238
    move-object/from16 v19, v7

    const/4 v7, 0x0

    .line 1238
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v19, "aInfo":Landroid/content/pm/ActivityInfo;
    move/from16 v20, v8

    const/16 v21, 0x0

    move v8, v12

    .line 1238
    .end local v8    # "callingUid":I
    .local v20, "callingUid":I
    move-object/from16 v45, v9

    move/from16 v9, v18

    .line 1238
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .local v45, "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v18, v10

    move v10, v0

    .line 1238
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v18, "rInfo":Landroid/content/pm/ResolveInfo;
    :try_start_17
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    move-object v10, v0

    .line 1241
    .end local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_13

    :try_start_18
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    goto :goto_11

    .line 1324
    .end local v1    # "target":Landroid/content/IIntentSender;
    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v37    # "origId":J
    .end local v39    # "appCallingUid":I
    .end local v44    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v45    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_9
    move-exception v0

    move-object/from16 v43, v3

    move-object v7, v6

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v42, v16

    move/from16 v2, v17

    goto :goto_13

    .line 1241
    .restart local v1    # "target":Landroid/content/IIntentSender;
    .restart local v2    # "newIntent":Landroid/content/Intent;
    .restart local v37    # "origId":J
    .restart local v39    # "appCallingUid":I
    .restart local v44    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v45    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_13
    const/4 v0, 0x0

    :goto_11
    move-object v7, v0

    .line 1242
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v7, :cond_14

    .line 1243
    :try_start_19
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v7, v12}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 1249
    .end local v1    # "target":Landroid/content/IIntentSender;
    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v39    # "appCallingUid":I
    .end local v44    # "heavy":Lcom/android/server/am/ProcessRecord;
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v30, v0

    move-object/from16 v43, v3

    move-object/from16 v29, v6

    goto :goto_12

    .line 1324
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v37    # "origId":J
    .end local v45    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_a
    move-exception v0

    move-object/from16 v43, v3

    move-object/from16 v30, v7

    move-object v8, v13

    move-object v9, v14

    move-object/from16 v42, v16

    move/from16 v2, v17

    move/from16 v40, v20

    move-object v7, v6

    move-object v6, v15

    goto/16 :goto_9

    .line 1249
    .restart local v37    # "origId":J
    .restart local v45    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_14
    move-object/from16 v43, v3

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    .line 1249
    .end local v3    # "resolvedType":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "callingPid":I
    .end local v16    # "caller":Landroid/app/IApplicationThread;
    .end local v17    # "componentSpecified":Z
    .end local v20    # "callingUid":I
    .restart local v29    # "intent":Landroid/content/Intent;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v33, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v34, "callingPid":I
    .restart local v36    # "componentSpecified":Z
    .restart local v40    # "callingUid":I
    .restart local v42    # "caller":Landroid/app/IApplicationThread;
    .restart local v43    # "resolvedType":Ljava/lang/String;
    :goto_12
    move-object/from16 v33, v10

    move/from16 v34, v11

    move-object/from16 v42, v16

    move/from16 v36, v17

    move/from16 v40, v20

    goto/16 :goto_17

    .line 1324
    .end local v29    # "intent":Landroid/content/Intent;
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v33    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v34    # "callingPid":I
    .end local v36    # "componentSpecified":Z
    .end local v37    # "origId":J
    .end local v40    # "callingUid":I
    .end local v42    # "caller":Landroid/app/IApplicationThread;
    .end local v43    # "resolvedType":Ljava/lang/String;
    .end local v45    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v11    # "callingPid":I
    .restart local v16    # "caller":Landroid/app/IApplicationThread;
    .restart local v17    # "componentSpecified":Z
    .restart local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v20    # "callingUid":I
    :catchall_b
    move-exception v0

    move-object/from16 v43, v3

    move-object v7, v6

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v42, v16

    move/from16 v2, v17

    move-object/from16 v10, v18

    .line 1324
    .end local v3    # "resolvedType":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v16    # "caller":Landroid/app/IApplicationThread;
    .end local v17    # "componentSpecified":Z
    .end local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "callingUid":I
    .local v2, "componentSpecified":Z
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "realCallingUid":I
    .restart local v40    # "callingUid":I
    .restart local v42    # "caller":Landroid/app/IApplicationThread;
    .restart local v43    # "resolvedType":Ljava/lang/String;
    :goto_13
    move-object/from16 v30, v19

    move/from16 v40, v20

    goto/16 :goto_9

    .line 1324
    .end local v2    # "componentSpecified":Z
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v40    # "callingUid":I
    .end local v42    # "caller":Landroid/app/IApplicationThread;
    .end local v43    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    .local v4, "realCallingUid":I
    .restart local v6    # "intent":Landroid/content/Intent;
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "callingUid":I
    .restart local v16    # "caller":Landroid/app/IApplicationThread;
    .restart local v17    # "componentSpecified":Z
    .local v32, "ephemeralIntent":Landroid/content/Intent;
    :catchall_c
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v18, v10

    move-object/from16 v43, v3

    move-object v7, v6

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v42, v16

    move/from16 v2, v17

    move-object/from16 v30, v19

    move/from16 v40, v20

    goto :goto_14

    .end local v17    # "componentSpecified":Z
    .restart local v36    # "componentSpecified":Z
    :catchall_d
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v18, v10

    move-object/from16 v43, v3

    move-object v7, v6

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v42, v16

    move-object/from16 v30, v19

    move/from16 v40, v20

    move/from16 v2, v36

    .end local v3    # "resolvedType":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v16    # "caller":Landroid/app/IApplicationThread;
    .end local v36    # "componentSpecified":Z
    .restart local v2    # "componentSpecified":Z
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "realCallingUid":I
    .restart local v40    # "callingUid":I
    .restart local v42    # "caller":Landroid/app/IApplicationThread;
    .restart local v43    # "resolvedType":Ljava/lang/String;
    :goto_14
    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    .line 1324
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "callingUid":I
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v20    # "callingUid":I
    goto/16 :goto_20

    .line 1324
    .end local v2    # "componentSpecified":Z
    .end local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "callingUid":I
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v42    # "caller":Landroid/app/IApplicationThread;
    .end local v43    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    .local v4, "realCallingUid":I
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v16    # "caller":Landroid/app/IApplicationThread;
    .local v32, "ephemeralIntent":Landroid/content/Intent;
    .restart local v36    # "componentSpecified":Z
    :catchall_e
    move-exception v0

    move-object/from16 v19, v7

    move-object/from16 v18, v10

    move-object/from16 v43, v3

    move-object v7, v6

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v42, v16

    move-object/from16 v30, v19

    move/from16 v2, v36

    goto :goto_15

    .end local v3    # "resolvedType":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v16    # "caller":Landroid/app/IApplicationThread;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :catchall_f
    move-exception v0

    move-object/from16 v27, v6

    move-object/from16 v19, v7

    move-object/from16 v18, v10

    move-object/from16 v43, p5

    move-object v7, v5

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v30, v19

    move/from16 v2, v36

    move-object/from16 v42, p1

    .end local v5    # "intent":Landroid/content/Intent;
    .end local v36    # "componentSpecified":Z
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local v2    # "componentSpecified":Z
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "realCallingUid":I
    .restart local v42    # "caller":Landroid/app/IApplicationThread;
    .restart local v43    # "resolvedType":Ljava/lang/String;
    :goto_15
    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    .line 1324
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_20

    .line 1324
    .end local v2    # "componentSpecified":Z
    .end local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v40    # "callingUid":I
    .end local v42    # "caller":Landroid/app/IApplicationThread;
    .end local v43    # "resolvedType":Ljava/lang/String;
    .local v3, "callingUid":I
    .local v4, "realCallingUid":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v32, "ephemeralIntent":Landroid/content/Intent;
    .restart local v36    # "componentSpecified":Z
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :catchall_10
    move-exception v0

    move/from16 v40, v3

    move-object/from16 v27, v6

    move-object/from16 v19, v7

    move-object/from16 v18, v10

    move-object/from16 v43, p5

    move-object v7, v5

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v30, v19

    move/from16 v2, v36

    move-object/from16 v42, p1

    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    .end local v3    # "callingUid":I
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v40    # "callingUid":I
    goto/16 :goto_20

    .line 1249
    .end local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v40    # "callingUid":I
    .restart local v3    # "callingUid":I
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v37    # "origId":J
    :cond_15
    move/from16 v40, v3

    move-object/from16 v27, v6

    move-object/from16 v19, v7

    move-object/from16 v45, v9

    move-object/from16 v18, v10

    const/16 v21, 0x0

    .line 1249
    .end local v3    # "callingUid":I
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v40    # "callingUid":I
    .restart local v45    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_16
    move-object/from16 v43, p5

    move-object/from16 v29, v5

    move/from16 v34, v11

    move-object/from16 v33, v18

    move-object/from16 v30, v19

    move-object/from16 v42, p1

    .line 1249
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v11    # "callingPid":I
    .end local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local v29    # "intent":Landroid/content/Intent;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v34    # "callingPid":I
    .restart local v42    # "caller":Landroid/app/IApplicationThread;
    .restart local v43    # "resolvedType":Ljava/lang/String;
    :goto_17
    const/4 v0, 0x1

    :try_start_1a
    new-array v0, v0, [Lcom/android/server/am/ActivityRecord;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_16

    move-object/from16 v31, v0

    .line 1250
    .local v31, "outRecord":[Lcom/android/server/am/ActivityRecord;
    move-object v1, v15

    const/4 v11, 0x2

    move-object/from16 v2, v42

    move-object/from16 v3, v29

    move-object/from16 v5, v43

    move-object/from16 v6, v30

    move-object/from16 v7, v33

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, v34

    move/from16 v14, v40

    move-object/from16 v15, p3

    move/from16 v16, v28

    move/from16 v17, v4

    move/from16 v18, p11

    move-object/from16 v19, p15

    move/from16 v20, p16

    move/from16 v21, v36

    move-object/from16 v22, v31

    move-object/from16 v23, p18

    move-object/from16 v24, p19

    move/from16 v25, p20

    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    :try_start_1b
    invoke-direct/range {v1 .. v25}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    move-result v0

    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .local v32, "realCallingUid":I
    move v1, v0

    .line 1256
    .local v1, "res":I
    move-wide/from16 v2, v37

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1258
    .end local v37    # "origId":J
    .local v2, "origId":J
    move-object/from16 v5, v45

    iget-boolean v0, v5, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_15

    .line 1258
    .end local v45    # "stack":Lcom/android/server/am/ActivityStack;
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_17

    .line 1263
    move-object/from16 v6, p0

    :try_start_1c
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v8, "updateConfiguration()"

    invoke-virtual {v0, v7, v8}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1266
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_13

    if-eqz v0, :cond_16

    :try_start_1d
    const-string v0, "ActivityManager"

    const-string v8, "Updating to new configuration after starting activity."

    invoke-static {v0, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    goto :goto_18

    .line 1324
    .end local v1    # "res":I
    .end local v2    # "origId":J
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    :catchall_11
    move-exception v0

    move-object/from16 v7, v29

    move-object/from16 v10, v33

    move/from16 v11, v34

    move/from16 v2, v36

    move-object/from16 v8, p14

    goto :goto_1a

    .line 1268
    .restart local v1    # "res":I
    .restart local v2    # "origId":J
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    :cond_16
    :goto_18
    :try_start_1e
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_13

    move-object/from16 v8, p14

    const/4 v9, 0x0

    :try_start_1f
    invoke-virtual {v0, v8, v9, v7}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Z)Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_12

    goto :goto_1b

    .line 1324
    .end local v1    # "res":I
    .end local v2    # "origId":J
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    :catchall_12
    move-exception v0

    goto :goto_19

    :catchall_13
    move-exception v0

    move-object/from16 v8, p14

    .line 1324
    .end local v29    # "intent":Landroid/content/Intent;
    .end local v33    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v34    # "callingPid":I
    .end local v36    # "componentSpecified":Z
    .local v2, "componentSpecified":Z
    .local v7, "intent":Landroid/content/Intent;
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "callingPid":I
    :goto_19
    move-object/from16 v7, v29

    move-object/from16 v10, v33

    move/from16 v11, v34

    move/from16 v2, v36

    :goto_1a
    move-object/from16 v9, p13

    goto/16 :goto_20

    .line 1271
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "callingPid":I
    .restart local v1    # "res":I
    .local v2, "origId":J
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v29    # "intent":Landroid/content/Intent;
    .restart local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .restart local v33    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v34    # "callingPid":I
    .restart local v36    # "componentSpecified":Z
    :cond_17
    move-object/from16 v6, p0

    const/4 v7, 0x0

    move-object/from16 v8, p14

    :goto_1b
    move-object/from16 v9, p13

    if-eqz v9, :cond_1d

    .line 1272
    :try_start_20
    iput v1, v9, Landroid/app/WaitResult;->result:I

    .line 1274
    aget-object v0, v31, v7

    move-object v10, v0

    .line 1276
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1a

    const-wide/16 v11, 0x0

    packed-switch v1, :pswitch_data_0

    .line 1276
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_1e

    .line 1292
    .restart local v10    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_0
    iput-boolean v7, v9, Landroid/app/WaitResult;->timeout:Z

    .line 1293
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v0, v9, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1294
    iput-wide v11, v9, Landroid/app/WaitResult;->totalTime:J

    .line 1295
    iput-wide v11, v9, Landroid/app/WaitResult;->thisTime:J

    .line 1296
    goto :goto_1e

    .line 1301
    :pswitch_1
    iget-boolean v0, v10, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1302
    iput-boolean v7, v9, Landroid/app/WaitResult;->timeout:Z

    .line 1303
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v0, v9, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1304
    iput-wide v11, v9, Landroid/app/WaitResult;->totalTime:J

    .line 1305
    iput-wide v11, v9, Landroid/app/WaitResult;->thisTime:J

    goto :goto_1e

    .line 1307
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, v9, Landroid/app/WaitResult;->thisTime:J

    .line 1308
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v11, v9}, Lcom/android/server/am/ActivityStackSupervisor;->waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_14

    .line 1312
    :cond_19
    :try_start_21
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_14

    .line 1314
    goto :goto_1c

    .line 1313
    :catch_0
    move-exception v0

    .line 1315
    :goto_1c
    :try_start_22
    iget-boolean v0, v9, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_1d

    iget-object v0, v9, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_19

    .line 1315
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_1e

    .line 1278
    .restart local v10    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_14

    .line 1281
    :cond_1b
    :try_start_23
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_23} :catch_1
    .catchall {:try_start_23 .. :try_end_23} :catchall_14

    .line 1283
    goto :goto_1d

    .line 1282
    :catch_1
    move-exception v0

    .line 1284
    :goto_1d
    :try_start_24
    iget v0, v9, Landroid/app/WaitResult;->result:I

    const/4 v11, 0x2

    if-eq v0, v11, :cond_1c

    iget-boolean v0, v9, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_1c

    iget-object v0, v9, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_1b

    .line 1286
    :cond_1c
    iget v0, v9, Landroid/app/WaitResult;->result:I

    if-ne v0, v11, :cond_1d

    .line 1287
    const/4 v1, 0x2

    goto :goto_1e

    .line 1324
    .end local v1    # "res":I
    .end local v2    # "origId":J
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    :catchall_14
    move-exception v0

    goto :goto_1f

    .line 1322
    .restart local v1    # "res":I
    .restart local v2    # "origId":J
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    :cond_1d
    :goto_1e
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v0

    aget-object v7, v31, v7

    invoke-virtual {v0, v1, v7}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    .line 1323
    monitor-exit v27
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1324
    .end local v1    # "res":I
    .end local v2    # "origId":J
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    :catchall_15
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v8, p14

    move-object/from16 v9, p13

    .line 1324
    .end local v29    # "intent":Landroid/content/Intent;
    .end local v33    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v34    # "callingPid":I
    .end local v36    # "componentSpecified":Z
    .local v2, "componentSpecified":Z
    .restart local v7    # "intent":Landroid/content/Intent;
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "callingPid":I
    :goto_1f
    move-object/from16 v7, v29

    move-object/from16 v10, v33

    move/from16 v11, v34

    move/from16 v2, v36

    goto/16 :goto_20

    .line 1324
    .end local v2    # "componentSpecified":Z
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "callingPid":I
    .local v4, "realCallingUid":I
    .restart local v29    # "intent":Landroid/content/Intent;
    .local v32, "ephemeralIntent":Landroid/content/Intent;
    .restart local v33    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v34    # "callingPid":I
    .restart local v36    # "componentSpecified":Z
    :catchall_16
    move-exception v0

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    move-object/from16 v7, v29

    move-object/from16 v10, v33

    move/from16 v11, v34

    move/from16 v2, v36

    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .local v32, "realCallingUid":I
    goto :goto_20

    .line 1324
    .end local v29    # "intent":Landroid/content/Intent;
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v33    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v34    # "callingPid":I
    .end local v40    # "callingUid":I
    .end local v42    # "caller":Landroid/app/IApplicationThread;
    .end local v43    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "callingUid":I
    .local v4, "realCallingUid":I
    .local v5, "intent":Landroid/content/Intent;
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "callingPid":I
    .local v32, "ephemeralIntent":Landroid/content/Intent;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :catchall_17
    move-exception v0

    move/from16 v40, v3

    move-object/from16 v27, v6

    move-object/from16 v19, v7

    move-object/from16 v18, v10

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    move-object/from16 v43, p5

    move-object v7, v5

    move-object/from16 v30, v19

    move/from16 v2, v36

    move-object/from16 v42, p1

    .end local v3    # "callingUid":I
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .restart local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "realCallingUid":I
    .restart local v40    # "callingUid":I
    goto :goto_20

    .line 1324
    .end local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v36    # "componentSpecified":Z
    .end local v40    # "callingUid":I
    .restart local v2    # "componentSpecified":Z
    .restart local v3    # "callingUid":I
    .local v4, "realCallingUid":I
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v32, "ephemeralIntent":Landroid/content/Intent;
    :catchall_18
    move-exception v0

    move/from16 v36, v2

    move/from16 v40, v3

    move-object/from16 v27, v6

    move-object/from16 v19, v7

    move-object/from16 v18, v10

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    move-object/from16 v43, p5

    move-object v7, v5

    move-object/from16 v30, v19

    move-object/from16 v42, p1

    .end local v3    # "callingUid":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "realCallingUid":I
    .restart local v40    # "callingUid":I
    .restart local v42    # "caller":Landroid/app/IApplicationThread;
    .restart local v43    # "resolvedType":Ljava/lang/String;
    :goto_20
    :try_start_25
    monitor-exit v27
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_19
    move-exception v0

    goto :goto_20

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .locals 26
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p9, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v9, p0

    .line 1376
    move-object/from16 v10, p9

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p6

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ActivityStarter;->setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 1379
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 1381
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeSourceStack()V

    .line 1383
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v1, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1385
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1387
    .local v0, "reusedActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    .line 1388
    .local v1, "preferredWindowingMode":I
    const/4 v2, 0x0

    .line 1389
    .local v2, "preferredLaunchDisplayId":I
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_0

    .line 1390
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    .line 1391
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    .line 1396
    :cond_0
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1397
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1398
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v2, v3, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 1401
    :cond_1
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1402
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v1, v3, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 1406
    :cond_2
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_12

    .line 1410
    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget v12, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v13, 0x10008000

    and-int/2addr v12, v13

    if-ne v12, v13, :cond_3

    move v12, v6

    goto :goto_0

    :cond_3
    move v12, v7

    :goto_0
    invoke-virtual {v8, v11, v12}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1413
    const-string v3, "ActivityManager"

    const-string/jumbo v4, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    const/16 v3, 0x65

    return v3

    .line 1419
    :cond_4
    iget v8, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v11, 0x4200000

    and-int/2addr v8, v11

    if-ne v8, v11, :cond_5

    iget v8, v9, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-nez v8, :cond_5

    move v8, v6

    goto :goto_1

    :cond_5
    move v8, v7

    .line 1427
    .local v8, "clearTopAndResetStandardLaunchMode":Z
    :goto_1
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    if-nez v11, :cond_6

    if-nez v8, :cond_6

    .line 1428
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 1431
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v11, :cond_7

    .line 1434
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v11, v12}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1440
    :cond_7
    iget v11, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v12, 0x4000000

    and-int/2addr v11, v12

    if-nez v11, :cond_8

    iget v11, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1441
    invoke-static {v11}, Lcom/android/server/am/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1442
    invoke-direct {v9, v3, v4}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1443
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 1448
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v13, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/TaskRecord;->performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 1455
    .local v12, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    if-nez v13, :cond_9

    .line 1456
    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 1459
    :cond_9
    if-eqz v12, :cond_b

    .line 1460
    iget-boolean v13, v12, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v13, :cond_a

    .line 1463
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    iget-object v14, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v13, v14}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1465
    :cond_a
    invoke-direct {v9, v12}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1469
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_b
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11, v7, v0}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 1471
    invoke-direct {v9, v0}, Lcom/android/server/am/ActivityStarter;->setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1474
    if-eqz v10, :cond_c

    array-length v11, v10

    if-lez v11, :cond_c

    aget-object v11, v10, v7

    goto :goto_2

    :cond_c
    move-object v11, v5

    .line 1478
    .local v11, "outResult":Lcom/android/server/am/ActivityRecord;
    :goto_2
    if-eqz v11, :cond_e

    iget-boolean v12, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v12, :cond_d

    iget-boolean v12, v11, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v12, :cond_e

    .line 1479
    :cond_d
    aput-object v0, v10, v7

    .line 1482
    :cond_e
    iget v12, v9, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/2addr v12, v6

    if-eqz v12, :cond_f

    .line 1486
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1487
    return v6

    .line 1490
    :cond_f
    if-eqz v0, :cond_12

    .line 1491
    invoke-direct {v9, v0}, Lcom/android/server/am/ActivityStarter;->setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 1493
    iget-boolean v12, v9, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v12, :cond_12

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v12, :cond_12

    .line 1497
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1498
    if-eqz v10, :cond_10

    array-length v5, v10

    if-lez v5, :cond_10

    .line 1499
    aput-object v0, v10, v7

    .line 1502
    :cond_10
    iget-boolean v5, v9, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-eqz v5, :cond_11

    goto :goto_3

    :cond_11
    move v4, v3

    :goto_3
    return v4

    .line 1507
    .end local v8    # "clearTopAndResetStandardLaunchMode":Z
    .end local v11    # "outResult":Lcom/android/server/am/ActivityRecord;
    :cond_12
    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v8, :cond_15

    .line 1508
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_13

    .line 1509
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    nop

    :cond_13
    move-object v3, v5

    .line 1510
    .local v3, "sourceStack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_14

    .line 1511
    const/4 v12, -0x1

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v13, v4, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v4, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v15, v4, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1515
    :cond_14
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v4}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1516
    const/16 v4, -0x5c

    return v4

    .line 1521
    .end local v3    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :cond_15
    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1522
    .local v8, "topStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v17

    .line 1523
    .local v17, "topFocused":Lcom/android/server/am/ActivityRecord;
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8, v11}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    .line 1524
    .local v15, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v15, :cond_17

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v11, :cond_17

    iget-object v11, v15, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1525
    invoke-virtual {v11, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    iget v11, v15, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v12, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v11, v12, :cond_17

    iget-object v11, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_17

    iget-object v11, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v11, :cond_17

    iget v11, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v12, 0x20000000

    and-int/2addr v11, v12

    if-nez v11, :cond_16

    .line 1529
    invoke-direct {v9, v6, v4}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v11

    if-eqz v11, :cond_17

    :cond_16
    move v11, v6

    goto :goto_4

    :cond_17
    move v11, v7

    :goto_4
    move/from16 v18, v11

    .line 1530
    .local v18, "dontStart":Z
    if-eqz v18, :cond_1a

    .line 1532
    iput-object v5, v8, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1533
    iget-boolean v4, v9, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v4, :cond_18

    .line 1534
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1536
    :cond_18
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v4}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1537
    iget v4, v9, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_19

    .line 1540
    return v6

    .line 1543
    :cond_19
    invoke-direct {v9, v15}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1547
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v2, v8}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    .line 1550
    return v3

    .line 1553
    :cond_1a
    const/4 v3, 0x0

    .line 1554
    .local v3, "newTask":Z
    iget-boolean v11, v9, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v11, :cond_1b

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v11, :cond_1b

    .line 1555
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    goto :goto_5

    :cond_1b
    move-object v11, v5

    :goto_5
    move-object v14, v11

    .line 1558
    .local v14, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    const/4 v11, 0x0

    .line 1559
    .local v11, "result":I
    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v12, :cond_1d

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v12, :cond_1d

    iget-boolean v12, v9, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v12, :cond_1d

    iget v12, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v13, 0x10000000

    and-int/2addr v12, v13

    if-eqz v12, :cond_1d

    .line 1561
    const/4 v3, 0x1

    .line 1562
    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1563
    .local v12, "packageName":Ljava/lang/String;
    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    if-eqz v13, :cond_1c

    .line 1566
    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    const/16 v7, 0x1081

    const/4 v4, -0x1

    invoke-virtual {v5, v7, v12, v4, v6}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v4

    iput v4, v13, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    .line 1573
    :cond_1c
    invoke-direct {v9, v14, v8}, Lcom/android/server/am/ActivityStarter;->setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)I

    move-result v11

    .line 1574
    .end local v12    # "packageName":Ljava/lang/String;
    goto :goto_6

    :cond_1d
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_1e

    .line 1575
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromSourceRecord()I

    move-result v11

    .line 1583
    .end local v11    # "result":I
    .local v3, "result":I
    .local v4, "newTask":Z
    :goto_6
    move v4, v3

    move v3, v11

    goto :goto_7

    .line 1576
    .end local v4    # "newTask":Z
    .local v3, "newTask":Z
    .restart local v11    # "result":I
    :cond_1e
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_1f

    .line 1577
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromInTask()I

    move-result v11

    goto :goto_6

    .line 1581
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskToCurrentTopOrCreateNewTask()V

    goto :goto_6

    .line 1583
    .end local v11    # "result":I
    .local v3, "result":I
    .restart local v4    # "newTask":Z
    :goto_7
    if-eqz v3, :cond_20

    .line 1584
    return v3

    .line 1587
    :cond_20
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v9, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1588
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v24

    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v13, v13, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 1587
    move-object/from16 v20, v5

    move/from16 v21, v7

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    move/from16 v25, v13

    invoke-virtual/range {v20 .. v25}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 1589
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v7, v7, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v13, v9, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 1590
    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    .line 1589
    invoke-virtual {v5, v7, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->grantEphemeralAccessLocked(ILandroid/content/Intent;II)V

    .line 1591
    if-eqz v4, :cond_21

    .line 1592
    const/16 v5, 0x7534

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v11, v11, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v7, v12

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1593
    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget v11, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v6

    .line 1592
    invoke-static {v5, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1595
    :cond_21
    const/16 v5, 0x7535

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1596
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    .line 1595
    invoke-static {v5, v6, v7}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1597
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1599
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 1601
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v9, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object/from16 v13, v17

    move-object v7, v14

    move v14, v4

    .line 1601
    .end local v14    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    .local v7, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    move-object/from16 v19, v15

    move v15, v5

    .line 1601
    .end local v15    # "top":Lcom/android/server/am/ActivityRecord;
    .local v19, "top":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZZLandroid/app/ActivityOptions;)V

    .line 1603
    iget-boolean v5, v9, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v5, :cond_25

    .line 1604
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1605
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1606
    .local v5, "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_24

    if-eqz v5, :cond_22

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v6, :cond_22

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v6, v5, :cond_22

    goto :goto_8

    .line 1625
    :cond_22
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_23

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6, v11}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 1626
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v11, "startActivityUnchecked"

    invoke-virtual {v6, v11}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1628
    :cond_23
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6, v11, v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 1628
    .end local v5    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_9

    .line 1615
    .restart local v5    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :cond_24
    :goto_8
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v11, v11}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1618
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1631
    .end local v5    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :goto_9
    goto :goto_a

    :cond_25
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_26

    .line 1632
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    .line 1634
    :cond_26
    :goto_a
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v6, v11}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    .line 1636
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v6, v1, v2, v11}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    .line 1639
    const/4 v5, 0x0

    return v5
.end method

.method private uriHasUserId(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2845
    if-nez p1, :cond_0

    .line 2846
    const/4 v0, 0x0

    return v0

    .line 2847
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2793
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2794
    const-string/jumbo v0, "mCurrentUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2795
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2796
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2797
    const-string/jumbo v0, "mLastStartReason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2798
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2799
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2800
    const-string/jumbo v0, "mLastStartActivityTimeMs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2801
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2802
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2803
    const-string/jumbo v0, "mLastStartActivityResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2804
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2805
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2806
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 2807
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2808
    const-string/jumbo v2, "mLastStartActivityRecord:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2811
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1

    .line 2812
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2813
    const-string/jumbo v2, "mStartActivity:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2814
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2816
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 2817
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2818
    const-string/jumbo v2, "mIntent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2819
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2821
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_3

    .line 2822
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2823
    const-string/jumbo v2, "mOptions="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2824
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2826
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2827
    const-string/jumbo v2, "mLaunchSingleTop="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2828
    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 2829
    const-string v2, " mLaunchSingleInstance="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2830
    const/4 v2, 0x3

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v2, v4, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 2831
    const-string v2, " mLaunchSingleTask="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2832
    const/4 v2, 0x2

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v2, v4, :cond_6

    move v1, v3

    nop

    :cond_6
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2833
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2834
    const-string/jumbo v1, "mLaunchFlags=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2835
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2836
    const-string v1, " mDoResume="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2837
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2838
    const-string v1, " mAddingToTask="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2839
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2840
    return-void
.end method

.method execute()I
    .locals 40

    .line 514
    move-object/from16 v15, p0

    :try_start_0
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStarter$Request;->mayWait:Z

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v3, v0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v11, v0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v12, v0, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v14, v0, Lcom/android/server/am/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    move-object/from16 v26, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    move/from16 v27, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    move/from16 v28, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    move-object/from16 v30, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    move/from16 v21, v1

    move-object/from16 v16, v26

    move/from16 v17, v27

    move/from16 v18, v28

    move-object/from16 v19, v29

    move-object/from16 v20, v30

    move-object v1, v15

    move-object v15, v0

    invoke-direct/range {v1 .. v21}, Lcom/android/server/am/ActivityStarter;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ZILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    .line 515
    return v0

    .line 524
    :cond_0
    move-object/from16 v15, p0

    :try_start_1
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v12, v0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v13, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v14, v0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    move/from16 v31, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    move/from16 v32, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    move/from16 v33, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    move-object/from16 v34, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    move/from16 v35, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->componentSpecified:Z

    move/from16 v36, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->outActivity:[Lcom/android/server/am/ActivityRecord;

    move-object/from16 v37, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    move-object/from16 v39, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    move/from16 v25, v1

    move/from16 v16, v31

    move/from16 v17, v32

    move/from16 v18, v33

    move-object/from16 v19, v34

    move/from16 v20, v35

    move/from16 v21, v36

    move-object/from16 v22, v37

    move-object/from16 v23, v38

    move-object/from16 v24, v39

    move-object v1, v15

    move-object v15, v0

    invoke-direct/range {v1 .. v25}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    .line 524
    return v0

    .line 535
    :catchall_0
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method getIntent()Landroid/content/Intent;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2636
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method getStartActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .line 1031
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    return-void

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/am/ActivityRecord;I)V

    .line 1042
    const/4 v0, 0x0

    .line 1043
    .local v0, "startedActivityStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1044
    .local v1, "currentStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_1

    .line 1045
    move-object v0, v1

    goto :goto_0

    .line 1046
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_2

    .line 1047
    move-object v0, p3

    .line 1050
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 1051
    return-void

    .line 1054
    :cond_3
    const v2, 0x10008000

    .line 1055
    .local v2, "clearTaskFlags":I
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v4, 0x10008000

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 1057
    .local v3, "clearedTask":Z
    :goto_1
    const/4 v4, 0x2

    if-eq p2, v4, :cond_5

    const/4 v4, 0x3

    if-eq p2, v4, :cond_5

    if-eqz v3, :cond_6

    .line 1061
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 1067
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 1068
    .local v4, "homeStack":Lcom/android/server/am/ActivityStack;
    if-eqz v4, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1069
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .end local v4    # "homeStack":Lcom/android/server/am/ActivityStack;
    goto :goto_2

    .line 1063
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v4, v3}, Lcom/android/server/am/TaskChangeNotificationController;->notifyPinnedActivityRestartAttempt(Z)V

    .line 1065
    nop

    .line 1074
    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method relatedToPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 501
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 502
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 503
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    nop

    .line 501
    :cond_2
    return v1
.end method

.method reset(Z)V
    .locals 4
    .param p1, "clearRequest"    # Z

    .line 1647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1648
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1649
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 1650
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1652
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 1653
    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1654
    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    .line 1656
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    .line 1658
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 1659
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1660
    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1661
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1662
    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    .line 1664
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1665
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1666
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 1668
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 1669
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 1670
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1672
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1673
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 1674
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 1675
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 1676
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 1678
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1679
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 1681
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    .line 1683
    if-eqz p1, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter$Request;->reset()V

    .line 1686
    :cond_0
    return-void
.end method

.method set(Lcom/android/server/am/ActivityStarter;)V
    .locals 2
    .param p1, "starter"    # Lcom/android/server/am/ActivityStarter;

    .line 457
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 458
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 459
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 460
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 462
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 463
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 464
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    .line 466
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v1, p1, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v0, v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->set(Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    .line 468
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 469
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 470
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 471
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 472
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    .line 474
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 475
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 476
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 478
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 479
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 480
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 482
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 483
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 484
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 485
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 486
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 488
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 489
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 491
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    .line 493
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, p1, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter$Request;->set(Lcom/android/server/am/ActivityStarter$Request;)V

    .line 494
    return-void
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 2661
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2662
    return-object p0
.end method

.method setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "bOptions"    # Landroid/os/Bundle;

    .line 2731
    invoke-static {p1}, Lcom/android/server/am/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/am/SafeActivityOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "options"    # Lcom/android/server/am/SafeActivityOptions;

    .line 2726
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    .line 2727
    return-object p0
.end method

.method setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "allowLookup"    # Z

    .line 2787
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 2788
    return-object p0
.end method

.method setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "caller"    # Landroid/app/IApplicationThread;

    .line 2645
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 2646
    return-object p0
.end method

.method setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 2706
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 2707
    return-object p0
.end method

.method setCallingPid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "pid"    # I

    .line 2696
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    .line 2697
    return-object p0
.end method

.method setCallingUid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "uid"    # I

    .line 2701
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    .line 2702
    return-object p0
.end method

.method setComponentSpecified(Z)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "componentSpecified"    # Z

    .line 2745
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityStarter$Request;->componentSpecified:Z

    .line 2746
    return-object p0
.end method

.method setEphemeralIntent(Landroid/content/Intent;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2650
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 2651
    return-object p0
.end method

.method setFilterCallingUid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "filterCallingUid"    # I

    .line 2740
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 2741
    return-object p0
.end method

.method setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 2770
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 2771
    return-object p0
.end method

.method setIgnoreTargetSecurity(Z)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "ignoreTargetSecurity"    # Z

    .line 2735
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 2736
    return-object p0
.end method

.method setInTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "inTask"    # Lcom/android/server/am/TaskRecord;

    .line 2755
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    .line 2756
    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2630
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 2631
    return-object p0
.end method

.method setMayWait(I)Lcom/android/server/am/ActivityStarter;
    .locals 2
    .param p1, "userId"    # I

    .line 2780
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStarter$Request;->mayWait:Z

    .line 2781
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    .line 2783
    return-object p0
.end method

.method setOutActivity([Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    .line 2750
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->outActivity:[Lcom/android/server/am/ActivityRecord;

    .line 2751
    return-object p0
.end method

.method setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "info"    # Landroid/app/ProfilerInfo;

    .line 2765
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 2766
    return-object p0
.end method

.method setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "pid"    # I

    .line 2711
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    .line 2712
    return-object p0
.end method

.method setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "uid"    # I

    .line 2716
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    .line 2717
    return-object p0
.end method

.method setReason(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 2640
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 2641
    return-object p0
.end method

.method setRequestCode(I)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "requestCode"    # I

    .line 2691
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    .line 2692
    return-object p0
.end method

.method setResolveInfo(Landroid/content/pm/ResolveInfo;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 2666
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 2667
    return-object p0
.end method

.method setResolvedType(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 2656
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 2657
    return-object p0
.end method

.method setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "resultTo"    # Landroid/os/IBinder;

    .line 2681
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 2682
    return-object p0
.end method

.method setResultWho(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "resultWho"    # Ljava/lang/String;

    .line 2686
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 2687
    return-object p0
.end method

.method setStartFlags(I)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "startFlags"    # I

    .line 2721
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    .line 2722
    return-object p0
.end method

.method setUserId(I)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "userId"    # I

    .line 2775
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    .line 2776
    return-object p0
.end method

.method setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 2676
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2677
    return-object p0
.end method

.method setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 2671
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2672
    return-object p0
.end method

.method setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "result"    # Landroid/app/WaitResult;

    .line 2760
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 2761
    return-object p0
.end method

.method startResolvedActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p9, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    .line 550
    :try_start_0
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/ActivityStarter;->startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    .line 550
    return v0

    .line 553
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2411
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2412
    return-void

    .line 2415
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2416
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->resizeStackWithLaunchBounds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2417
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    goto :goto_0

    .line 2419
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2421
    :goto_0
    return-void
.end method
