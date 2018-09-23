.class public Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;
.super Ljava/lang/Object;
.source "OemSceneModeAmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OemSceneModeAmHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OemSceneModeActivityStack"
.end annotation


# static fields
.field private static final ARG_DISABLE_SCENE_SCREEN_EFFECT_ALL:I = 0x1

.field private static final ARG_DISABLE_SCENE_SCREEN_EFFECT_IGNORE:I = -0x1

.field private static final ARG_DISABLE_SCENE_SCREEN_EFFECT_NONE:I = 0x0

.field private static final ARG_DISABLE_SCENE_SCREEN_EFFECT_READ:I = 0x2

.field public static final ARG_SCENE_MODE_OFF:I = 0x0

.field public static final ARG_SCENE_MODE_ON:I = 0x1

.field private static final EVALUATE_GAME_MODE_MSG:I = 0x6d

.field private static final EVALUATE_MODE_DELAYED:I = 0x1f4

.field private static final EVALUATE_READ_MODE_MSG:I = 0x6c

.field private static final OP_CAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.camera"

.field private static final OP_GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.gallery"

.field private static final TAG:Ljava/lang/String; = "OemSceneModeActivityStack"

.field private static final UPDATE_SCREEN_SCREEN_EFFECT_DISABLED_MSG:I = 0x6e

.field private static final VALUE_FORCE_OFF:Ljava/lang/String; = "force-off"

.field private static final VALUE_FORCE_ON:Ljava/lang/String; = "force-on"

.field private static sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

.field private static sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;


# instance fields
.field private mActivityStack:Lcom/android/server/am/ActivityStack;

.field private mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

    sput-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iput-object p2, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-void
.end method

.method private isSamePackageAndUid(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
.method public handleEvaluateGameMode(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_status_auto"

    if-eqz p1, :cond_0

    const-string v2, "force-on"

    goto :goto_0

    :cond_0
    const-string v2, "force-off"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "OemSceneModeActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] handleEvaluateGameMode enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public handleEvaluateReadMode(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "rading_mode_status_auto"

    if-eqz p1, :cond_0

    const-string v2, "force-on"

    goto :goto_0

    :cond_0
    const-string v2, "force-off"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "OemSceneModeActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] handleEvaluateReadMode enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public startEvaluateGameMode(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v3, 0x44

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6d

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    if-eqz v0, :cond_1

    move v1, v2

    nop

    :cond_1
    iput v1, v3, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "OemSceneModeActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[scene] evaluateGameModes : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isGameModeApp = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public startEvaluateReadingMode(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p2}, Lcom/android/server/am/OemSceneModeAmHelper;->shouldIgnoreSceneEvaluation(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeActivityStack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] Ignore the read mode evaluation for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v1, 0x43

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6c

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    if-eqz v0, :cond_3

    move v1, v2

    nop

    :cond_3
    iput v1, v3, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "OemSceneModeActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[scene] evaluateReadModes : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isReadModeApp = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public startEvaluateSceneModes(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 3

    invoke-static {}, Lcom/android/server/am/OemSceneModeAmHelper;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/am/KeyguardController;->isKeyguardShowing(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "OemSceneModeActivityStack"

    const-string v1, "[scene] Ignore scene evaluation when lock screen showing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "OemSceneModeActivityStack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] resume from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", to = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", proactive paused activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ever evalated activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isSleepingLocked()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "OemSceneModeActivityStack"

    const-string v2, "[scene] Ignore scene evaluation while screen off"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eq p1, p2, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->isSamePackageAndUid(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq p1, v0, :cond_9

    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "OemSceneModeActivityStack"

    const-string v1, "[scene] Jump to the same application as last one, don\'t evaluate mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    :cond_9
    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    sget-object v1, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v0, v1, :cond_b

    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->isSamePackageAndUid(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "OemSceneModeActivityStack"

    const-string v1, "[scene] Activity evaluated, don\'t evaluate mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void

    :cond_b
    sput-object p2, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->startEvaluateGameMode(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->startEvaluateReadingMode(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public stopEvaluateSceneModes(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 3

    invoke-static {}, Lcom/android/server/am/OemSceneModeAmHelper;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneModeActivityStack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] pause from = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", to = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    sput-object p1, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_0

    :cond_2
    sput-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->isSamePackageAndUid(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "OemSceneModeActivityStack"

    const-string v1, "[scene] Don\'t ignore the scene evaluation for quickly activity transition inside app"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    sput-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    sput-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_6
    return-void
.end method

.method public updateDisableSceneScreenEffectFlag(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "temp_disable_scene_screen_effect"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "OemSceneModeActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] updateDisableSceneScreenEffectFlag toDisableMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public updateSceneScreenEffectFlag(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;)V
    .locals 5

    invoke-static {}, Lcom/android/server/am/OemSceneModeAmHelper;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v0, -0x1

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x30eba209

    const/4 v4, -0x1

    if-eq v2, v3, :cond_4

    const v3, 0x7377f3e0

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "com.oneplus.camera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const-string v2, "com.oneplus.gallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v4

    :goto_1
    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x2

    nop

    :goto_2
    invoke-static {p1, p2}, Lcom/android/server/am/OemSceneModeAmHelper;->shouldIgnoreSceneEvaluation(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "OemSceneModeActivityStack"

    const-string v2, "[scene] don\'t update the scene screen effect flag when permission dialog shown"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    if-eq v0, v4, :cond_8

    invoke-virtual {p0, v0}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->updateSceneScreenEffectFlag(I)V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
