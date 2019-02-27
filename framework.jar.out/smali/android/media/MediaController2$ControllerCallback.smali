.class public abstract Landroid/media/MediaController2$ControllerCallback;
.super Ljava/lang/Object;
.source "MediaController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ControllerCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllowedCommandsChanged(Landroid/media/MediaController2;Landroid/media/SessionCommandGroup2;)V
    .locals 0

    return-void
.end method

.method public onBufferingStateChanged(Landroid/media/MediaController2;Landroid/media/MediaItem2;I)V
    .locals 0

    return-void
.end method

.method public onConnected(Landroid/media/MediaController2;Landroid/media/SessionCommandGroup2;)V
    .locals 0

    return-void
.end method

.method public onCurrentMediaItemChanged(Landroid/media/MediaController2;Landroid/media/MediaItem2;)V
    .locals 0

    return-void
.end method

.method public onCustomCommand(Landroid/media/MediaController2;Landroid/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    return-void
.end method

.method public onCustomLayoutChanged(Landroid/media/MediaController2;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaController2;",
            "Ljava/util/List<",
            "Landroid/media/MediaSession2$CommandButton;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onDisconnected(Landroid/media/MediaController2;)V
    .locals 0

    return-void
.end method

.method public onError(Landroid/media/MediaController2;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlaybackInfoChanged(Landroid/media/MediaController2;Landroid/media/MediaController2$PlaybackInfo;)V
    .locals 0

    return-void
.end method

.method public onPlaybackSpeedChanged(Landroid/media/MediaController2;F)V
    .locals 0

    return-void
.end method

.method public onPlayerStateChanged(Landroid/media/MediaController2;I)V
    .locals 0

    return-void
.end method

.method public onPlaylistChanged(Landroid/media/MediaController2;Ljava/util/List;Landroid/media/MediaMetadata2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaController2;",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;",
            "Landroid/media/MediaMetadata2;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onPlaylistMetadataChanged(Landroid/media/MediaController2;Landroid/media/MediaMetadata2;)V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(Landroid/media/MediaController2;I)V
    .locals 0

    return-void
.end method

.method public onSeekCompleted(Landroid/media/MediaController2;J)V
    .locals 0

    return-void
.end method

.method public onShuffleModeChanged(Landroid/media/MediaController2;I)V
    .locals 0

    return-void
.end method
