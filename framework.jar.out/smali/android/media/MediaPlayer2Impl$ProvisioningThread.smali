.class Landroid/media/MediaPlayer2Impl$ProvisioningThread;
.super Ljava/lang/Thread;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisioningThread"
.end annotation


# static fields
.field public static final TIMEOUT_MS:I = 0xea60


# instance fields
.field private drmLock:Ljava/lang/Object;

.field private finished:Z

.field private mediaPlayer:Landroid/media/MediaPlayer2Impl;

.field private status:I

.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;

.field private urlStr:Ljava/lang/String;

.field private uuid:Ljava/util/UUID;


# direct methods
.method private constructor <init>(Landroid/media/MediaPlayer2Impl;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl$ProvisioningThread;-><init>(Landroid/media/MediaPlayer2Impl;)V

    return-void
.end method

.method public static synthetic lambda$run$0(Landroid/media/MediaPlayer2Impl$ProvisioningThread;Landroid/util/Pair;)V
    .locals 4

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$DrmEventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->status:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer2$DrmEventCallback;->onDrmPrepared(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;I)V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/media/MediaDrm$ProvisionRequest;Ljava/util/UUID;Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$ProvisioningThread;
    .locals 3

    invoke-static {p3}, Landroid/media/MediaPlayer2Impl;->access$4800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->drmLock:Ljava/lang/Object;

    iput-object p3, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer2Impl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&signedRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->urlStr:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->uuid:Ljava/util/UUID;

    const/4 v0, 0x3

    iput v0, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->status:I

    const-string v0, "MediaPlayer2Impl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleProvisioninig: Thread is initialised url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->urlStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public run()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->urlStr:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v6, "POST"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const v6, 0xea60

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v6

    move-object v0, v6

    const-string v6, "MediaPlayer2Impl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HandleProvisioninig: Thread run: response "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v6

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_3
    iput v3, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->status:I

    const-string v7, "MediaPlayer2Impl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HandleProvisioninig: Thread run: connect "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " url: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_0
    nop

    goto :goto_2

    :goto_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v4

    iput v3, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->status:I

    const-string v5, "MediaPlayer2Impl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HandleProvisioninig: Thread run: openConnection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v0, :cond_0

    :try_start_5
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$6100(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaDrm;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    const-string v4, "MediaPlayer2Impl"

    const-string v5, "HandleProvisioninig: Thread run: provideProvisionResponse SUCCEEDED!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v2, 0x1

    goto :goto_3

    :catch_2
    move-exception v4

    const/4 v5, 0x2

    iput v5, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->status:I

    const-string v5, "MediaPlayer2Impl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HandleProvisioninig: Thread run: provideProvisionResponse "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v6}, Landroid/media/MediaPlayer2Impl;->access$6500(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_6
    iget-object v7, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v7}, Landroid/media/MediaPlayer2Impl;->access$5100(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v3

    move v5, v7

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v6, 0x3

    if-eqz v5, :cond_5

    iget-object v7, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->drmLock:Ljava/lang/Object;

    monitor-enter v7

    if-eqz v2, :cond_2

    :try_start_7
    iget-object v8, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v9, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->uuid:Ljava/util/UUID;

    invoke-static {v8, v9}, Landroid/media/MediaPlayer2Impl;->access$6600(Landroid/media/MediaPlayer2Impl;Ljava/util/UUID;)Z

    move-result v8

    move v4, v8

    if-eqz v4, :cond_1

    nop

    move v6, v1

    nop

    :cond_1
    iput v6, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->status:I

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_6

    :cond_2
    :goto_4
    iget-object v6, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-static {v6, v1}, Landroid/media/MediaPlayer2Impl;->access$6702(Landroid/media/MediaPlayer2Impl;Z)Z

    iget-object v6, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-static {v6, v1}, Landroid/media/MediaPlayer2Impl;->access$6802(Landroid/media/MediaPlayer2Impl;Z)Z

    if-nez v4, :cond_3

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$5900(Landroid/media/MediaPlayer2Impl;)V

    :cond_3
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$6500(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    iget-object v6, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v6}, Landroid/media/MediaPlayer2Impl;->access$5100(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/util/concurrent/Executor;

    new-instance v9, Landroid/media/-$$Lambda$MediaPlayer2Impl$ProvisioningThread$ghq9Dd9r2O6PXBn2hv4fhVAxaTQ;

    invoke-direct {v9, p0, v7}, Landroid/media/-$$Lambda$MediaPlayer2Impl$ProvisioningThread$ghq9Dd9r2O6PXBn2hv4fhVAxaTQ;-><init>(Landroid/media/MediaPlayer2Impl$ProvisioningThread;Landroid/util/Pair;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_4
    monitor-exit v1

    goto :goto_7

    :catchall_2
    move-exception v3

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v3

    :goto_6
    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v1

    :cond_5
    if-eqz v2, :cond_7

    iget-object v7, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v8, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->uuid:Ljava/util/UUID;

    invoke-static {v7, v8}, Landroid/media/MediaPlayer2Impl;->access$6600(Landroid/media/MediaPlayer2Impl;Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_6

    nop

    move v6, v1

    nop

    :cond_6
    iput v6, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->status:I

    :cond_7
    iget-object v6, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-static {v6, v1}, Landroid/media/MediaPlayer2Impl;->access$6702(Landroid/media/MediaPlayer2Impl;Z)Z

    iget-object v6, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-static {v6, v1}, Landroid/media/MediaPlayer2Impl;->access$6802(Landroid/media/MediaPlayer2Impl;Z)Z

    if-nez v4, :cond_8

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$5900(Landroid/media/MediaPlayer2Impl;)V

    :cond_8
    :goto_7
    iput-boolean v3, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->finished:Z

    return-void

    :catchall_3
    move-exception v1

    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v1
.end method

.method public status()I
    .locals 1

    iget v0, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->status:I

    return v0
.end method
