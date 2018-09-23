.class public final Lcom/android/server/audio/RecordingActivityMonitor;
.super Ljava/lang/Object;
.source "RecordingActivityMonitor.java"

# interfaces
.implements Landroid/media/AudioSystem$AudioRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;,
        Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioService.RecordingActivityMonitor"

.field private static final sEventLogger:Lcom/android/server/audio/AudioEventLogger;


# instance fields
.field private mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPublicClients:Z

.field private final mPackMan:Landroid/content/pm/PackageManager;

.field private mRecordConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const-string/jumbo v1, "recording activity as reported through AudioSystem.AudioRecordingCallback"

    const/16 v2, 0x32

    invoke-direct {v0, v2, v1}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    sput-object p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecordingConfiguration;

    invoke-static {v2}, Landroid/media/AudioRecordingConfiguration;->anonymizedCopy(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioRecordingConfiguration;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private updateSnapshot(IIII[I)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII[I)",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v15, p3

    iget-object v14, v1, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    monitor-enter v14

    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    move-object/from16 v17, v14

    :try_start_0
    const-string v4, "AudioService.RecordingActivityMonitor"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/16 :goto_4

    :pswitch_0
    :try_start_1
    new-instance v4, Landroid/media/AudioFormat$Builder;

    invoke-direct {v4}, Landroid/media/AudioFormat$Builder;-><init>()V

    aget v5, p5, v3

    invoke-virtual {v4, v5}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    aget v5, p5, v10

    invoke-virtual {v4, v5}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    aget v2, p5, v2

    invoke-virtual {v4, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v6

    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    aget v0, p5, v0

    invoke-virtual {v2, v0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v2, 0x4

    aget v2, p5, v2

    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v2, 0x5

    aget v2, p5, v2

    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v7

    const/4 v0, 0x6

    aget v8, p5, v0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v15}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, v1, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    move/from16 v13, p2

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v12, v2

    if-eqz v12, :cond_0

    :try_start_2
    array-length v2, v12

    if-lez v2, :cond_0

    aget-object v2, v12, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v17, v14

    goto/16 :goto_7

    :cond_0
    :try_start_3
    const-string v2, ""

    :goto_0
    move-object v9, v2

    new-instance v11, Landroid/media/AudioRecordingConfiguration;

    move-object v2, v11

    move v3, v13

    move v4, v15

    move/from16 v5, p4

    invoke-direct/range {v2 .. v9}, Landroid/media/AudioRecordingConfiguration;-><init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;)V

    move-object v2, v11

    iget-object v3, v1, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    :try_start_4
    iget-object v3, v1, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioRecordingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v10, 0x0

    :goto_1
    goto :goto_2

    :cond_1
    iget-object v3, v1, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    :try_start_5
    iget-object v3, v1, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_2
    move v3, v10

    if-eqz v3, :cond_3

    sget-object v4, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v10, v5

    move/from16 v11, p1

    move-object/from16 v16, v12

    move v12, v13

    move v13, v15

    move-object/from16 v17, v14

    move/from16 v14, p4

    move-object/from16 v18, v7

    move v7, v15

    move-object v15, v9

    :try_start_6
    invoke-direct/range {v10 .. v15}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_5

    :cond_3
    move-object/from16 v17, v14

    move v7, v15

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v17, v14

    move v7, v15

    goto :goto_7

    :pswitch_1
    move-object/from16 v17, v14

    move v7, v15

    iget-object v0, v1, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v10, v3

    :goto_3
    move v0, v10

    if-eqz v0, :cond_5

    sget-object v8, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v9, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    const/4 v10, 0x0

    move-object v2, v9

    move/from16 v3, p1

    move/from16 v4, p2

    move v5, v7

    move/from16 v6, p4

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    :cond_5
    move v3, v0

    goto :goto_5

    :goto_4
    const-string v5, "Unknown event %d for session %d, source %d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v10

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_5
    move v0, v3

    if-eqz v0, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    monitor-exit v17

    return-object v2

    :catchall_2
    move-exception v0

    :goto_7
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nRecordActivityMonitor dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {v2, p1}, Landroid/media/AudioRecordingConfiguration;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getActiveRecordingConfigurations(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method initMonitor()V
    .locals 0

    invoke-static {p0}, Landroid/media/AudioSystem;->setRecordingCallback(Landroid/media/AudioSystem$AudioRecordingCallback;)V

    return-void
.end method

.method public onRecordingConfigurationChanged(IIII[ILjava/lang/String;)V
    .locals 8

    invoke-static {p4}, Landroid/media/MediaRecorder;->isSystemOnlyAudioSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    nop

    invoke-direct/range {p0 .. p5}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IIII[I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v5, v4, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v5, v0}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    iget-object v5, v4, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v5, v2}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "AudioService.RecordingActivityMonitor"

    const-string v7, "Could not call dispatchRecordingConfigChange() on client"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    goto :goto_1

    :cond_3
    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_4
    :goto_4
    return-void
.end method

.method registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;-><init>(Landroid/media/IRecordingConfigDispatcher;Z)V

    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->init()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    iget-object v4, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->release()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    iget-boolean v4, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    if-nez v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
