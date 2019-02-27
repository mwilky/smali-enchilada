.class public final Landroid/media/RemoteDisplay;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteDisplay$Listener;
    }
.end annotation


# static fields
.field public static final DISPLAY_ERROR_CONNECTION_DROPPED:I = 0x2

.field public static final DISPLAY_ERROR_UNKOWN:I = 0x1

.field public static final DISPLAY_FLAG_SECURE:I = 0x1


# instance fields
.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/media/RemoteDisplay$Listener;

.field private final mOpPackageName:Ljava/lang/String;

.field private mPtr:J


# direct methods
.method private constructor <init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    iput-object p1, p0, Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;

    iput-object p2, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/media/RemoteDisplay;->mOpPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;
    .locals 1

    iget-object v0, p0, Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;

    return-object v0
.end method

.method private dispose(Z)V
    .locals 4

    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_1
    :goto_0
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/media/RemoteDisplay;->nativeDispose(J)V

    iput-wide v2, p0, Landroid/media/RemoteDisplay;->mPtr:J

    :cond_2
    return-void
.end method

.method public static listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)Landroid/media/RemoteDisplay;
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Landroid/media/RemoteDisplay;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/RemoteDisplay;-><init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Landroid/media/RemoteDisplay;->startListening(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iface must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native nativeDispose(J)V
.end method

.method private native nativeListen(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native nativePause(J)V
.end method

.method private native nativeResume(J)V
.end method

.method private notifyDisplayConnected(Landroid/view/Surface;IIII)V
    .locals 9

    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v8, Landroid/media/RemoteDisplay$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/media/RemoteDisplay$1;-><init>(Landroid/media/RemoteDisplay;Landroid/view/Surface;IIII)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyDisplayDisconnected()V
    .locals 2

    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$2;

    invoke-direct {v1, p0}, Landroid/media/RemoteDisplay$2;-><init>(Landroid/media/RemoteDisplay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyDisplayError(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$3;

    invoke-direct {v1, p0, p1}, Landroid/media/RemoteDisplay$3;-><init>(Landroid/media/RemoteDisplay;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startListening(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroid/media/RemoteDisplay;->mOpPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/media/RemoteDisplay;->nativeListen(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start listening for remote display connection on \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/RemoteDisplay;->dispose(Z)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/RemoteDisplay;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public pause()V
    .locals 2

    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/media/RemoteDisplay;->nativePause(J)V

    return-void
.end method

.method public resume()V
    .locals 2

    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/media/RemoteDisplay;->nativeResume(J)V

    return-void
.end method
