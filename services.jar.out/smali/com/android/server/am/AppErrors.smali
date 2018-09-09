.class Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrors$BadProcessInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAppsNotReportingCrashes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFrameworkEventCollector:Lnet/oneplus/odm/insight/FrameworkEventCollector;

.field private final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 103
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 113
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 118
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 119
    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 120
    return-void
.end method

.method private createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 659
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 660
    return-object v1

    .line 663
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-nez v0, :cond_1

    .line 664
    return-object v1

    .line 667
    :cond_1
    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 668
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 669
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 670
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 671
    iput-wide p2, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 672
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 674
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v1, :cond_4

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-eqz v1, :cond_3

    goto :goto_1

    .line 677
    :cond_3
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-eqz v1, :cond_5

    .line 678
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 679
    new-instance v1, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 681
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 682
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 683
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_2

    .line 675
    :cond_4
    :goto_1
    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 676
    iput-object p4, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 686
    :cond_5
    :goto_2
    return-object v0
.end method

.method private generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "condition"    # I
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "shortMsg"    # Ljava/lang/String;
    .param p5, "longMsg"    # Ljava/lang/String;
    .param p6, "stackTrace"    # Ljava/lang/String;

    .line 630
    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    .line 632
    .local v0, "report":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    iput p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 633
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 634
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    .line 635
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 636
    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 637
    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 638
    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 639
    iput-object p6, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    .line 641
    return-object v0
.end method

.method private handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .locals 20
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "timeMillis"    # J
    .param p8, "callingPid"    # I
    .param p9, "callingUid"    # I

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 552
    iget-object v0, v7, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    const/4 v10, 0x0

    if-nez v0, :cond_0

    .line 553
    return v10

    .line 557
    :cond_0
    const/4 v11, 0x0

    if-eqz v8, :cond_1

    :try_start_0
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_0

    .line 582
    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 557
    :cond_1
    move-object v0, v11

    .line 558
    .local v0, "name":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_2

    iget v1, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_1

    :cond_2
    move/from16 v1, p8

    :goto_1
    move v6, v1

    .line 559
    .local v6, "pid":I
    if-eqz v8, :cond_3

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_2

    :cond_3
    move/from16 v1, p9

    :goto_2
    move v5, v1

    .line 560
    .local v5, "uid":I
    iget-object v1, v7, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v1, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object v13, v0

    move v14, v6

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-wide/from16 v17, p6

    move-object/from16 v19, v1

    invoke-interface/range {v12 .. v19}, Landroid/app/IActivityController;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 562
    const-string v1, "1"

    const-string/jumbo v2, "ro.debuggable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_4

    const-string v1, "Native crash"

    iget-object v2, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 563
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 564
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip killing native crashed app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") during testing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    move v14, v5

    move v15, v6

    goto :goto_3

    .line 567
    :cond_4
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force-killing crashed app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at watcher\'s request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    if-eqz v8, :cond_5

    .line 570
    const/4 v13, 0x0

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v14, v5

    move-object/from16 v5, p5

    .line 570
    .end local v5    # "uid":I
    .local v14, "uid":I
    move v15, v6

    move-object v6, v13

    .line 570
    .end local v6    # "pid":I
    .local v15, "pid":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 572
    const-string v1, "crash"

    invoke-virtual {v8, v1, v12}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_3

    .line 576
    .end local v14    # "uid":I
    .end local v15    # "pid":I
    .restart local v5    # "uid":I
    .restart local v6    # "pid":I
    :cond_5
    move v14, v5

    move v15, v6

    .line 576
    .end local v5    # "uid":I
    .end local v6    # "pid":I
    .restart local v14    # "uid":I
    .restart local v15    # "pid":I
    invoke-static {v15}, Landroid/os/Process;->killProcess(I)V

    .line 577
    invoke-static {v14, v15}, Lcom/android/server/am/ActivityManagerService;->killProcessGroup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :cond_6
    :goto_3
    return v12

    .line 585
    .end local v0    # "name":Ljava/lang/String;
    .end local v14    # "uid":I
    .end local v15    # "pid":I
    :cond_7
    goto :goto_5

    .line 582
    :goto_4
    nop

    .line 583
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, v7, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v11, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 584
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 586
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    return v10
.end method

.method static isInterestingForBackgroundTraces(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 893
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 894
    return v2

    .line 906
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingTopLocked()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 907
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasTopUi:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasOverlayUi:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    nop

    .line 906
    :cond_3
    :goto_0
    return v2
.end method

.method private makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "shortMsg"    # Ljava/lang/String;
    .param p3, "longMsg"    # Ljava/lang/String;
    .param p4, "stackTrace"    # Ljava/lang/String;
    .param p5, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 592
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 594
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 595
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->stopFreezingAllLocked()V

    .line 596
    const-string v3, "force-crash"

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v0

    return v0
.end method

.method private makeAppNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;

    .line 1160
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 1161
    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 1164
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1165
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->stopFreezingAllLocked()V

    .line 1166
    return-void
.end method


# virtual methods
.method final appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
    .locals 36
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "aboveSystem"    # Z
    .param p5, "annotation"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 913
    move-object/from16 v15, p5

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v0

    .line 914
    .local v11, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/SparseArray;

    const/16 v3, 0x14

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    move-object v10, v0

    .line 919
    .local v10, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    if-lez v0, :cond_0

    .line 920
    return-void

    .line 925
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_2

    .line 928
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-interface {v0, v3, v4, v15}, Landroid/app/IActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 930
    .local v0, "res":I
    if-gez v0, :cond_1

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v4, :cond_1

    .line 931
    const-string v3, "anr"

    invoke-virtual {v12, v3, v8}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    .end local v0    # "res":I
    :cond_1
    goto :goto_0

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v9, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 935
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 939
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 941
    .local v6, "anrTime":J
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 945
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "anr_show_background"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v8

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_1
    move/from16 v16, v0

    .line 950
    .local v16, "showBackground":Z
    iget-object v3, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 952
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    if-eqz v0, :cond_4

    .line 953
    :try_start_2
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "During shutdown skipping ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1017
    :catchall_0
    move-exception v0

    move/from16 v4, p4

    move-wide/from16 v31, v6

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    goto/16 :goto_17

    .line 955
    :cond_4
    :try_start_3
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->notResponding:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_5

    .line 956
    :try_start_4
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping duplicate ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 958
    :cond_5
    :try_start_5
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->crashing:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    if-eqz v0, :cond_6

    .line 959
    :try_start_6
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashing app skipping ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 961
    :cond_6
    :try_start_7
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->killedByAm:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    if-eqz v0, :cond_7

    .line 962
    :try_start_8
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App already killed by AM skipping ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 964
    :cond_7
    :try_start_9
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->killed:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    if-eqz v0, :cond_8

    .line 965
    :try_start_a
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping died app ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 971
    :cond_8
    :try_start_b
    iput-boolean v8, v12, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 974
    const/16 v0, 0x7538

    new-array v2, v2, [Ljava/lang/Object;

    iget v5, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    iget v5, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v8

    iget-object v5, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v5, v2, v8

    iget-object v5, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 975
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v2, v8

    const/4 v5, 0x4

    aput-object v15, v2, v5

    .line 974
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 978
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    .line 981
    if-nez v16, :cond_9

    :try_start_c
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/AppErrors;->isInterestingForBackgroundTraces(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    move v0, v4

    .line 984
    .local v0, "isSilentANR":Z
    :goto_2
    :try_start_d
    const-string/jumbo v2, "persist.sys.assert.enable"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    .line 985
    .local v2, "isAssert":Z
    if-eqz v2, :cond_a

    .line 986
    const/4 v0, 0x0

    .line 989
    :cond_a
    if-nez v0, :cond_13

    .line 990
    :try_start_e
    iget v5, v12, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 991
    .local v5, "parentPid":I
    if-eqz v14, :cond_b

    :try_start_f
    iget-object v9, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_b

    iget-object v9, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v9, :cond_b

    .line 992
    iget-object v9, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move v5, v9

    .line 994
    :cond_b
    :try_start_10
    iget v9, v12, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eq v5, v9, :cond_c

    :try_start_11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 996
    :cond_c
    :try_start_12
    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    iget v8, v12, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eq v9, v8, :cond_d

    :try_start_13
    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v8, v5, :cond_d

    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 998
    :cond_d
    :try_start_14
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .line 998
    .local v8, "i":I
    :goto_3
    if-ltz v8, :cond_13

    .line 999
    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 1000
    .local v9, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_11

    iget-object v4, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_11

    .line 1001
    iget v4, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1002
    .local v4, "pid":I
    if-lez v4, :cond_11

    move/from16 v22, v2

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1002
    .end local v2    # "isAssert":Z
    .local v22, "isAssert":Z
    if-eq v4, v2, :cond_10

    if-eq v4, v5, :cond_10

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v2, :cond_10

    .line 1003
    iget-boolean v2, v9, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v2, :cond_e

    .line 1004
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v2, :cond_10

    const-string v2, "ActivityManager"

    move/from16 v23, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .line 1005
    .end local v5    # "parentPid":I
    .local v23, "parentPid":I
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    move-wide/from16 v24, v6

    :try_start_15
    const-string v6, "Adding persistent proc: "

    .line 1005
    .end local v6    # "anrTime":J
    .local v24, "anrTime":J
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1006
    .end local v23    # "parentPid":I
    .end local v24    # "anrTime":J
    .restart local v5    # "parentPid":I
    .restart local v6    # "anrTime":J
    :cond_e
    move/from16 v23, v5

    move-wide/from16 v24, v6

    .line 1006
    .end local v5    # "parentPid":I
    .end local v6    # "anrTime":J
    .restart local v23    # "parentPid":I
    .restart local v24    # "anrTime":J
    iget-boolean v2, v9, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v2, :cond_f

    .line 1007
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v2, :cond_12

    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding likely IME: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1010
    :cond_f
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1011
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v2, :cond_12

    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding ANR proc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .end local v4    # "pid":I
    .end local v9    # "r":Lcom/android/server/am/ProcessRecord;
    goto :goto_4

    .line 1017
    .end local v0    # "isSilentANR":Z
    .end local v8    # "i":I
    .end local v22    # "isAssert":Z
    .end local v23    # "parentPid":I
    :catchall_1
    move-exception v0

    move/from16 v4, p4

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-wide/from16 v31, v24

    goto/16 :goto_17

    .line 998
    .end local v24    # "anrTime":J
    .restart local v0    # "isSilentANR":Z
    .restart local v5    # "parentPid":I
    .restart local v6    # "anrTime":J
    .restart local v8    # "i":I
    .restart local v22    # "isAssert":Z
    :cond_10
    move/from16 v23, v5

    move-wide/from16 v24, v6

    .line 998
    .end local v5    # "parentPid":I
    .end local v6    # "anrTime":J
    .restart local v23    # "parentPid":I
    .restart local v24    # "anrTime":J
    goto :goto_4

    .line 998
    .end local v22    # "isAssert":Z
    .end local v23    # "parentPid":I
    .end local v24    # "anrTime":J
    .restart local v2    # "isAssert":Z
    .restart local v5    # "parentPid":I
    .restart local v6    # "anrTime":J
    :cond_11
    move/from16 v22, v2

    move/from16 v23, v5

    move-wide/from16 v24, v6

    .line 998
    .end local v2    # "isAssert":Z
    .end local v5    # "parentPid":I
    .end local v6    # "anrTime":J
    .restart local v22    # "isAssert":Z
    .restart local v23    # "parentPid":I
    .restart local v24    # "anrTime":J
    :cond_12
    :goto_4
    add-int/lit8 v8, v8, -0x1

    move/from16 v2, v22

    move/from16 v5, v23

    move-wide/from16 v6, v24

    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1017
    .end local v0    # "isSilentANR":Z
    .end local v8    # "i":I
    .end local v22    # "isAssert":Z
    .end local v23    # "parentPid":I
    .end local v24    # "anrTime":J
    .restart local v6    # "anrTime":J
    :catchall_2
    move-exception v0

    move/from16 v4, p4

    move-wide/from16 v31, v6

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 1017
    .end local v6    # "anrTime":J
    .restart local v24    # "anrTime":J
    goto/16 :goto_17

    .line 1017
    .end local v24    # "anrTime":J
    .restart local v0    # "isSilentANR":Z
    .restart local v6    # "anrTime":J
    :cond_13
    move-wide/from16 v24, v6

    .line 1017
    .end local v6    # "anrTime":J
    .restart local v24    # "anrTime":J
    :try_start_16
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move v9, v0

    .line 1020
    .end local v0    # "isSilentANR":Z
    .local v9, "isSilentANR":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    .line 1021
    .local v8, "info":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1022
    const-string v0, "ANR in "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    if-eqz v13, :cond_14

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 1024
    const-string v0, " ("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    :cond_14
    const-string v0, "\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    const-string v0, "PID: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    if-eqz v15, :cond_15

    .line 1029
    const-string v0, "Reason: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    :cond_15
    if-eqz v14, :cond_16

    if-eq v14, v13, :cond_16

    .line 1032
    const-string v0, "Parent: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    :cond_16
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    move-object v7, v0

    .line 1038
    .local v7, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    const/4 v0, 0x0

    .line 1039
    .local v0, "nativeProcs":[Ljava/lang/String;
    if-eqz v9, :cond_19

    .line 1040
    const/4 v2, 0x0

    .line 1040
    .local v2, "i":I
    :goto_5
    sget-object v3, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_18

    .line 1041
    sget-object v3, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1042
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object v0, v4

    .line 1043
    goto :goto_6

    .line 1040
    :cond_17
    const/4 v5, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1050
    .end local v2    # "i":I
    :cond_18
    const/4 v5, 0x0

    goto :goto_6

    .line 1047
    :cond_19
    const/4 v5, 0x0

    sget-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 1050
    .end local v0    # "nativeProcs":[Ljava/lang/String;
    .local v6, "nativeProcs":[Ljava/lang/String;
    :goto_6
    move-object v6, v0

    if-nez v6, :cond_1a

    const/4 v0, 0x0

    goto :goto_7

    :cond_1a
    invoke-static {v6}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    :goto_7
    move-object v4, v0

    .line 1051
    .local v4, "pids":[I
    const/4 v0, 0x0

    .line 1053
    .local v0, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_1b

    .line 1054
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 1055
    array-length v2, v4

    move v3, v5

    :goto_8
    if-ge v3, v2, :cond_1b

    aget v5, v4, v3

    .line 1056
    .local v5, "i":I
    move/from16 v27, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    .end local v5    # "i":I
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v27

    const/4 v5, 0x0

    goto :goto_8

    .line 1062
    :cond_1b
    move-object v5, v0

    .line 1064
    .end local v0    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v5, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v9, :cond_1c

    .line 1065
    const/4 v0, 0x0

    goto :goto_9

    :cond_1c
    move-object v0, v7

    :goto_9
    if-eqz v9, :cond_1d

    .line 1062
    const/4 v2, 0x0

    goto :goto_a

    :cond_1d
    move-object v2, v10

    :goto_a
    const/4 v3, 0x1

    invoke-static {v3, v11, v0, v2, v5}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v17

    .line 1068
    .local v17, "tracesFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 1070
    .local v2, "cpuInfo":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 1071
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v28, v2

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 1071
    .end local v2    # "cpuInfo":Ljava/lang/String;
    .local v28, "cpuInfo":Ljava/lang/String;
    monitor-enter v2

    .line 1072
    :try_start_17
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    move/from16 v30, v9

    move-object/from16 v29, v10

    move-wide/from16 v9, v24

    :try_start_18
    invoke-virtual {v0, v9, v10}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 1072
    .end local v10    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v24    # "anrTime":J
    .local v9, "anrTime":J
    .local v29, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v30, "isSilentANR":Z
    move-object/from16 v31, v0

    .line 1073
    .end local v28    # "cpuInfo":Ljava/lang/String;
    .local v31, "cpuInfo":Ljava/lang/String;
    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 1074
    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    move-object/from16 v2, v31

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    .end local v31    # "cpuInfo":Ljava/lang/String;
    .restart local v2    # "cpuInfo":Ljava/lang/String;
    invoke-virtual {v7, v9, v10}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    const-string v0, "ActivityManager"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    if-nez v17, :cond_1e

    .line 1083
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/os/Process;->sendSignal(II)V

    .line 1086
    :cond_1e
    iget v3, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1087
    if-nez v13, :cond_1f

    const-string/jumbo v20, "unknown"

    .line 1088
    move-object/from16 v33, v2

    goto :goto_b

    .line 1087
    :cond_1f
    move-object/from16 v33, v2

    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 1088
    .end local v2    # "cpuInfo":Ljava/lang/String;
    .local v33, "cpuInfo":Ljava/lang/String;
    move-object/from16 v20, v2

    :goto_b
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_21

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1089
    nop

    .line 1092
    const/16 v21, 0x2

    goto :goto_c

    .line 1090
    :cond_20
    nop

    .line 1092
    const/16 v21, 0x1

    goto :goto_c

    .line 1091
    :cond_21
    nop

    .line 1092
    const/16 v21, 0x0

    :goto_c
    if-eqz v12, :cond_23

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1093
    nop

    .line 1086
    const/16 v26, 0x2

    goto :goto_d

    .line 1094
    :cond_22
    nop

    .line 1086
    const/16 v26, 0x1

    goto :goto_d

    .line 1095
    :cond_23
    nop

    .line 1086
    const/16 v26, 0x0

    :goto_d
    move-object/from16 v22, v33

    const/16 v2, 0x4f

    .line 1086
    .end local v33    # "cpuInfo":Ljava/lang/String;
    .local v22, "cpuInfo":Ljava/lang/String;
    const/16 v23, 0x1

    move-object/from16 v24, v4

    move-object v4, v0

    .line 1086
    .end local v4    # "pids":[I
    .local v24, "pids":[I
    move-object/from16 v25, v5

    move-object/from16 v5, v20

    .line 1086
    .end local v5    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v25, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v20, v6

    move-wide/from16 v31, v9

    move-object v6, v15

    .line 1086
    .end local v6    # "nativeProcs":[Ljava/lang/String;
    .end local v9    # "anrTime":J
    .local v20, "nativeProcs":[Ljava/lang/String;
    .local v31, "anrTime":J
    move-object/from16 v27, v7

    move/from16 v7, v21

    .line 1086
    .end local v7    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v27, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    move-object v10, v8

    move/from16 v9, v23

    move/from16 v8, v26

    .line 1086
    .end local v8    # "info":Ljava/lang/StringBuilder;
    .local v10, "info":Ljava/lang/StringBuilder;
    invoke-static/range {v2 .. v8}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    .line 1096
    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "anr"

    iget-object v5, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v0, 0x0

    move-object v4, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move/from16 v34, v30

    move-object/from16 v9, v22

    .line 1096
    .end local v30    # "isSilentANR":Z
    .local v34, "isSilentANR":Z
    move-object v14, v10

    move-object/from16 v18, v29

    move-object/from16 v10, v17

    .line 1096
    .end local v10    # "info":Ljava/lang/StringBuilder;
    .end local v29    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v14, "info":Ljava/lang/StringBuilder;
    .local v18, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    move-object/from16 v19, v11

    move-object v11, v0

    .line 1096
    .end local v11    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v19, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1099
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_26

    .line 1102
    :try_start_1a
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1103
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1102
    invoke-interface {v0, v2, v3, v4}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    move v2, v0

    .line 1104
    .local v2, "res":I
    if-eqz v2, :cond_25

    .line 1105
    if-gez v2, :cond_24

    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v3, :cond_24

    .line 1106
    const-string v0, "anr"
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_2

    const/4 v3, 0x1

    :try_start_1b
    invoke-virtual {v12, v0, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_e

    .line 1108
    :cond_24
    const/4 v3, 0x1

    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_1

    :try_start_1c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1109
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1110
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    :try_start_1d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_1

    .line 1112
    :goto_e
    return-void

    .line 1110
    :catchall_3
    move-exception v0

    :try_start_1e
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    :try_start_1f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_1

    .line 1114
    .end local v2    # "res":I
    :catch_1
    move-exception v0

    goto :goto_f

    .line 1117
    :cond_25
    const/4 v3, 0x1

    goto :goto_10

    .line 1114
    :catch_2
    move-exception v0

    const/4 v3, 0x1

    .line 1115
    .local v0, "e":Landroid/os/RemoteException;
    :goto_f
    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 1116
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1116
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_11

    .line 1120
    :cond_26
    const/4 v3, 0x1

    :goto_10
    const/4 v4, 0x0

    :goto_11
    iget-object v5, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1121
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v2, v6}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    .line 1122
    move/from16 v6, v34

    if-eqz v6, :cond_27

    .line 1123
    .end local v34    # "isSilentANR":Z
    .local v6, "isSilentANR":Z
    :try_start_21
    const-string v0, "bg anr"

    invoke-virtual {v12, v0, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1124
    monitor-exit v5
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1139
    :catchall_4
    move-exception v0

    move/from16 v4, p4

    goto/16 :goto_15

    .line 1128
    :cond_27
    nop

    .line 1129
    if-eqz v13, :cond_28

    :try_start_22
    iget-object v9, v13, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    goto :goto_12

    .line 1130
    :cond_28
    move-object v9, v4

    :goto_12
    if-eqz v15, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_29
    const-string v0, "ANR"

    .line 1131
    :goto_13
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1128
    invoke-direct {v1, v12, v9, v0, v2}, Lcom/android/server/am/AppErrors;->makeAppNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1135
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1136
    new-instance v3, Lcom/android/server/am/AppNotRespondingDialog$Data;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    move/from16 v4, p4

    :try_start_23
    invoke-direct {v3, v12, v13, v4}, Lcom/android/server/am/AppNotRespondingDialog$Data;-><init>(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1138
    iget-object v3, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1139
    .end local v0    # "msg":Landroid/os/Message;
    monitor-exit v5
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1143
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mOpAms:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget-object v5, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3, v5, v2}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->sendApplicationStop(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1148
    :try_start_24
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mFrameworkEventCollector:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    if-nez v0, :cond_2a

    .line 1149
    new-instance v0, Lnet/oneplus/odm/insight/FrameworkEventCollector;

    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lnet/oneplus/odm/insight/FrameworkEventCollector;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/am/AppErrors;->mFrameworkEventCollector:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    .line 1151
    :cond_2a
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mFrameworkEventCollector:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2, v6}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordAppAnr(Ljava/lang/String;Z)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_3

    .line 1154
    goto :goto_14

    .line 1152
    :catch_3
    move-exception v0

    .line 1153
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    return-void

    .line 1139
    .end local v6    # "isSilentANR":Z
    .restart local v34    # "isSilentANR":Z
    :catchall_5
    move-exception v0

    move/from16 v4, p4

    move/from16 v6, v34

    .line 1139
    .end local v34    # "isSilentANR":Z
    .restart local v6    # "isSilentANR":Z
    :goto_15
    :try_start_25
    monitor-exit v5
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_15

    .line 1073
    .end local v14    # "info":Ljava/lang/StringBuilder;
    .end local v18    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v19    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "nativeProcs":[Ljava/lang/String;
    .end local v22    # "cpuInfo":Ljava/lang/String;
    .end local v24    # "pids":[I
    .end local v25    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v4    # "pids":[I
    .restart local v5    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v6, "nativeProcs":[Ljava/lang/String;
    .restart local v7    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v8    # "info":Ljava/lang/StringBuilder;
    .restart local v9    # "anrTime":J
    .restart local v11    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v29    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v30    # "isSilentANR":Z
    .local v31, "cpuInfo":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v20, v6

    move-object/from16 v27, v7

    move-object v14, v8

    move-object/from16 v19, v11

    move-object/from16 v18, v29

    move/from16 v6, v30

    move-object/from16 v22, v31

    move/from16 v4, p4

    move-wide/from16 v31, v9

    move-object/from16 v28, v22

    .end local v4    # "pids":[I
    .end local v5    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v8    # "info":Ljava/lang/StringBuilder;
    .end local v9    # "anrTime":J
    .end local v11    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v29    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v30    # "isSilentANR":Z
    .local v6, "isSilentANR":Z
    .restart local v14    # "info":Ljava/lang/StringBuilder;
    .restart local v18    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v19    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v20    # "nativeProcs":[Ljava/lang/String;
    .restart local v22    # "cpuInfo":Ljava/lang/String;
    .restart local v24    # "pids":[I
    .restart local v25    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v31, "anrTime":J
    goto :goto_16

    .line 1073
    .end local v14    # "info":Ljava/lang/StringBuilder;
    .end local v18    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v19    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "nativeProcs":[Ljava/lang/String;
    .end local v22    # "cpuInfo":Ljava/lang/String;
    .end local v24    # "pids":[I
    .end local v25    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v31    # "anrTime":J
    .restart local v4    # "pids":[I
    .restart local v5    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v6, "nativeProcs":[Ljava/lang/String;
    .restart local v7    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v8    # "info":Ljava/lang/StringBuilder;
    .restart local v9    # "anrTime":J
    .restart local v11    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v28    # "cpuInfo":Ljava/lang/String;
    .restart local v29    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v30    # "isSilentANR":Z
    :catchall_8
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v20, v6

    move-object/from16 v27, v7

    move-object v14, v8

    move-wide/from16 v31, v9

    move-object/from16 v19, v11

    move-object/from16 v18, v29

    move/from16 v6, v30

    move/from16 v4, p4

    .end local v4    # "pids":[I
    .end local v5    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v8    # "info":Ljava/lang/StringBuilder;
    .end local v9    # "anrTime":J
    .end local v11    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v29    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v30    # "isSilentANR":Z
    .local v6, "isSilentANR":Z
    .restart local v14    # "info":Ljava/lang/StringBuilder;
    .restart local v18    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v19    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v20    # "nativeProcs":[Ljava/lang/String;
    .restart local v24    # "pids":[I
    .restart local v25    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v31    # "anrTime":J
    goto :goto_16

    .line 1073
    .end local v14    # "info":Ljava/lang/StringBuilder;
    .end local v18    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v19    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "nativeProcs":[Ljava/lang/String;
    .end local v25    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v31    # "anrTime":J
    .restart local v4    # "pids":[I
    .restart local v5    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v6, "nativeProcs":[Ljava/lang/String;
    .restart local v7    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v8    # "info":Ljava/lang/StringBuilder;
    .local v9, "isSilentANR":Z
    .local v10, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v11    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v24, "anrTime":J
    :catchall_9
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v27, v7

    move-object v14, v8

    move v6, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-wide/from16 v31, v24

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v4, p4

    .end local v4    # "pids":[I
    .end local v5    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v8    # "info":Ljava/lang/StringBuilder;
    .end local v9    # "isSilentANR":Z
    .end local v10    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v11    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v6, "isSilentANR":Z
    .restart local v14    # "info":Ljava/lang/StringBuilder;
    .restart local v18    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v19    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v20    # "nativeProcs":[Ljava/lang/String;
    .local v24, "pids":[I
    .restart local v25    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v31    # "anrTime":J
    :goto_16
    :try_start_26
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    throw v0

    :catchall_a
    move-exception v0

    goto :goto_16

    .line 1017
    .end local v6    # "isSilentANR":Z
    .end local v14    # "info":Ljava/lang/StringBuilder;
    .end local v17    # "tracesFile":Ljava/io/File;
    .end local v18    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v19    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "nativeProcs":[Ljava/lang/String;
    .end local v25    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v28    # "cpuInfo":Ljava/lang/String;
    .end local v31    # "anrTime":J
    .restart local v10    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v11    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v24, "anrTime":J
    :catchall_b
    move-exception v0

    move/from16 v4, p4

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-wide/from16 v31, v24

    .line 1017
    .end local v10    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v11    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "anrTime":J
    .restart local v18    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v19    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v31    # "anrTime":J
    goto :goto_17

    .line 1017
    .end local v18    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v19    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v31    # "anrTime":J
    .local v6, "anrTime":J
    .restart local v10    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v11    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_c
    move-exception v0

    move/from16 v4, p4

    move-wide/from16 v31, v6

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 1017
    .end local v6    # "anrTime":J
    .end local v10    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v11    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v18    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v19    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v31    # "anrTime":J
    :goto_17
    :try_start_27
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_d
    move-exception v0

    goto :goto_17
.end method

.method clearBadProcessLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 282
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 283
    return-void
.end method

.method crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 400
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 401
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 403
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 405
    .local v2, "origId":J
    :try_start_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 408
    nop

    .line 409
    return-void

    .line 407
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .locals 38
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 414
    .local v14, "timeMillis":J
    iget-object v10, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 415
    .local v10, "shortMsg":Ljava/lang/String;
    iget-object v0, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 416
    .local v0, "longMsg":Ljava/lang/String;
    iget-object v9, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 417
    .local v9, "stackTrace":Ljava/lang/String;
    if-eqz v10, :cond_0

    if-eqz v0, :cond_0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 419
    :cond_0
    if-eqz v10, :cond_1

    .line 420
    move-object v0, v10

    .line 425
    .end local v0    # "longMsg":Ljava/lang/String;
    .local v16, "longMsg":Ljava/lang/String;
    :cond_1
    :goto_0
    move-object/from16 v16, v0

    if-eqz v12, :cond_2

    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget v1, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0, v1}, Lcom/android/server/RescueParty;->notePersistentAppCrash(Landroid/content/Context;I)V

    .line 429
    :cond_2
    new-instance v0, Lcom/android/server/am/AppErrorResult;

    invoke-direct {v0}, Lcom/android/server/am/AppErrorResult;-><init>()V

    move-object v7, v0

    .line 431
    .local v7, "result":Lcom/android/server/am/AppErrorResult;
    iget-object v8, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 436
    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v10

    move-object/from16 v5, v16

    move-object v6, v9

    move-object v13, v7

    move-object/from16 v17, v8

    move-wide v7, v14

    .line 436
    .end local v7    # "result":Lcom/android/server/am/AppErrorResult;
    .local v13, "result":Lcom/android/server/am/AppErrorResult;
    move-wide/from16 v18, v14

    move-object v14, v9

    move/from16 v9, p3

    .line 436
    .end local v9    # "stackTrace":Ljava/lang/String;
    .local v14, "stackTrace":Ljava/lang/String;
    .local v18, "timeMillis":J
    move-object v15, v10

    move/from16 v10, p4

    .line 436
    .end local v10    # "shortMsg":Ljava/lang/String;
    .local v15, "shortMsg":Ljava/lang/String;
    :try_start_1
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-eqz v0, :cond_3

    .line 438
    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 474
    :catchall_0
    move-exception v0

    move-object v8, v13

    move-wide/from16 v6, v18

    goto/16 :goto_d

    .line 445
    :cond_3
    if-eqz v12, :cond_4

    :try_start_3
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->instr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v0, :cond_4

    .line 446
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 450
    :cond_4
    if-eqz v12, :cond_5

    .line 451
    :try_start_4
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 454
    :cond_5
    :try_start_5
    new-instance v0, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v0}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V

    .line 455
    .local v0, "data":Lcom/android/server/am/AppErrorDialog$Data;
    iput-object v13, v0, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 456
    iput-object v12, v0, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 459
    iput-object v14, v0, Lcom/android/server/am/AppErrorDialog$Data;->stackTrace:Ljava/lang/String;

    .line 464
    if-eqz v12, :cond_12

    move-object v1, v11

    move-object v2, v12

    move-object v3, v15

    move-object/from16 v4, v16

    move-object v5, v14

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 465
    move-object v8, v13

    move-wide/from16 v6, v18

    goto/16 :goto_c

    .line 468
    :cond_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 469
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 471
    iget-object v3, v0, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    .line 472
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 473
    iget-object v4, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 474
    .end local v0    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 476
    invoke-virtual {v13}, Lcom/android/server/am/AppErrorResult;->get()I

    move-result v0

    .line 478
    .local v0, "res":I
    const/4 v1, 0x0

    .line 479
    .local v1, "appErrorIntent":Landroid/content/Intent;
    iget-object v4, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v5, 0x13c

    invoke-static {v4, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 480
    const/4 v4, 0x6

    if-eq v0, v4, :cond_8

    const/4 v4, 0x7

    if-ne v0, v4, :cond_7

    goto :goto_2

    .line 483
    .end local v0    # "res":I
    .local v4, "res":I
    :cond_7
    :goto_1
    move v4, v0

    goto :goto_3

    .line 481
    .end local v4    # "res":I
    .restart local v0    # "res":I
    :cond_8
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 483
    .end local v0    # "res":I
    .restart local v4    # "res":I
    :goto_3
    iget-object v5, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 484
    const/4 v0, 0x5

    if-ne v4, v0, :cond_9

    .line 485
    :try_start_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_4

    .line 536
    :catchall_1
    move-exception v0

    move-object/from16 v36, v3

    move-object v8, v13

    move-wide/from16 v6, v18

    goto/16 :goto_b

    .line 487
    :cond_9
    :goto_4
    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v4, v6, :cond_b

    .line 488
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "crash"

    invoke-virtual {v0, v12, v7, v2, v8}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 489
    if-eqz v3, :cond_b

    .line 491
    :try_start_8
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 492
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 491
    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 506
    goto :goto_6

    .line 493
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_9
    iget-object v8, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_a

    .line 497
    iget-object v8, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    .line 498
    .local v8, "cats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_5
    if-eqz v8, :cond_b

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 499
    iget-object v9, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v20

    iget v9, v3, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    iget-object v10, v3, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    new-instance v7, Lcom/android/server/am/SafeActivityOptions;

    .line 502
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/server/am/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    iget v2, v3, Lcom/android/server/am/TaskRecord;->userId:I

    const/16 v33, 0x0

    const-string v34, "AppErrors"

    const/16 v35, 0x0

    .line 499
    move/from16 v21, v9

    move/from16 v22, p3

    move/from16 v23, p4

    move-object/from16 v24, v10

    move-object/from16 v25, v6

    move-object/from16 v31, v7

    move/from16 v32, v2

    invoke-virtual/range {v20 .. v35}, Lcom/android/server/am/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    .line 509
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "cats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    :goto_6
    const/4 v2, 0x1

    if-ne v4, v2, :cond_d

    .line 510
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 513
    .local v6, "orig":J
    :try_start_a
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityStackSupervisor;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 514
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_c

    .line 515
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "crash"

    const/4 v8, 0x0

    invoke-virtual {v0, v12, v8, v8, v2}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 516
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 519
    :cond_c
    :try_start_b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 520
    goto :goto_7

    .line 519
    :catchall_2
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 522
    .end local v6    # "orig":J
    :cond_d
    :goto_7
    const/16 v0, 0x8

    if-ne v4, v0, :cond_e

    .line 523
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 525
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 527
    :cond_e
    const/4 v0, 0x2

    if-ne v4, v0, :cond_f

    .line 528
    move-object v8, v13

    move-wide/from16 v6, v18

    move-object/from16 v2, p2

    :try_start_c
    invoke-virtual {v11, v12, v6, v7, v2}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 530
    .end local v1    # "appErrorIntent":Landroid/content/Intent;
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v18    # "timeMillis":J
    .local v0, "appErrorIntent":Landroid/content/Intent;
    .local v6, "timeMillis":J
    .local v8, "result":Lcom/android/server/am/AppErrorResult;
    move-object v1, v0

    goto :goto_8

    .line 536
    .end local v0    # "appErrorIntent":Landroid/content/Intent;
    .restart local v1    # "appErrorIntent":Landroid/content/Intent;
    :catchall_3
    move-exception v0

    move-object/from16 v36, v3

    goto :goto_b

    .line 530
    .end local v6    # "timeMillis":J
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v18    # "timeMillis":J
    :cond_f
    move-object v8, v13

    move-wide/from16 v6, v18

    move-object/from16 v2, p2

    .line 530
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v18    # "timeMillis":J
    .restart local v6    # "timeMillis":J
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    :goto_8
    if-eqz v12, :cond_10

    :try_start_d
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_10

    const/4 v9, 0x3

    if-eq v4, v9, :cond_10

    .line 533
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v9, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v10, v12, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 534
    move-object/from16 v36, v3

    :try_start_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 534
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .local v36, "task":Lcom/android/server/am/TaskRecord;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 533
    invoke-virtual {v0, v9, v10, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 536
    .end local v36    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_4
    move-exception v0

    move-object/from16 v36, v3

    .line 536
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v36    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_b

    .line 536
    .end local v36    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_10
    move-object/from16 v36, v3

    .line 536
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v36    # "task":Lcom/android/server/am/TaskRecord;
    :goto_9
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 538
    if-eqz v1, :cond_11

    .line 540
    :try_start_f
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_f} :catch_1

    .line 543
    goto :goto_a

    .line 541
    :catch_1
    move-exception v0

    .line 542
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ActivityManager"

    const-string v3, "bug report receiver dissappeared"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_11
    :goto_a
    return-void

    .line 536
    .end local v6    # "timeMillis":J
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v36    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v18    # "timeMillis":J
    :catchall_5
    move-exception v0

    move-object/from16 v36, v3

    move-object v8, v13

    move-wide/from16 v6, v18

    .line 536
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v18    # "timeMillis":J
    .restart local v6    # "timeMillis":J
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v36    # "task":Lcom/android/server/am/TaskRecord;
    :goto_b
    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_b

    .line 465
    .end local v1    # "appErrorIntent":Landroid/content/Intent;
    .end local v4    # "res":I
    .end local v6    # "timeMillis":J
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v36    # "task":Lcom/android/server/am/TaskRecord;
    .local v0, "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v18    # "timeMillis":J
    :cond_12
    move-object v8, v13

    move-wide/from16 v6, v18

    .line 465
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v18    # "timeMillis":J
    .restart local v6    # "timeMillis":J
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    :goto_c
    :try_start_11
    monitor-exit v17
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 474
    .end local v0    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .end local v6    # "timeMillis":J
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v18    # "timeMillis":J
    :catchall_7
    move-exception v0

    move-object v8, v13

    move-wide/from16 v6, v18

    .line 474
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v18    # "timeMillis":J
    .restart local v6    # "timeMillis":J
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    goto :goto_d

    .line 474
    .end local v6    # "timeMillis":J
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v15    # "shortMsg":Ljava/lang/String;
    .restart local v7    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v9    # "stackTrace":Ljava/lang/String;
    .restart local v10    # "shortMsg":Ljava/lang/String;
    .local v14, "timeMillis":J
    :catchall_8
    move-exception v0

    move-object/from16 v17, v8

    move-object v8, v7

    move-wide v6, v14

    move-object v14, v9

    move-object v15, v10

    .line 474
    .end local v7    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v9    # "stackTrace":Ljava/lang/String;
    .end local v10    # "shortMsg":Ljava/lang/String;
    .restart local v6    # "timeMillis":J
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .local v14, "stackTrace":Ljava/lang/String;
    .restart local v15    # "shortMsg":Ljava/lang/String;
    :goto_d
    :try_start_12
    monitor-exit v17
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_d
.end method

.method createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 646
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    .line 647
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    if-nez v0, :cond_0

    .line 648
    const/4 v1, 0x0

    return-object v1

    .line 650
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APP_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 651
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 652
    const-string v2, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 653
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 654
    return-object v1
.end method

.method dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .locals 23
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "needSep"    # Z
    .param p4, "dumpPackage"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 192
    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 193
    const/4 v3, 0x0

    .line 194
    .local v3, "printed":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 195
    .local v5, "now":J
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 196
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 197
    .local v8, "processCount":I
    move/from16 v10, p3

    move v9, v3

    const/4 v3, 0x0

    .end local p3    # "needSep":Z
    .local v3, "ip":I
    .local v9, "printed":Z
    .local v10, "needSep":Z
    :goto_0
    if-ge v3, v8, :cond_7

    .line 198
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 199
    .local v11, "pname":Ljava/lang/String;
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 200
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 201
    .local v13, "uidCount":I
    move v14, v9

    const/4 v9, 0x0

    .local v9, "i":I
    .local v14, "printed":Z
    :goto_1
    if-ge v9, v13, :cond_5

    .line 202
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 203
    .local v15, "puid":I
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 204
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_1

    if-eqz v4, :cond_0

    move-object/from16 v16, v7

    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 205
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v16, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 206
    goto :goto_2

    .line 201
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "puid":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    :cond_0
    move-object/from16 v16, v7

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    :goto_2
    move/from16 v19, v8

    goto :goto_3

    .line 208
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v4    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v15    # "puid":I
    :cond_1
    move-object/from16 v16, v7

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    :cond_2
    if-nez v14, :cond_4

    .line 209
    if-eqz v10, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 210
    :cond_3
    const/4 v10, 0x1

    .line 211
    const-string v7, "  Time since processes crashed:"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    const/4 v7, 0x1

    .line 214
    .end local v14    # "printed":Z
    .local v7, "printed":Z
    move v14, v7

    .end local v7    # "printed":Z
    .restart local v14    # "printed":Z
    :cond_4
    const-string v7, "    Process "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    const-string v7, " uid "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 216
    const-string v7, ": last crashed "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move/from16 v19, v8

    sub-long v7, v5, v17

    .end local v8    # "processCount":I
    .local v19, "processCount":I
    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 218
    const-string v7, " ago"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "puid":I
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v16

    move/from16 v8, v19

    goto :goto_1

    .line 197
    .end local v9    # "i":I
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v13    # "uidCount":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v19    # "processCount":I
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "processCount":I
    :cond_5
    move-object/from16 v16, v7

    move/from16 v19, v8

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "processCount":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v19    # "processCount":I
    add-int/lit8 v3, v3, 0x1

    move v9, v14

    goto/16 :goto_0

    .line 223
    .end local v3    # "ip":I
    .end local v5    # "now":J
    .end local v10    # "needSep":Z
    .end local v14    # "printed":Z
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v19    # "processCount":I
    .restart local p3    # "needSep":Z
    :cond_6
    move/from16 v10, p3

    .end local p3    # "needSep":Z
    .restart local v10    # "needSep":Z
    :cond_7
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 224
    const/4 v3, 0x0

    .line 225
    .local v3, "printed":Z
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 226
    .local v4, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 227
    .local v5, "processCount":I
    move v6, v3

    const/4 v3, 0x0

    .local v3, "ip":I
    .local v6, "printed":Z
    :goto_4
    if-ge v3, v5, :cond_12

    .line 228
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 229
    .local v7, "pname":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 230
    .local v8, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 231
    .local v9, "uidCount":I
    move v11, v6

    const/4 v6, 0x0

    .local v6, "i":I
    .local v11, "printed":Z
    :goto_5
    if-ge v6, v9, :cond_11

    .line 232
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 233
    .local v12, "puid":I
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v7, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 234
    .local v13, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_9

    if-eqz v13, :cond_8

    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 235
    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 236
    nop

    .line 231
    .end local v12    # "puid":I
    .end local v13    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_8
    move-object/from16 v20, v4

    move/from16 v21, v5

    goto/16 :goto_7

    .line 238
    .restart local v12    # "puid":I
    .restart local v13    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_9
    if-nez v11, :cond_b

    .line 239
    if-eqz v10, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 240
    :cond_a
    const/4 v10, 0x1

    .line 241
    const-string v14, "  Bad processes:"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    const/4 v11, 0x1

    .line 244
    :cond_b
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 245
    .local v14, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    const-string v15, "    Bad process "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    const-string v15, " uid "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 247
    const-string v15, ": crashed at time "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v20, v4

    move/from16 v21, v5

    iget-wide v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    .end local v4    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v5    # "processCount":I
    .local v20, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v21, "processCount":I
    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 248
    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 249
    const-string v4, "      Short msg: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    :cond_c
    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 252
    const-string v4, "      Long msg: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    :cond_d
    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 255
    const-string v4, "      Stack:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    const/4 v4, 0x0

    .line 257
    .local v4, "lastPos":I
    move v5, v4

    const/4 v4, 0x0

    .local v4, "pos":I
    .local v5, "lastPos":I
    :goto_6
    iget-object v15, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v4, v15, :cond_f

    .line 258
    iget-object v15, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v0, 0xa

    if-ne v15, v0, :cond_e

    .line 259
    const-string v0, "        "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    iget-object v0, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    sub-int v15, v4, v5

    invoke-virtual {v1, v0, v5, v15}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 262
    add-int/lit8 v0, v4, 0x1

    .line 257
    .end local v5    # "lastPos":I
    .local v0, "lastPos":I
    move v5, v0

    .end local v0    # "lastPos":I
    .restart local v5    # "lastPos":I
    :cond_e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    .line 265
    .end local v4    # "pos":I
    :cond_f
    iget-object v0, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v5, v0, :cond_10

    .line 266
    const-string v0, "        "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget-object v0, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 231
    .end local v5    # "lastPos":I
    .end local v12    # "puid":I
    .end local v13    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    :cond_10
    :goto_7
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v0, p0

    goto/16 :goto_5

    .line 227
    .end local v6    # "i":I
    .end local v7    # "pname":Ljava/lang/String;
    .end local v8    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v9    # "uidCount":I
    .end local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v21    # "processCount":I
    .local v4, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v5, "processCount":I
    :cond_11
    move-object/from16 v20, v4

    move/from16 v21, v5

    .end local v4    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v5    # "processCount":I
    .restart local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v21    # "processCount":I
    add-int/lit8 v3, v3, 0x1

    move v6, v11

    move-object/from16 v0, p0

    goto/16 :goto_4

    .line 274
    .end local v3    # "ip":I
    .end local v11    # "printed":Z
    .end local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v21    # "processCount":I
    :cond_12
    return v10
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 20
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 691
    move-object/from16 v3, p6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 692
    .local v10, "now":J
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "anr_show_background"

    const/4 v12, 0x0

    invoke-static {v0, v4, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    move v0, v13

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    move v14, v0

    .line 695
    .local v14, "showBackground":Z
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    move v0, v13

    goto :goto_1

    :cond_1
    move v0, v12

    :goto_1
    move v15, v0

    .line 700
    .local v15, "procIsBoundForeground":Z
    const/4 v0, 0x0

    .line 702
    .local v0, "tryAgain":Z
    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v4, :cond_2

    .line 703
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 704
    .local v4, "crashTime":Ljava/lang/Long;
    iget-object v5, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 706
    .local v5, "crashTimePersistent":Ljava/lang/Long;
    .local v9, "crashTimePersistent":Ljava/lang/Long;
    :goto_2
    move-object v9, v5

    goto :goto_3

    .end local v4    # "crashTime":Ljava/lang/Long;
    .end local v5    # "crashTimePersistent":Ljava/lang/Long;
    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    :cond_2
    const/4 v4, 0x0

    move-object v5, v4

    goto :goto_2

    .restart local v4    # "crashTime":Ljava/lang/Long;
    .restart local v9    # "crashTimePersistent":Ljava/lang/Long;
    :goto_3
    move-object v8, v4

    .line 710
    .end local v4    # "crashTime":Ljava/lang/Long;
    .local v8, "crashTime":Ljava/lang/Long;
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v13

    move v7, v0

    .end local v0    # "tryAgain":Z
    .local v4, "i":I
    .local v7, "tryAgain":Z
    :goto_4
    move v0, v4

    .end local v4    # "i":I
    .local v0, "i":I
    const-wide/32 v4, 0xea60

    if-ltz v0, :cond_6

    .line 713
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 715
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    iget-wide v12, v6, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v12, v4

    cmp-long v4, v10, v12

    if-lez v4, :cond_3

    .line 716
    const/4 v4, 0x1

    iput v4, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    goto :goto_5

    .line 718
    :cond_3
    const/4 v4, 0x1

    iget v5, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    add-int/2addr v5, v4

    iput v5, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 722
    :goto_5
    iget v4, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v4, v4

    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v12, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v4, v4, v12

    if-gez v4, :cond_5

    iget-boolean v4, v6, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v4, :cond_4

    if-eqz v15, :cond_5

    .line 724
    :cond_4
    const/4 v4, 0x1

    .line 710
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v7    # "tryAgain":Z
    .local v4, "tryAgain":Z
    move v7, v4

    .end local v4    # "tryAgain":Z
    .restart local v7    # "tryAgain":Z
    :cond_5
    add-int/lit8 v4, v0, -0x1

    .end local v0    # "i":I
    .local v4, "i":I
    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_4

    .line 728
    .end local v4    # "i":I
    :cond_6
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long/2addr v12, v4

    cmp-long v0, v10, v12

    if-gez v0, :cond_a

    .line 731
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has crashed too many times: killing!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/16 v0, 0x7550

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 734
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v5, v12

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v6, v5, v12

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x2

    aput-object v6, v5, v12

    .line 733
    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 735
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 736
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_8

    .line 741
    const/16 v0, 0x753f

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v5, v4, v12

    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 743
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_7

    .line 746
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v13, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v5, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object v4, v5

    move/from16 v16, v15

    move-object v15, v5

    move-wide v5, v10

    .end local v15    # "procIsBoundForeground":Z
    .local v16, "procIsBoundForeground":Z
    move-wide/from16 v17, v10

    move v10, v7

    move-object/from16 v7, p3

    .end local v7    # "tryAgain":Z
    .local v10, "tryAgain":Z
    .local v17, "now":J
    move-object v11, v8

    move-object/from16 v8, p4

    .end local v8    # "crashTime":Ljava/lang/Long;
    .local v11, "crashTime":Ljava/lang/Long;
    move-object/from16 v19, v11

    move-object v11, v9

    move-object/from16 v9, p5

    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    .local v11, "crashTimePersistent":Ljava/lang/Long;
    .local v19, "crashTime":Ljava/lang/Long;
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13, v15}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 748
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_6

    .line 750
    .end local v11    # "crashTimePersistent":Ljava/lang/Long;
    .end local v16    # "procIsBoundForeground":Z
    .end local v17    # "now":J
    .end local v19    # "crashTime":Ljava/lang/Long;
    .restart local v7    # "tryAgain":Z
    .restart local v8    # "crashTime":Ljava/lang/Long;
    .restart local v9    # "crashTimePersistent":Ljava/lang/Long;
    .local v10, "now":J
    .restart local v15    # "procIsBoundForeground":Z
    :cond_7
    move-object/from16 v19, v8

    move-wide/from16 v17, v10

    move/from16 v16, v15

    move v10, v7

    move-object v11, v9

    .end local v7    # "tryAgain":Z
    .end local v8    # "crashTime":Ljava/lang/Long;
    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    .end local v15    # "procIsBoundForeground":Z
    .local v10, "tryAgain":Z
    .restart local v11    # "crashTimePersistent":Ljava/lang/Long;
    .restart local v16    # "procIsBoundForeground":Z
    .restart local v17    # "now":J
    .restart local v19    # "crashTime":Ljava/lang/Long;
    :goto_6
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->bad:Z

    .line 751
    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 755
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "crash"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v10, v4}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 756
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 757
    if-nez v14, :cond_9

    .line 758
    return v5

    .line 761
    .end local v11    # "crashTimePersistent":Ljava/lang/Long;
    .end local v16    # "procIsBoundForeground":Z
    .end local v17    # "now":J
    .end local v19    # "crashTime":Ljava/lang/Long;
    .restart local v7    # "tryAgain":Z
    .restart local v8    # "crashTime":Ljava/lang/Long;
    .restart local v9    # "crashTimePersistent":Ljava/lang/Long;
    .local v10, "now":J
    .restart local v15    # "procIsBoundForeground":Z
    :cond_8
    move-object/from16 v19, v8

    move-wide/from16 v17, v10

    move/from16 v16, v15

    move v10, v7

    move-object v11, v9

    .end local v7    # "tryAgain":Z
    .end local v8    # "crashTime":Ljava/lang/Long;
    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    .end local v15    # "procIsBoundForeground":Z
    .local v10, "tryAgain":Z
    .restart local v11    # "crashTimePersistent":Ljava/lang/Long;
    .restart local v16    # "procIsBoundForeground":Z
    .restart local v17    # "now":J
    .restart local v19    # "crashTime":Ljava/lang/Long;
    :cond_9
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 774
    move-object/from16 v6, p2

    goto :goto_7

    .line 763
    .end local v11    # "crashTimePersistent":Ljava/lang/Long;
    .end local v16    # "procIsBoundForeground":Z
    .end local v17    # "now":J
    .end local v19    # "crashTime":Ljava/lang/Long;
    .restart local v7    # "tryAgain":Z
    .restart local v8    # "crashTime":Ljava/lang/Long;
    .restart local v9    # "crashTimePersistent":Ljava/lang/Long;
    .local v10, "now":J
    .restart local v15    # "procIsBoundForeground":Z
    :cond_a
    move-object/from16 v19, v8

    move-wide/from16 v17, v10

    move/from16 v16, v15

    move v10, v7

    move-object v11, v9

    .end local v7    # "tryAgain":Z
    .end local v8    # "crashTime":Ljava/lang/Long;
    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    .end local v15    # "procIsBoundForeground":Z
    .local v10, "tryAgain":Z
    .restart local v11    # "crashTimePersistent":Ljava/lang/Long;
    .restart local v16    # "procIsBoundForeground":Z
    .restart local v17    # "now":J
    .restart local v19    # "crashTime":Ljava/lang/Long;
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 764
    move-object/from16 v6, p2

    invoke-virtual {v0, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->finishTopCrashedActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 765
    .local v0, "affectedTask":Lcom/android/server/am/TaskRecord;
    if-eqz v3, :cond_b

    .line 766
    iput-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    .line 768
    :cond_b
    if-eqz v3, :cond_c

    if-eqz v11, :cond_c

    .line 769
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v7, v4

    cmp-long v4, v17, v7

    if-gez v4, :cond_c

    .line 770
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    .end local v0    # "affectedTask":Lcom/android/server/am/TaskRecord;
    goto :goto_8

    .line 774
    :cond_c
    :goto_7
    const/4 v4, 0x1

    :goto_8
    if-eqz v3, :cond_d

    if-eqz v10, :cond_d

    .line 775
    iput-boolean v4, v3, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    .line 782
    :cond_d
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    .line 783
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne v2, v0, :cond_f

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v0, v5

    if-nez v0, :cond_f

    .line 785
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    .local v0, "activityNdx":I
    :goto_9
    move v5, v0

    .end local v0    # "activityNdx":I
    .local v5, "activityNdx":I
    if-ltz v5, :cond_f

    .line 786
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 787
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 788
    const-string v0, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Clearing package preferred activities from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 791
    invoke-interface {v0, v8}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    goto :goto_a

    .line 792
    :catch_0
    move-exception v0

    .line 785
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_e
    :goto_a
    add-int/lit8 v0, v5, -0x1

    .end local v5    # "activityNdx":I
    .restart local v0    # "activityNdx":I
    goto :goto_9

    .line 799
    .end local v0    # "activityNdx":I
    :cond_f
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_10

    .line 802
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    move-wide/from16 v8, v17

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .end local v17    # "now":J
    .local v8, "now":J
    invoke-virtual {v0, v5, v7, v12}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 803
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v5, v7, v12}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 806
    .end local v8    # "now":J
    .restart local v17    # "now":J
    :cond_10
    move-wide/from16 v8, v17

    .end local v17    # "now":J
    .restart local v8    # "now":J
    :goto_b
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 807
    :cond_11
    const/4 v5, 0x1

    return v5
.end method

.method handleShowAnrUi(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 1169
    const/4 v2, 0x0

    .line 1170
    .local v2, "dialogToShow":Landroid/app/Dialog;
    iget-object v3, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1171
    move-object/from16 v4, p1

    :try_start_1
    iget-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 1172
    .local v0, "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    iget-object v5, v0, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 1173
    .local v5, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v5, :cond_0

    .line 1174
    const-string v6, "ActivityManager"

    const-string v7, "handleShowAnrUi: proc is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1177
    :cond_0
    :try_start_2
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    const/16 v7, 0x13d

    if-eqz v6, :cond_1

    .line 1178
    const-string v6, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has anr dialog: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1181
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1184
    :cond_1
    :try_start_3
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.ANR"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1185
    .local v6, "intent":Landroid/content/Intent;
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v8, :cond_2

    .line 1186
    const/high16 v8, 0x50000000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1189
    :cond_2
    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget v23, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v24, 0x3e8

    const/16 v25, 0x0

    move-object v12, v6

    invoke-virtual/range {v9 .. v25}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1193
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "anr_show_background"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v10, 0x1

    nop

    :cond_3
    move v8, v10

    .line 1195
    .local v8, "showBackground":Z
    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    move-result v9

    if-nez v9, :cond_5

    if-eqz v8, :cond_4

    goto :goto_0

    .line 1199
    :cond_4
    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-static {v9, v7, v10}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1202
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v9}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    .end local v0    # "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "showBackground":Z
    goto :goto_1

    .line 1196
    .restart local v0    # "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    .restart local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v8    # "showBackground":Z
    :cond_5
    :goto_0
    new-instance v7, Lcom/android/server/am/AppNotRespondingDialog;

    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9, v10, v0}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    move-object v2, v7

    .line 1197
    iput-object v2, v5, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1204
    .end local v0    # "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "showBackground":Z
    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1206
    if-eqz v2, :cond_6

    .line 1207
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1209
    :cond_6
    return-void

    .line 1204
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v4, p1

    :goto_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method handleShowAppErrorUi(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 811
    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/AppErrorDialog$Data;

    .line 812
    .local v3, "data":Lcom/android/server/am/AppErrorDialog$Data;
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "anr_show_background"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    move v6, v0

    .line 815
    .local v6, "showBackground":Z
    const/4 v7, 0x0

    .line 818
    .local v7, "dialogToShow":Lcom/android/server/am/AppErrorDialog;
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 819
    iget-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 820
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v9, v3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 821
    .local v9, "res":Lcom/android/server/am/AppErrorResult;
    if-nez v0, :cond_1

    .line 822
    const-string v4, "ActivityManager"

    const-string v5, "handleShowAppErrorUi: proc is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 825
    :cond_1
    :try_start_1
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 826
    .local v10, "packageName":Ljava/lang/String;
    iget v11, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 827
    .local v11, "userId":I
    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v12, :cond_3

    .line 828
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "App already has crash dialog: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    if-eqz v9, :cond_2

    .line 830
    sget v4, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    invoke-virtual {v9, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 832
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 834
    :cond_3
    :try_start_2
    iget v12, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    const/16 v13, 0x2710

    if-lt v12, v13, :cond_4

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v12, v13, :cond_4

    const/4 v12, 0x1

    goto :goto_1

    :cond_4
    move v12, v5

    .line 837
    .local v12, "isBackground":Z
    :goto_1
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v13}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v13

    array-length v14, v13

    move v15, v12

    move v12, v5

    .line 837
    .end local v12    # "isBackground":Z
    .local v15, "isBackground":Z
    :goto_2
    if-ge v12, v14, :cond_6

    aget v16, v13, v12

    move/from16 v17, v16

    .line 838
    .local v17, "profileId":I
    move/from16 v4, v17

    if-eq v11, v4, :cond_5

    .line 838
    .end local v17    # "profileId":I
    .local v4, "profileId":I
    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    move/from16 v16, v5

    :goto_3
    and-int v15, v15, v16

    .line 837
    .end local v4    # "profileId":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 840
    :cond_6
    if-eqz v15, :cond_8

    if-nez v6, :cond_8

    .line 841
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping crash dialog of "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": background"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    if-eqz v9, :cond_7

    .line 843
    sget v4, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    invoke-virtual {v9, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 845
    :cond_7
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 847
    :cond_8
    :try_start_3
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 848
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v12, "show_first_crash_dialog"

    .line 847
    invoke-static {v4, v12, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    move v4, v5

    .line 850
    .local v4, "showFirstCrash":Z
    :goto_4
    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 851
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "show_first_crash_dialog_dev_option"

    iget-object v14, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 854
    invoke-virtual {v14}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v14

    .line 850
    invoke-static {v12, v13, v5, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    goto :goto_5

    :cond_a
    move v12, v5

    .line 855
    .local v12, "showFirstCrashDevOption":Z
    :goto_5
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-eqz v13, :cond_b

    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 856
    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x1

    goto :goto_6

    :cond_b
    move v13, v5

    .line 859
    .local v13, "crashSilenced":Z
    :goto_6
    if-eqz v0, :cond_c

    invoke-static {v0}, Lcom/android/server/am/AppErrors;->isInterestingForBackgroundTraces(Lcom/android/server/am/ProcessRecord;)Z

    move-result v14

    if-nez v14, :cond_c

    const/16 v18, 0x1

    goto :goto_7

    :cond_c
    move/from16 v18, v5

    :goto_7
    move/from16 v14, v18

    .line 860
    .local v14, "isSilentCrash":Z
    const-string/jumbo v5, "persist.sys.assert.enable"

    const/4 v2, 0x0

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 861
    .local v2, "isAssert":Z
    if-nez v2, :cond_d

    if-nez v4, :cond_d

    if-eqz v12, :cond_e

    .line 862
    :cond_d
    const/4 v14, 0x0

    .line 864
    :cond_e
    iget-object v5, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    move-result v5

    if-nez v5, :cond_10

    if-eqz v6, :cond_f

    goto :goto_8

    .line 872
    :cond_f
    move/from16 v19, v2

    move/from16 v20, v4

    goto :goto_9

    .line 864
    :cond_10
    :goto_8
    if-nez v13, :cond_12

    if-nez v4, :cond_11

    if-nez v12, :cond_11

    iget-boolean v5, v3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v5, :cond_f

    if-nez v14, :cond_f

    .line 868
    :cond_11
    new-instance v5, Lcom/android/server/am/AppErrorDialog;

    move/from16 v19, v2

    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 868
    .end local v2    # "isAssert":Z
    .local v19, "isAssert":Z
    move/from16 v20, v4

    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 868
    .end local v4    # "showFirstCrash":Z
    .local v20, "showFirstCrash":Z
    invoke-direct {v5, v2, v4, v3}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    move-object v7, v5

    iput-object v5, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    goto :goto_a

    .line 872
    .end local v19    # "isAssert":Z
    .end local v20    # "showFirstCrash":Z
    .restart local v2    # "isAssert":Z
    .restart local v4    # "showFirstCrash":Z
    :cond_12
    move/from16 v19, v2

    move/from16 v20, v4

    .line 872
    .end local v2    # "isAssert":Z
    .end local v4    # "showFirstCrash":Z
    .restart local v19    # "isAssert":Z
    .restart local v20    # "showFirstCrash":Z
    :goto_9
    if-eqz v9, :cond_13

    .line 873
    sget v2, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    invoke-virtual {v9, v2}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 876
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v12    # "showFirstCrashDevOption":Z
    .end local v13    # "crashSilenced":Z
    .end local v14    # "isSilentCrash":Z
    .end local v15    # "isBackground":Z
    .end local v19    # "isAssert":Z
    .end local v20    # "showFirstCrash":Z
    :cond_13
    :goto_a
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object v0, v10

    .line 876
    .end local v10    # "packageName":Ljava/lang/String;
    .local v0, "packageName":Ljava/lang/String;
    move v2, v11

    .line 878
    .end local v11    # "userId":I
    .local v2, "userId":I
    if-eqz v7, :cond_14

    .line 879
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Showing crash dialog for package "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " u"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {v7}, Lcom/android/server/am/AppErrorDialog;->show()V

    .line 882
    :cond_14
    return-void

    .line 876
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "userId":I
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 278
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "fromDialog"    # Landroid/app/Dialog;

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 331
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 332
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 333
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 334
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-ne v0, p2, :cond_0

    .line 335
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 337
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-ne v0, p2, :cond_1

    .line 338
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 340
    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_2

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_2

    .line 341
    const-string/jumbo v4, "user-terminated"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 343
    const-string/jumbo v0, "user request after error"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 345
    :cond_2
    return-void
.end method

.method loadAppsNotReportingCrashesFromConfigLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "appsNotReportingCrashesConfig"    # Ljava/lang/String;

    .line 320
    if-eqz p1, :cond_0

    .line 321
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 323
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 324
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 327
    .end local v0    # "split":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method resetProcessCrashTimeLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 286
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 287
    return-void
.end method

.method resetProcessCrashTimeLocked(ZII)V
    .locals 7
    .param p1, "resetEntireUser"    # Z
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 290
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 291
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "ip":I
    :goto_0
    if-ltz v1, :cond_6

    .line 292
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 293
    .local v2, "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 294
    const/4 v4, 0x0

    .line 295
    .local v4, "remove":Z
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 296
    .local v5, "entUid":I
    if-nez p1, :cond_1

    .line 297
    const/4 v6, -0x1

    if-ne p3, v6, :cond_0

    .line 298
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-ne v6, p2, :cond_2

    .line 299
    const/4 v4, 0x1

    goto :goto_2

    .line 302
    :cond_0
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 303
    const/4 v4, 0x1

    goto :goto_2

    .line 306
    :cond_1
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p3, :cond_2

    .line 307
    const/4 v4, 0x1

    .line 309
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 310
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 293
    .end local v4    # "remove":Z
    .end local v5    # "entUid":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 313
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 314
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 291
    .end local v2    # "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 317
    .end local v1    # "ip":I
    :cond_6
    return-void
.end method

.method scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "initialPid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "message"    # Ljava/lang/String;

    .line 358
    const/4 v0, 0x0

    .line 364
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    .line 365
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 366
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 367
    .local v3, "p":Lcom/android/server/am/ProcessRecord;
    if-ltz p1, :cond_0

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, p1, :cond_0

    .line 368
    goto :goto_1

    .line 370
    :cond_0
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, p2, :cond_1

    .line 371
    move-object v0, v3

    .line 372
    goto :goto_2

    .line 374
    :cond_1
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ltz p4, :cond_2

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p4, :cond_3

    .line 376
    :cond_2
    move-object v0, v3

    .line 365
    .end local v3    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    .end local v2    # "i":I
    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    if-nez v0, :cond_5

    .line 382
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crashApplication: nothing for uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " initialPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void

    .line 389
    :cond_5
    invoke-virtual {v0, p5}, Lcom/android/server/am/ProcessRecord;->scheduleCrash(Ljava/lang/String;)V

    .line 390
    return-void

    .line 379
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 604
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 606
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 607
    .local v3, "userId":I
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, v3, :cond_0

    .line 608
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4, v5, v6}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 606
    .end local v3    # "userId":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 613
    return-void
.end method

.method stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 885
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 886
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 889
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .locals 32
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "dumpPackage"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 123
    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    return-void

    .line 127
    :cond_0
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 128
    .local v3, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 129
    .local v5, "now":J
    const-wide v7, 0x10300000001L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 131
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    const/16 v16, 0x0

    if-nez v7, :cond_5

    .line 132
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 133
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 134
    .local v8, "procCount":I
    move/from16 v9, v16

    .local v9, "ip":I
    :goto_0
    if-ge v9, v8, :cond_5

    .line 135
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 136
    .local v10, "ctoken":J
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Ljava/lang/String;

    .line 137
    .local v14, "pname":Ljava/lang/String;
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 138
    .local v15, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    move-wide/from16 v18, v5

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 140
    .local v5, "uidCount":I
    .local v18, "now":J
    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 141
    move/from16 v6, v16

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_4

    .line 142
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 143
    .local v12, "puid":I
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v14, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 144
    .local v13, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_2

    if-eqz v13, :cond_1

    move/from16 v20, v5

    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .end local v5    # "uidCount":I
    .local v20, "uidCount":I
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 145
    nop

    .line 141
    move-wide/from16 v25, v3

    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v14

    goto :goto_2

    .end local v12    # "puid":I
    .end local v13    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v20    # "uidCount":I
    .restart local v5    # "uidCount":I
    :cond_1
    move/from16 v20, v5

    move-wide/from16 v25, v3

    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v14

    .end local v5    # "uidCount":I
    .restart local v20    # "uidCount":I
    goto :goto_2

    .line 147
    .end local v20    # "uidCount":I
    .restart local v5    # "uidCount":I
    .restart local v12    # "puid":I
    .restart local v13    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_2
    move/from16 v20, v5

    .end local v5    # "uidCount":I
    .restart local v20    # "uidCount":I
    :cond_3
    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v24, v13

    move-object/from16 v23, v14

    const-wide v7, 0x20b00000002L

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 148
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "procCount":I
    .end local v14    # "pname":Ljava/lang/String;
    .local v13, "etoken":J
    .local v21, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v22, "procCount":I
    .local v23, "pname":Ljava/lang/String;
    .local v24, "r":Lcom/android/server/am/ProcessRecord;
    const-wide v7, 0x10500000001L

    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 149
    nop

    .line 150
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 149
    move-wide/from16 v25, v3

    const-wide v3, 0x10300000002L

    invoke-virtual {v1, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 151
    .end local v3    # "token":J
    .local v25, "token":J
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 141
    .end local v12    # "puid":I
    .end local v13    # "etoken":J
    .end local v24    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v14, v23

    move-wide/from16 v3, v25

    const-wide v12, 0x10900000001L

    goto :goto_1

    .line 153
    .end local v6    # "i":I
    .end local v20    # "uidCount":I
    .end local v21    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v22    # "procCount":I
    .end local v23    # "pname":Ljava/lang/String;
    .end local v25    # "token":J
    .restart local v3    # "token":J
    .restart local v5    # "uidCount":I
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "procCount":I
    .restart local v14    # "pname":Ljava/lang/String;
    :cond_4
    move-wide/from16 v25, v3

    move/from16 v20, v5

    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v14

    .end local v3    # "token":J
    .end local v5    # "uidCount":I
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "procCount":I
    .end local v14    # "pname":Ljava/lang/String;
    .restart local v20    # "uidCount":I
    .restart local v21    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v22    # "procCount":I
    .restart local v23    # "pname":Ljava/lang/String;
    .restart local v25    # "token":J
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 134
    .end local v10    # "ctoken":J
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v20    # "uidCount":I
    .end local v23    # "pname":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v5, v18

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    goto/16 :goto_0

    .line 158
    .end local v9    # "ip":I
    .end local v18    # "now":J
    .end local v21    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v22    # "procCount":I
    .end local v25    # "token":J
    .restart local v3    # "token":J
    .local v5, "now":J
    :cond_5
    move-wide/from16 v25, v3

    move-wide/from16 v18, v5

    .end local v3    # "token":J
    .end local v5    # "now":J
    .restart local v18    # "now":J
    .restart local v25    # "token":J
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 159
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 160
    .local v3, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 161
    .local v4, "processCount":I
    move/from16 v5, v16

    .local v5, "ip":I
    :goto_3
    if-ge v5, v4, :cond_9

    .line 162
    const-wide v6, 0x20b00000003L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 163
    .local v6, "btoken":J
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 164
    .local v8, "pname":Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 165
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 167
    .local v10, "uidCount":I
    const-wide v11, 0x10900000001L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 168
    move/from16 v13, v16

    .local v13, "i":I
    :goto_4
    if-ge v13, v10, :cond_8

    .line 169
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 170
    .local v14, "puid":I
    iget-object v15, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v15, v8, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 171
    .local v15, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_7

    if-eqz v15, :cond_6

    iget-object v11, v15, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 172
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 173
    nop

    .line 168
    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v8    # "pname":Ljava/lang/String;
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v14    # "puid":I
    .end local v15    # "r":Lcom/android/server/am/ProcessRecord;
    .local v27, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v28, "pname":Ljava/lang/String;
    .local v29, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_6
    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const-wide v14, 0x10300000002L

    goto :goto_5

    .line 175
    .end local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v28    # "pname":Ljava/lang/String;
    .end local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v8    # "pname":Ljava/lang/String;
    .restart local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v14    # "puid":I
    .restart local v15    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_7
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 176
    .local v11, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const-wide v2, 0x20b00000002L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 177
    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v8, "etoken":J
    .restart local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v28    # "pname":Ljava/lang/String;
    .restart local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    const-wide v2, 0x10500000001L

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 178
    iget-wide v2, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move/from16 v30, v14

    move-object/from16 v31, v15

    const-wide v14, 0x10300000002L

    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 179
    .end local v14    # "puid":I
    .end local v15    # "r":Lcom/android/server/am/ProcessRecord;
    .local v30, "puid":I
    .local v31, "r":Lcom/android/server/am/ProcessRecord;
    const-wide v2, 0x10900000003L

    iget-object v12, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 180
    const-wide v2, 0x10900000004L

    iget-object v12, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 181
    const-wide v2, 0x10900000005L

    iget-object v12, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 182
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 168
    .end local v8    # "etoken":J
    .end local v11    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    .end local v30    # "puid":I
    .end local v31    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    move-object/from16 v2, p4

    const-wide v11, 0x10900000001L

    goto/16 :goto_4

    .line 184
    .end local v13    # "i":I
    .end local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v28    # "pname":Ljava/lang/String;
    .end local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v8, "pname":Ljava/lang/String;
    .restart local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_8
    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const-wide v14, 0x10300000002L

    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v8    # "pname":Ljava/lang/String;
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v28    # "pname":Ljava/lang/String;
    .restart local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 161
    .end local v6    # "btoken":J
    .end local v10    # "uidCount":I
    .end local v28    # "pname":Ljava/lang/String;
    .end local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p4

    goto/16 :goto_3

    .line 188
    .end local v4    # "processCount":I
    .end local v5    # "ip":I
    .end local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    :cond_9
    move-wide/from16 v2, v25

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 189
    .end local v25    # "token":J
    .local v2, "token":J
    return-void
.end method
