.class abstract Landroid/support/v4/media/MediaPlayer2Impl$Task;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Task"
.end annotation


# instance fields
.field private mDSD:Landroid/support/v4/media/DataSourceDesc;

.field private final mMediaCallType:I

.field private final mNeedToWaitForEventToComplete:Z

.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;IZ)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->mMediaCallType:I

    iput-boolean p3, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    return-void
.end method

.method static synthetic access$1000(Landroid/support/v4/media/MediaPlayer2Impl$Task;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->mMediaCallType:I

    return v0
.end method

.method static synthetic access$1100(Landroid/support/v4/media/MediaPlayer2Impl$Task;)Landroid/support/v4/media/DataSourceDesc;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->mDSD:Landroid/support/v4/media/DataSourceDesc;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/support/v4/media/MediaPlayer2Impl$Task;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    return v0
.end method

.method static synthetic access$1300(Landroid/support/v4/media/MediaPlayer2Impl$Task;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaPlayer2Impl$Task;->sendCompleteNotification(I)V

    return-void
.end method

.method private sendCompleteNotification(I)V
    .locals 2

    iget v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->mMediaCallType:I

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    new-instance v1, Landroid/support/v4/media/MediaPlayer2Impl$Task$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaPlayer2Impl$Task$1;-><init>(Landroid/support/v4/media/MediaPlayer2Impl$Task;I)V

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaPlayer2Impl;->access$300(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$Mp2EventNotifier;)V

    return-void
.end method


# virtual methods
.method abstract process()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$Task;->process()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const/high16 v0, -0x80000000

    goto :goto_1

    :catch_1
    move-exception v1

    const/4 v0, 0x4

    goto :goto_0

    :catch_2
    move-exception v1

    const/4 v0, 0x3

    goto :goto_0

    :catch_3
    move-exception v1

    const/4 v0, 0x2

    goto :goto_0

    :catch_4
    move-exception v1

    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaPlayer2Impl;->getCurrentDataSource()Landroid/support/v4/media/DataSourceDesc;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->mDSD:Landroid/support/v4/media/DataSourceDesc;

    iget-boolean v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaPlayer2Impl$Task;->sendCompleteNotification(I)V

    iget-object v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/support/v4/media/MediaPlayer2Impl;->access$800(Landroid/support/v4/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/media/MediaPlayer2Impl;->access$902(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$Task;)Landroid/support/v4/media/MediaPlayer2Impl$Task;

    iget-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/support/v4/media/MediaPlayer2Impl;->access$1400(Landroid/support/v4/media/MediaPlayer2Impl;)V

    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
