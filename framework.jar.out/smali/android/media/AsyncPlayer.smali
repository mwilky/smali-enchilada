.class public Landroid/media/AsyncPlayer;
.super Ljava/lang/Object;
.source "AsyncPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AsyncPlayer$Thread;,
        Landroid/media/AsyncPlayer$Command;
    }
.end annotation


# static fields
.field private static final PLAY:I = 0x1

.field private static final STOP:I = 0x2

.field private static final mDebug:Z = false


# instance fields
.field private final mCmdQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/AsyncPlayer$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mState:I

.field private mTag:Ljava/lang/String;

.field private mThread:Landroid/media/AsyncPlayer$Thread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AsyncPlayer;->mState:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "AsyncPlayer"

    iput-object v0, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Landroid/media/AsyncPlayer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Command;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AsyncPlayer;->startSound(Landroid/media/AsyncPlayer$Command;)V

    return-void
.end method

.method static synthetic access$300(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$302(Landroid/media/AsyncPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$402(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Thread;)Landroid/media/AsyncPlayer$Thread;
    .locals 0

    iput-object p1, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    return-object p1
.end method

.method static synthetic access$500(Landroid/media/AsyncPlayer;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/AsyncPlayer;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private enqueueLocked(Landroid/media/AsyncPlayer$Command;)V
    .locals 1

    iget-object v0, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/AsyncPlayer;->acquireWakeLock()V

    new-instance v0, Landroid/media/AsyncPlayer$Thread;

    invoke-direct {v0, p0}, Landroid/media/AsyncPlayer$Thread;-><init>(Landroid/media/AsyncPlayer;)V

    iput-object v0, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    iget-object v0, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    invoke-virtual {v0}, Landroid/media/AsyncPlayer$Thread;->start()V

    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private startSound(Landroid/media/AsyncPlayer$Command;)V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iget-object v1, p1, Landroid/media/AsyncPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    iget-object v1, p1, Landroid/media/AsyncPlayer$Command;->context:Landroid/content/Context;

    iget-object v2, p1, Landroid/media/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-boolean v1, p1, Landroid/media/AsyncPlayer$Command;->looping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v1, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    iput-object v0, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Landroid/media/AsyncPlayer$Command;->requestTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notification sound delayed by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "msecs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error loading sound for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/media/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public play(Landroid/content/Context;Landroid/net/Uri;ZI)V
    .locals 3

    const-string v0, "AsyncPlayer"

    const-string/jumbo v1, "play()"

    invoke-static {p4, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p4}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AsyncPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZLandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    const-string v2, "Call to deprecated AsyncPlayer.play() method caused:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;ZLandroid/media/AudioAttributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    new-instance v0, Landroid/media/AsyncPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/AsyncPlayer$Command;-><init>(Landroid/media/AsyncPlayer$1;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/media/AsyncPlayer$Command;->requestTime:J

    const/4 v1, 0x1

    iput v1, v0, Landroid/media/AsyncPlayer$Command;->code:I

    iput-object p1, v0, Landroid/media/AsyncPlayer$Command;->context:Landroid/content/Context;

    iput-object p2, v0, Landroid/media/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    iput-boolean p3, v0, Landroid/media/AsyncPlayer$Command;->looping:Z

    iput-object p4, v0, Landroid/media/AsyncPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    iget-object v2, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/AsyncPlayer;->enqueueLocked(Landroid/media/AsyncPlayer$Command;)V

    iput v1, p0, Landroid/media/AsyncPlayer;->mState:I

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AsyncPlayer.play() argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUsesWakeLock(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    if-nez v0, :cond_0

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assertion failed mWakeLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mThread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 5

    iget-object v0, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/media/AsyncPlayer;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v1, Landroid/media/AsyncPlayer$Command;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/media/AsyncPlayer$Command;-><init>(Landroid/media/AsyncPlayer$1;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Landroid/media/AsyncPlayer$Command;->requestTime:J

    iput v2, v1, Landroid/media/AsyncPlayer$Command;->code:I

    invoke-direct {p0, v1}, Landroid/media/AsyncPlayer;->enqueueLocked(Landroid/media/AsyncPlayer$Command;)V

    iput v2, p0, Landroid/media/AsyncPlayer;->mState:I

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
