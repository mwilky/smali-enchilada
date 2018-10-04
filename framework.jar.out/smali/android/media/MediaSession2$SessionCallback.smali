.class public abstract Landroid/media/MediaSession2$SessionCallback;
.super Ljava/lang/Object;
.source "MediaSession2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaSession2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SessionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingStateChanged(Landroid/media/MediaSession2;Landroid/media/MediaPlayerBase;Landroid/media/MediaItem2;I)V
    .locals 0

    return-void
.end method

.method public onCommandRequest(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Landroid/media/SessionCommand2;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onConnect(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;)Landroid/media/SessionCommandGroup2;
    .locals 1

    new-instance v0, Landroid/media/SessionCommandGroup2;

    invoke-direct {v0}, Landroid/media/SessionCommandGroup2;-><init>()V

    invoke-virtual {v0}, Landroid/media/SessionCommandGroup2;->addAllPredefinedCommands()V

    return-object v0
.end method

.method public onCurrentMediaItemChanged(Landroid/media/MediaSession2;Landroid/media/MediaPlayerBase;Landroid/media/MediaItem2;)V
    .locals 0

    return-void
.end method

.method public onCustomCommand(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Landroid/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    return-void
.end method

.method public onDisconnected(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;)V
    .locals 0

    return-void
.end method

.method public onFastForward(Landroid/media/MediaSession2;)V
    .locals 0

    return-void
.end method

.method public onMediaPrepared(Landroid/media/MediaSession2;Landroid/media/MediaPlayerBase;Landroid/media/MediaItem2;)V
    .locals 0

    return-void
.end method

.method public onPlayFromMediaId(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlayFromSearch(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlayFromUri(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlaybackSpeedChanged(Landroid/media/MediaSession2;Landroid/media/MediaPlayerBase;F)V
    .locals 0

    return-void
.end method

.method public onPlayerStateChanged(Landroid/media/MediaSession2;Landroid/media/MediaPlayerBase;I)V
    .locals 0

    return-void
.end method

.method public onPlaylistChanged(Landroid/media/MediaSession2;Landroid/media/MediaPlaylistAgent;Ljava/util/List;Landroid/media/MediaMetadata2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaSession2;",
            "Landroid/media/MediaPlaylistAgent;",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;",
            "Landroid/media/MediaMetadata2;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onPlaylistMetadataChanged(Landroid/media/MediaSession2;Landroid/media/MediaPlaylistAgent;Landroid/media/MediaMetadata2;)V
    .locals 0

    return-void
.end method

.method public onPrepareFromMediaId(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPrepareFromSearch(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPrepareFromUri(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(Landroid/media/MediaSession2;Landroid/media/MediaPlaylistAgent;I)V
    .locals 0

    return-void
.end method

.method public onRewind(Landroid/media/MediaSession2;)V
    .locals 0

    return-void
.end method

.method public onSeekCompleted(Landroid/media/MediaSession2;Landroid/media/MediaPlayerBase;J)V
    .locals 0

    return-void
.end method

.method public onSetRating(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/media/Rating2;)V
    .locals 0

    return-void
.end method

.method public onShuffleModeChanged(Landroid/media/MediaSession2;Landroid/media/MediaPlaylistAgent;I)V
    .locals 0

    return-void
.end method
