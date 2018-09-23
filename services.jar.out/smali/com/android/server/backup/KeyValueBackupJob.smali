.class public Lcom/android/server/backup/KeyValueBackupJob;
.super Landroid/app/job/JobService;
.source "KeyValueBackupJob.java"


# static fields
.field private static final JOB_ID:I = 0x5039

.field private static final MAX_DEFERRAL:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "KeyValueBackupJob"

.field private static sKeyValueJobService:Landroid/content/ComponentName;

.field private static sNextScheduled:J

.field private static sScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/backup/KeyValueBackupJob;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sKeyValueJobService:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    const/16 v2, 0x5039

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->cancel(I)V

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static nextScheduled()J
    .locals 3

    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static schedule(Landroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V
    .locals 15

    const-class v1, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupIntervalMilliseconds()J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupFuzzMilliseconds()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupRequiredNetworkType()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupRequireCharging()Z

    move-result v6

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-gtz v7, :cond_1

    :try_start_2
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    long-to-int v8, v4

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    int-to-long v7, v7

    add-long/2addr v7, v2

    move-wide v9, v7

    goto :goto_0

    :cond_1
    move-wide/from16 v9, p1

    :goto_0
    :try_start_3
    const-string v7, "KeyValueBackupJob"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scheduling k/v pass in "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v11, 0x3e8

    div-long v11, v9, v11

    const-wide/16 v13, 0x3c

    div-long/2addr v11, v13

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " minutes"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/app/job/JobInfo$Builder;

    const/16 v8, 0x5039

    sget-object v11, Lcom/android/server/backup/KeyValueBackupJob;->sKeyValueJobService:Landroid/content/ComponentName;

    invoke-direct {v7, v8, v11}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v7, v9, v10}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v7

    const-wide/32 v11, 0x5265c00

    invoke-virtual {v7, v11, v12}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v7

    const-string/jumbo v8, "jobscheduler"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v11, p0

    :try_start_4
    invoke-virtual {v11, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/job/JobScheduler;

    invoke-virtual {v7}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long/2addr v12, v9

    sput-wide v12, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    return-void

    :catchall_0
    move-exception v0

    move-object v11, p0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v11, p0

    :goto_1
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v11, p0

    :goto_2
    move-wide/from16 v9, p1

    :goto_3
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_3
.end method

.method public static schedule(Landroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    sput-wide v1, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/Trampoline;

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/backup/Trampoline;->backupNow()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
