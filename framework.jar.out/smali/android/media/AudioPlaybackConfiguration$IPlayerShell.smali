.class final Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
.super Ljava/lang/Object;
.source "AudioPlaybackConfiguration.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioPlaybackConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IPlayerShell"
.end annotation


# instance fields
.field private volatile mIPlayer:Landroid/media/IPlayer;

.field final mMonitor:Landroid/media/AudioPlaybackConfiguration;


# direct methods
.method constructor <init>(Landroid/media/AudioPlaybackConfiguration;Landroid/media/IPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    iput-object p2, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    invoke-static {v0}, Landroid/media/AudioPlaybackConfiguration;->access$300(Landroid/media/AudioPlaybackConfiguration;)V

    :cond_0
    return-void
.end method

.method getIPlayer()Landroid/media/IPlayer;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    return-object v0
.end method

.method declared-synchronized monitorDeath()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    invoke-interface {v0}, Landroid/media/IPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/media/AudioPlaybackConfiguration;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not link to client death for piid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    invoke-static {v3}, Landroid/media/AudioPlaybackConfiguration;->access$200(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/media/AudioPlaybackConfiguration;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not link to client death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    invoke-interface {v0}, Landroid/media/IPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
