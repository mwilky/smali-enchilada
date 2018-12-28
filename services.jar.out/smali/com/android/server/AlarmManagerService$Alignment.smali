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

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActive:Z

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    const-wide/32 v1, 0x493e0

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLength:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mOnlineConfigEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActiveOverride:Z

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabledOverride:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/server/AlarmManagerService$Alignment;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/AlarmManagerService$Alignment;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/AlarmManagerService$Alignment;->mConfigHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;

    invoke-direct {v0, p0, p2}, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;-><init>(Lcom/android/server/AlarmManagerService$Alignment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mScreenStateReceiver:Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/AlarmManagerService$Alignment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActive:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerService$Alignment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public activeOverride(Z)Z
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActiveOverride:Z

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActiveOverride:Z

    return v0
.end method

.method calculateAlignedTime(J)J
    .locals 6

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLength:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    :goto_0
    rem-long v4, p1, v0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    sub-long v2, v0, v4

    add-long/2addr p1, v2

    :cond_1
    return-wide p1
.end method

.method checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 6
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

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string v2, "black_action"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

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

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v3

    :cond_2
    goto :goto_0

    :cond_3
    return v1
.end method

.method convertToAligned(Lcom/android/server/AlarmManagerService$Alarm;Z)J
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz p2, :cond_0

    iget-wide v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    goto :goto_0

    :cond_0
    iget-wide v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    :goto_0
    iget-boolean v0, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabledOverride:Z

    if-nez v0, :cond_1

    return-wide v4

    :cond_1
    iget-boolean v0, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActive:Z

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActiveOverride:Z

    if-nez v0, :cond_2

    return-wide v4

    :cond_2
    const/4 v6, 0x0

    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<listener>:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v7, v0

    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v9, 0x1

    add-int/2addr v0, v9

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    monitor-enter v11

    :try_start_0
    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v12, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {v1, v10, v0, v12}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v6, v0

    :cond_4
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$Alignment;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;

    move-result-object v0

    iget v11, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-virtual {v0, v11}, Lcom/android/server/AppStateTracker;->isUidPowerSaveWhitelisted(I)Z

    move-result v12

    iget v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v11, 0x2710

    if-lt v0, v11, :cond_5

    if-eqz v12, :cond_6

    :cond_5
    if-nez v6, :cond_6

    return-wide v4

    :cond_6
    iget-object v13, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    monitor-enter v13

    :try_start_1
    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {v1, v10, v0, v11}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_7

    monitor-exit v13

    return-wide v4

    :cond_7
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-wide v13, v2, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-eqz v0, :cond_8

    iget v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/2addr v0, v9

    if-eqz v0, :cond_a

    :cond_8
    iget-object v11, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    monitor-enter v11

    if-nez v6, :cond_9

    :try_start_2
    const-string v0, "black_action"

    iget-object v13, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {v1, v10, v0, v13}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {v1, v10, v0, v13}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_9

    monitor-exit v11

    return-wide v4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_9
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v0, :cond_b

    const-string v0, "Before alignment: "

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/android/server/AlarmManagerService$Alignment;->dumpAlarmInfo(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;J)V

    :cond_b
    if-eq v3, v9, :cond_d

    if-nez v3, :cond_c

    goto :goto_2

    :cond_c
    goto :goto_3

    :cond_d
    :goto_2
    move v8, v9

    :goto_3
    move v0, v8

    if-eqz v0, :cond_e

    invoke-virtual {v1, v4, v5}, Lcom/android/server/AlarmManagerService$Alignment;->calculateAlignedTime(J)J

    move-result-wide v8

    goto :goto_4

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long/2addr v8, v13

    add-long/2addr v4, v8

    invoke-virtual {v1, v4, v5}, Lcom/android/server/AlarmManagerService$Alignment;->calculateAlignedTime(J)J

    move-result-wide v13

    sub-long v8, v13, v8

    :goto_4
    sget-boolean v11, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v11, :cond_f

    const-string v11, "After alignment: "

    invoke-virtual {v1, v2, v11, v8, v9}, Lcom/android/server/AlarmManagerService$Alignment;->dumpAlarmInfo(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;J)V

    :cond_f
    return-wide v8

    :goto_5
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, "  Alarm Alignment Information:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    ALIGNMENT_DEBOUNCE = 3000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    OnlineConfigEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mOnlineConfigEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    mAlarmBlacklist: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    const-string v0, "    mAlarmWhitelist: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    const-string v0, "    mAlarmSpecialList: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    return-void
.end method

.method dumpAlarmInfo(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;J)V
    .locals 10

    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-wide v1, p3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    nop

    :cond_1
    :goto_0
    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v4, :cond_2

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

    :goto_1
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v1, v6, v8

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

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V
    .locals 9
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

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

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

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "package="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | actions="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v5, :cond_0

    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v1, "AlarmManager_ALIGNMENT"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public enabled(Z)Z
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    return v0
.end method

.method public enabledOverride(Z)Z
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabledOverride:Z

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActiveOverride:Z

    return v0
.end method

.method grabOnlineConfig()V
    .locals 3

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mContext:Landroid/content/Context;

    const-string v2, "AlarmManagement"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService$Alignment;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method public isDeepSleepBlock(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 6

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

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alignment;->mConfigHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/AlarmManagerService$Alignment$AlignmentConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$Alignment$AlignmentConfigUpdater;-><init>(Lcom/android/server/AlarmManagerService$Alignment;)V

    const-string v4, "AlarmManagement"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 12

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mOnlineConfigEnabled:Z

    if-nez v0, :cond_0

    const-string v0, "AlarmManager_ALIGNMENT"

    const-string v1, "[OnlineConfig] OnlineConfig is turned off."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "AlarmManager_ALIGNMENT"

    const-string v1, "[OnlineConfig] AlignmentConfigObserver jsonArray ==null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v0, :cond_2

    const-string v0, "AlarmManager_ALIGNMENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] jsonArray = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_12

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_alignment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    goto/16 :goto_7

    :cond_3
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    goto/16 :goto_8

    :cond_4
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_windowLength"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Alignment;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService;->mAlignment:Lcom/android/server/AlarmManagerService$Alignment;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/AlarmManagerService$Alignment;->setWindowLength(J)V

    :cond_5
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "blacklist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v5, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_8

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "package"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const-string v9, "action"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    move v10, v0

    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_6

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {v11, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v11, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {p0, v11, v4}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    :cond_7
    monitor-exit v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_8
    goto/16 :goto_7

    :cond_9
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "whitelist"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v5, v0

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_c

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "package"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const-string v9, "action"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    move v10, v0

    :goto_4
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_a

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_a
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {v11, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v11, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {p0, v11, v4}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    :cond_b
    monitor-exit v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_c
    goto :goto_7

    :cond_d
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "special_list"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v5, v0

    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_10

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "package"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const-string v9, "action"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    move v10, v0

    :goto_6
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_e

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_e
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {v11, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v11, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {p0, v11, v4}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    :cond_f
    monitor-exit v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :catchall_2
    move-exception v0

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    :cond_10
    nop

    :cond_11
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_12
    :goto_8
    const-string v0, "AlarmManager_ALIGNMENT"

    const-string v1, "[OnlineConfig] FrequentBlackListConfigUpdater updated complete !"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    const-string v1, "AlarmManager_ALIGNMENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void
.end method

.method public setOnelineConfig(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mOnlineConfigEnabled:Z

    return-void
.end method

.method public setWindowLength(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLength:J

    return-void
.end method

.method public windowLengthOverride(J)J
    .locals 2

    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    return-wide v0
.end method
