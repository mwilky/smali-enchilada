.class public abstract Landroid/media/MediaPlaylistAgent;
.super Ljava/lang/Object;
.source "MediaPlaylistAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlaylistAgent$PlaylistEventCallback;,
        Landroid/media/MediaPlaylistAgent$ShuffleMode;,
        Landroid/media/MediaPlaylistAgent$RepeatMode;
    }
.end annotation


# static fields
.field public static final REPEAT_MODE_ALL:I = 0x2

.field public static final REPEAT_MODE_GROUP:I = 0x3

.field public static final REPEAT_MODE_NONE:I = 0x0

.field public static final REPEAT_MODE_ONE:I = 0x1

.field public static final SHUFFLE_MODE_ALL:I = 0x1

.field public static final SHUFFLE_MODE_GROUP:I = 0x2

.field public static final SHUFFLE_MODE_NONE:I


# instance fields
.field private final mProvider:Landroid/media/update/MediaPlaylistAgentProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/update/StaticProvider;->createMediaPlaylistAgent(Landroid/media/MediaPlaylistAgent;)Landroid/media/update/MediaPlaylistAgentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    return-void
.end method


# virtual methods
.method public addPlaylistItem(ILandroid/media/MediaItem2;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaPlaylistAgentProvider;->addPlaylistItem_impl(ILandroid/media/MediaItem2;)V

    return-void
.end method

.method public getMediaItem(Landroid/media/DataSourceDesc;)Landroid/media/MediaItem2;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaPlaylistAgentProvider;->getMediaItem_impl(Landroid/media/DataSourceDesc;)Landroid/media/MediaItem2;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->getPlaylist_impl()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadata()Landroid/media/MediaMetadata2;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->getPlaylistMetadata_impl()Landroid/media/MediaMetadata2;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->getRepeatMode_impl()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->getShuffleMode_impl()I

    move-result v0

    return v0
.end method

.method public final notifyPlaylistChanged()V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->notifyPlaylistChanged_impl()V

    return-void
.end method

.method public final notifyPlaylistMetadataChanged()V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->notifyPlaylistMetadataChanged_impl()V

    return-void
.end method

.method public final notifyRepeatModeChanged()V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->notifyRepeatModeChanged_impl()V

    return-void
.end method

.method public final notifyShuffleModeChanged()V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->notifyShuffleModeChanged_impl()V

    return-void
.end method

.method public final registerPlaylistEventCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaPlaylistAgent$PlaylistEventCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaPlaylistAgentProvider;->registerPlaylistEventCallback_impl(Ljava/util/concurrent/Executor;Landroid/media/MediaPlaylistAgent$PlaylistEventCallback;)V

    return-void
.end method

.method public removePlaylistItem(Landroid/media/MediaItem2;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaPlaylistAgentProvider;->removePlaylistItem_impl(Landroid/media/MediaItem2;)V

    return-void
.end method

.method public replacePlaylistItem(ILandroid/media/MediaItem2;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaPlaylistAgentProvider;->replacePlaylistItem_impl(ILandroid/media/MediaItem2;)V

    return-void
.end method

.method public setPlaylist(Ljava/util/List;Landroid/media/MediaMetadata2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;",
            "Landroid/media/MediaMetadata2;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaPlaylistAgentProvider;->setPlaylist_impl(Ljava/util/List;Landroid/media/MediaMetadata2;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaPlaylistAgentProvider;->setRepeatMode_impl(I)V

    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaPlaylistAgentProvider;->setShuffleMode_impl(I)V

    return-void
.end method

.method public skipToNextItem()V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->skipToNextItem_impl()V

    return-void
.end method

.method public skipToPlaylistItem(Landroid/media/MediaItem2;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaPlaylistAgentProvider;->skipToPlaylistItem_impl(Landroid/media/MediaItem2;)V

    return-void
.end method

.method public skipToPreviousItem()V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->skipToPreviousItem_impl()V

    return-void
.end method

.method public final unregisterPlaylistEventCallback(Landroid/media/MediaPlaylistAgent$PlaylistEventCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaPlaylistAgentProvider;->unregisterPlaylistEventCallback_impl(Landroid/media/MediaPlaylistAgent$PlaylistEventCallback;)V

    return-void
.end method

.method public updatePlaylistMetadata(Landroid/media/MediaMetadata2;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaPlaylistAgentProvider;->updatePlaylistMetadata_impl(Landroid/media/MediaMetadata2;)V

    return-void
.end method
