.class Landroid/media/MediaPlayer$ProvisioningThread;
.super Ljava/lang/Thread;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
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

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private onDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

.field private status:I

.field final synthetic this$0:Landroid/media/MediaPlayer;

.field private urlStr:Ljava/lang/String;

.field private uuid:Ljava/util/UUID;


# direct methods
.method private constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer$ProvisioningThread;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$ProvisioningThread;-><init>(Landroid/media/MediaPlayer;)V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/media/MediaDrm$ProvisionRequest;Ljava/util/UUID;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$ProvisioningThread;
    .locals 3

    invoke-static {p3}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->drmLock:Ljava/lang/Object;

    invoke-static {p3}, Landroid/media/MediaPlayer;->access$3700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->onDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    iput-object p3, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

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

    iput-object v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->urlStr:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/MediaPlayer$ProvisioningThread;->uuid:Ljava/util/UUID;

    const/4 v0, 0x3

    iput v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleProvisioninig: Thread is initialised url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer$ProvisioningThread;->urlStr:Ljava/lang/String;

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

    iget-object v5, p0, Landroid/media/MediaPlayer$ProvisioningThread;->urlStr:Ljava/lang/String;

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

    const-string v6, "MediaPlayer"

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
    iput v3, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    const-string v7, "MediaPlayer"

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

    iput v3, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    const-string v5, "MediaPlayer"

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
    iget-object v4, p0, Landroid/media/MediaPlayer$ProvisioningThread;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$3800(Landroid/media/MediaPlayer;)Landroid/media/MediaDrm;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    const-string v4, "MediaPlayer"

    const-string v5, "HandleProvisioninig: Thread run: provideProvisionResponse SUCCEEDED!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v2, 0x1

    goto :goto_3

    :catch_2
    move-exception v4

    const/4 v5, 0x2

    iput v5, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    const-string v5, "MediaPlayer"

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

    iget-object v5, p0, Landroid/media/MediaPlayer$ProvisioningThread;->onDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    const/4 v6, 0x3

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/media/MediaPlayer$ProvisioningThread;->drmLock:Ljava/lang/Object;

    monitor-enter v5

    if-eqz v2, :cond_2

    :try_start_6
    iget-object v7, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/media/MediaPlayer$ProvisioningThread;->uuid:Ljava/util/UUID;

    invoke-static {v7, v8}, Landroid/media/MediaPlayer;->access$3900(Landroid/media/MediaPlayer;Ljava/util/UUID;)Z

    move-result v7

    move v4, v7

    if-eqz v4, :cond_1

    nop

    move v6, v1

    nop

    :cond_1
    iput v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_5

    :cond_2
    :goto_4
    iget-object v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v6, v1}, Landroid/media/MediaPlayer;->access$4002(Landroid/media/MediaPlayer;Z)Z

    iget-object v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v6, v1}, Landroid/media/MediaPlayer;->access$4102(Landroid/media/MediaPlayer;Z)Z

    if-nez v4, :cond_3

    iget-object v1, p0, Landroid/media/MediaPlayer$ProvisioningThread;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->access$4200(Landroid/media/MediaPlayer;)V

    :cond_3
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v1, p0, Landroid/media/MediaPlayer$ProvisioningThread;->onDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    iget v5, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    invoke-virtual {v1, v5}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->notifyClient(I)V

    goto :goto_6

    :goto_5
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    :cond_4
    if-eqz v2, :cond_6

    iget-object v5, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Landroid/media/MediaPlayer$ProvisioningThread;->uuid:Ljava/util/UUID;

    invoke-static {v5, v7}, Landroid/media/MediaPlayer;->access$3900(Landroid/media/MediaPlayer;Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_5

    nop

    move v6, v1

    nop

    :cond_5
    iput v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    :cond_6
    iget-object v5, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v5, v1}, Landroid/media/MediaPlayer;->access$4002(Landroid/media/MediaPlayer;Z)Z

    iget-object v5, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v5, v1}, Landroid/media/MediaPlayer;->access$4102(Landroid/media/MediaPlayer;Z)Z

    if-nez v4, :cond_7

    iget-object v1, p0, Landroid/media/MediaPlayer$ProvisioningThread;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->access$4200(Landroid/media/MediaPlayer;)V

    :cond_7
    :goto_6
    iput-boolean v3, p0, Landroid/media/MediaPlayer$ProvisioningThread;->finished:Z

    return-void
.end method

.method public status()I
    .locals 1

    iget v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    return v0
.end method
