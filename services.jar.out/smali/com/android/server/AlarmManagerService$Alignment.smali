.class Lcom/android/server/AlarmManagerService$Alignment;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;,
        Lcom/android/server/AlarmManagerService$Alignment$AlignmentConfigUpdater;
    }
.end annotation


# static fields
.field static final ALIGNMENT_DEBOUNCE:I = 0xbb8

.field private static final ALIGNMENT_WINDOW:J = 0x493e0L

.field private static final DELIMITER:Ljava/lang/String; = ":"

.field private static final INDEX_FIRST:I = 0x0

.field private static final INDEX_SECOND:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "AlarmManager_ALIGNMENT"

.field static final ONLINECONFIG_PROJECT_NAME:Ljava/lang/String; = "AlarmManagement"


# instance fields
.field private mAlarmBlacklist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAlarmSpecialList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAlarmWhitelist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAlignmentActive:Z

.field private mAlignmentActiveOverride:Z

.field private mAlignmentEnabled:Z

.field private mAlignmentEnabledOverride:Z

.field private mConfigHandler:Landroid/os/Handler;

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOnlineConfigEnabled:Z

.field private mScreenStateReceiver:Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;

.field private mWindowLength:J

.field private mWindowLengthOverride:J

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "configHandler"    # Landroid/os/Handler;

    .line 270
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActive:Z

    .line 239
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    .line 246
    const-wide/32 v1, 0x493e0

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLength:J

    .line 247
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mOnlineConfigEnabled:Z

    .line 251
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActiveOverride:Z

    .line 252
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabledOverride:Z

    .line 253
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    .line 274
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$Alignment;->mContext:Landroid/content/Context;

    .line 275
    iput-object p3, p0, Lcom/android/server/AlarmManagerService$Alignment;->mHandler:Landroid/os/Handler;

    .line 276
    iput-object p4, p0, Lcom/android/server/AlarmManagerService$Alignment;->mConfigHandler:Landroid/os/Handler;

    .line 277
    new-instance v0, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;

    invoke-direct {v0, p0, p2}, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;-><init>(Lcom/android/server/AlarmManagerService$Alignment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mScreenStateReceiver:Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;

    .line 278
    return-void
.end method

.method static synthetic access$202(Lcom/android/server/AlarmManagerService$Alignment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$Alignment;
    .param p1, "x1"    # Z

    .line 229
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActive:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerService$Alignment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$Alignment;

    .line 229
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public activeOverride(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 319
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActiveOverride:Z

    .line 320
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActiveOverride:Z

    return v0
.end method

.method calculateAlignedTime(J)J
    .locals 6
    .param p1, "when"    # J

    .line 459
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLength:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    .line 460
    .local v0, "denominator":J
    :goto_0
    rem-long v4, p1, v0

    .line 461
    .local v4, "remainder":J
    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    .line 462
    sub-long v2, v0, v4

    add-long/2addr p1, v2

    .line 464
    :cond_1
    return-wide p1
.end method

.method checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 352
    .local p3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 353
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 354
    return v1

    .line 356
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string v2, "black_action"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 357
    return v3

    .line 359
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 360
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 361
    return v3

    .line 363
    .end local v4    # "s":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 364
    :cond_3
    return v1
.end method

.method convertToAligned(Lcom/android/server/AlarmManagerService$Alarm;Z)J
    .locals 13
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "needRestore"    # Z

    .line 374
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 377
    .local v0, "type":I
    if-eqz p2, :cond_0

    .line 378
    iget-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .local v1, "when":J
    goto :goto_0

    .line 380
    .end local v1    # "when":J
    :cond_0
    iget-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 383
    .restart local v1    # "when":J
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabledOverride:Z

    if-nez v3, :cond_1

    .line 384
    return-wide v1

    .line 388
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActive:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActiveOverride:Z

    if-nez v3, :cond_2

    .line 389
    return-wide v1

    .line 394
    :cond_2
    const/4 v3, 0x0

    .line 395
    .local v3, "specialAlarm":Z
    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<listener>:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, "tag":Ljava/lang/String;
    :goto_1
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x1

    add-int/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, "action":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    monitor-enter v8

    .line 398
    :try_start_0
    iget-object v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {p0, v5, v9, v10}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 399
    const/4 v3, 0x1

    .line 401
    :cond_4
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 406
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Alignment;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;

    move-result-object v8

    iget v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-virtual {v8, v9}, Lcom/android/server/AppStateTracker;->isUidPowerSaveWhitelisted(I)Z

    move-result v8

    .line 408
    .local v8, "deviceIdleWhitelist":Z
    iget v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    const/16 v10, 0x2710

    if-lt v9, v10, :cond_f

    if-eqz v8, :cond_5

    if-nez v3, :cond_5

    goto/16 :goto_6

    .line 414
    :cond_5
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    monitor-enter v9

    .line 415
    :try_start_1
    iget-object v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {p0, v5, v10, v11}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 416
    monitor-exit v9

    return-wide v1

    .line 418
    :cond_6
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 421
    iget-wide v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    iget v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/2addr v9, v7

    if-eqz v9, :cond_9

    .line 423
    :cond_7
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    monitor-enter v10

    .line 424
    if-nez v3, :cond_8

    :try_start_2
    const-string v9, "black_action"

    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {p0, v5, v9, v11}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {p0, v5, v9, v11}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 425
    monitor-exit v10

    return-wide v1

    .line 427
    :catchall_0
    move-exception v6

    goto :goto_5

    :cond_8
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 430
    :cond_9
    sget-boolean v9, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v9, :cond_a

    .line 431
    const-string v9, "Before alignment: "

    invoke-virtual {p0, p1, v9, v1, v2}, Lcom/android/server/AlarmManagerService$Alignment;->dumpAlarmInfo(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;J)V

    .line 435
    :cond_a
    if-eq v0, v7, :cond_c

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    goto :goto_3

    :cond_c
    :goto_2
    move v6, v7

    .line 437
    .local v6, "isRtc":Z
    :goto_3
    if-eqz v6, :cond_d

    .line 438
    invoke-virtual {p0, v1, v2}, Lcom/android/server/AlarmManagerService$Alignment;->calculateAlignedTime(J)J

    move-result-wide v9

    .local v9, "alignWhen":J
    goto :goto_4

    .line 440
    .end local v9    # "alignWhen":J
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 441
    .local v9, "bootTime":J
    add-long/2addr v1, v9

    .line 442
    invoke-virtual {p0, v1, v2}, Lcom/android/server/AlarmManagerService$Alignment;->calculateAlignedTime(J)J

    move-result-wide v11

    .line 443
    .local v11, "alignWhen":J
    sub-long v9, v11, v9

    .line 446
    .end local v11    # "alignWhen":J
    .local v9, "alignWhen":J
    :goto_4
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v7, :cond_e

    .line 447
    const-string v7, "After alignment: "

    invoke-virtual {p0, p1, v7, v9, v10}, Lcom/android/server/AlarmManagerService$Alignment;->dumpAlarmInfo(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;J)V

    .line 450
    :cond_e
    return-wide v9

    .line 427
    .end local v6    # "isRtc":Z
    .end local v9    # "alignWhen":J
    :goto_5
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 418
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 410
    :cond_f
    :goto_6
    return-wide v1

    .line 401
    .end local v8    # "deviceIdleWhitelist":Z
    :catchall_2
    move-exception v6

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v6
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 524
    const-string v0, "  Alarm Alignment Information:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    const-string v0, "    ALIGNMENT_DEBOUNCE = 3000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    ALIGNMENT_WINDOW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLength:J

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAlignmentEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabledOverride:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAlignmentActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActive:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActiveOverride:Z

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    nop

    :cond_4
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    OnlineConfigEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mOnlineConfigEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    const-string v0, "    mAlarmBlacklist: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    .line 531
    const-string v0, "    mAlarmWhitelist: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    .line 532
    const-string v0, "    mAlarmSpecialList: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    .line 533
    return-void
.end method

.method dumpAlarmInfo(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;J)V
    .locals 10
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "when"    # J

    .line 503
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 504
    .local v0, "type":I
    move-wide v1, p3

    .line 506
    .local v1, "setWhen":J
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    nop

    .line 508
    .local v3, "isRtc":Z
    :cond_1
    :goto_0
    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v4, :cond_2

    .line 509
    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<listener>:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 511
    .local v4, "tag":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 513
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    if-nez v3, :cond_3

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v1, v6, v8

    .line 517
    :cond_3
    const-string v6, "AlarmManager_ALIGNMENT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " when="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-object v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string/jumbo v8, "null"

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 519
    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$100(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", window="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", interval="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 517
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void
.end method

.method dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V
    .locals 9
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .line 473
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 474
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 475
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 476
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "package="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string v4, " | actions="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 480
    .local v4, "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    .line 481
    .local v5, "i":I
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 482
    .local v7, "action":Ljava/lang/String;
    add-int/lit8 v5, v5, -0x1

    .line 483
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    if-lez v5, :cond_0

    .line 485
    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .end local v7    # "action":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 489
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "i":I
    :cond_1
    goto :goto_0

    .line 490
    :cond_2
    if-eqz p2, :cond_3

    .line 491
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 493
    :cond_3
    const-string v1, "AlarmManager_ALIGNMENT"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_2
    return-void
.end method

.method public enabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 308
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    .line 309
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    return v0
.end method

.method public enabledOverride(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 330
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabledOverride:Z

    .line 331
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActiveOverride:Z

    return v0
.end method

.method grabOnlineConfig()V
    .locals 3

    .line 551
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mContext:Landroid/content/Context;

    const-string v2, "AlarmManagement"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 552
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService$Alignment;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 553
    return-void
.end method

.method public isDeepSleepBlock(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 6
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 282
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<listener>:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "tag":Ljava/lang/String;
    :goto_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "action":Ljava/lang/String;
    const-string v4, "black_action"

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    nop

    :cond_2
    return v2
.end method

.method registerOnlineConfig()V
    .locals 5

    .line 545
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alignment;->mConfigHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/AlarmManagerService$Alignment$AlignmentConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$Alignment$AlignmentConfigUpdater;-><init>(Lcom/android/server/AlarmManagerService$Alignment;)V

    const-string v4, "AlarmManagement"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 547
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 548
    return-void
.end method

.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 12
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 557
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mOnlineConfigEnabled:Z

    if-nez v0, :cond_0

    .line 558
    const-string v0, "AlarmManager_ALIGNMENT"

    const-string v1, "[OnlineConfig] OnlineConfig is turned off."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return-void

    .line 562
    :cond_0
    if-nez p1, :cond_1

    .line 563
    const-string v0, "AlarmManager_ALIGNMENT"

    const-string v1, "[OnlineConfig] AlignmentConfigObserver jsonArray ==null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void

    .line 567
    :cond_1
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v0, :cond_2

    .line 568
    const-string v0, "AlarmManager_ALIGNMENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] jsonArray = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    .line 598
    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_12

    .line 599
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 600
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_alignment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 601
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 602
    .local v3, "enabled":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 603
    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    .line 605
    goto/16 :goto_7

    .line 607
    :cond_3
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    .line 609
    goto/16 :goto_8

    .line 613
    .end local v3    # "enabled":I
    :cond_4
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_windowLength"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 614
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 615
    .local v3, "windowLength":J
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Alignment;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService;->mAlignment:Lcom/android/server/AlarmManagerService$Alignment;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/AlarmManagerService$Alignment;->setWindowLength(J)V

    .line 618
    .end local v3    # "windowLength":J
    :cond_5
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "blacklist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    .line 619
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 620
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 621
    .local v3, "jaBlack":Lorg/json/JSONArray;
    move v5, v0

    .line 621
    .local v5, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 623
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 625
    .local v6, "joBlack":Lorg/json/JSONObject;
    const-string/jumbo v7, "package"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 626
    .local v7, "packageName":Ljava/lang/String;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 628
    .local v8, "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v9, "action"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 629
    .local v9, "jaAction":Lorg/json/JSONArray;
    move v10, v0

    .line 629
    .local v10, "j":I
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_6

    .line 630
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 631
    .local v11, "action":Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 629
    .end local v11    # "action":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 634
    .end local v10    # "j":I
    :cond_6
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :try_start_1
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {v11, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget-boolean v11, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v11, :cond_7

    .line 638
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {p0, v11, v4}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    .line 640
    :cond_7
    monitor-exit v10

    .line 621
    .end local v6    # "joBlack":Lorg/json/JSONObject;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "jaAction":Lorg/json/JSONArray;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 640
    .restart local v6    # "joBlack":Lorg/json/JSONObject;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "jaAction":Lorg/json/JSONArray;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 642
    .end local v5    # "i":I
    .end local v6    # "joBlack":Lorg/json/JSONObject;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "jaAction":Lorg/json/JSONArray;
    :cond_8
    goto/16 :goto_7

    .line 645
    .end local v3    # "jaBlack":Lorg/json/JSONArray;
    :cond_9
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "whitelist"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 646
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 647
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 648
    .local v3, "jaWhite":Lorg/json/JSONArray;
    move v5, v0

    .line 648
    .restart local v5    # "i":I
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 650
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 652
    .local v6, "joWhite":Lorg/json/JSONObject;
    const-string/jumbo v7, "package"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 653
    .restart local v7    # "packageName":Ljava/lang/String;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 655
    .restart local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v9, "action"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 656
    .restart local v9    # "jaAction":Lorg/json/JSONArray;
    move v10, v0

    .line 656
    .restart local v10    # "j":I
    :goto_4
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_a

    .line 657
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 658
    .restart local v11    # "action":Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 656
    .end local v11    # "action":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 661
    .end local v10    # "j":I
    :cond_a
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 662
    :try_start_3
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {v11, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget-boolean v11, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v11, :cond_b

    .line 664
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {p0, v11, v4}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    .line 666
    :cond_b
    monitor-exit v10

    .line 648
    .end local v6    # "joWhite":Lorg/json/JSONObject;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "jaAction":Lorg/json/JSONArray;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 666
    .restart local v6    # "joWhite":Lorg/json/JSONObject;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "jaAction":Lorg/json/JSONArray;
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 669
    .end local v5    # "i":I
    .end local v6    # "joWhite":Lorg/json/JSONObject;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "jaAction":Lorg/json/JSONArray;
    :cond_c
    goto :goto_7

    .line 672
    .end local v3    # "jaWhite":Lorg/json/JSONArray;
    :cond_d
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "special_list"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 673
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 674
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 675
    .restart local v3    # "jaWhite":Lorg/json/JSONArray;
    move v5, v0

    .line 675
    .restart local v5    # "i":I
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_10

    .line 677
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 679
    .restart local v6    # "joWhite":Lorg/json/JSONObject;
    const-string/jumbo v7, "package"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 680
    .restart local v7    # "packageName":Ljava/lang/String;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 682
    .restart local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v9, "action"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 683
    .restart local v9    # "jaAction":Lorg/json/JSONArray;
    move v10, v0

    .line 683
    .restart local v10    # "j":I
    :goto_6
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_e

    .line 684
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 685
    .restart local v11    # "action":Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 683
    .end local v11    # "action":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 688
    .end local v10    # "j":I
    :cond_e
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 689
    :try_start_5
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {v11, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    sget-boolean v11, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v11, :cond_f

    .line 692
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {p0, v11, v4}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    .line 694
    :cond_f
    monitor-exit v10

    .line 675
    .end local v6    # "joWhite":Lorg/json/JSONObject;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "jaAction":Lorg/json/JSONArray;
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 694
    .restart local v6    # "joWhite":Lorg/json/JSONObject;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "jaAction":Lorg/json/JSONArray;
    :catchall_2
    move-exception v0

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    .line 697
    .end local v5    # "i":I
    .end local v6    # "joWhite":Lorg/json/JSONObject;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "jaAction":Lorg/json/JSONArray;
    :cond_10
    nop

    .line 598
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "jaWhite":Lorg/json/JSONArray;
    :cond_11
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 700
    .end local v1    # "index":I
    :cond_12
    :goto_8
    const-string v0, "AlarmManager_ALIGNMENT"

    const-string v1, "[OnlineConfig] FrequentBlackListConfigUpdater updated complete !"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 704
    goto :goto_9

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "AlarmManager_ALIGNMENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 702
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_9
    return-void
.end method

.method public setOnelineConfig(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 298
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mOnlineConfigEnabled:Z

    .line 299
    return-void
.end method

.method public setWindowLength(J)V
    .locals 2
    .param p1, "windowLength"    # J

    .line 293
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    .line 294
    :cond_0
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLength:J

    .line 295
    return-void
.end method

.method public windowLengthOverride(J)J
    .locals 2
    .param p1, "windowLength"    # J

    .line 341
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    .line 342
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    return-wide v0
.end method
