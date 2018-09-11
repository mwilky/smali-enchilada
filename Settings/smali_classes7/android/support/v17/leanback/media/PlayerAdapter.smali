.class public abstract Landroid/support/v17/leanback/media/PlayerAdapter;
.super Ljava/lang/Object;
.source "PlayerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/PlayerAdapter$Callback;
    }
.end annotation


# instance fields
.field mCallback:Landroid/support/v17/leanback/media/PlayerAdapter$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public fastForward()V
    .locals 0

    .line 168
    return-void
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 248
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;
    .locals 1

    .line 126
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlayerAdapter;->mCallback:Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 241
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 226
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportedActions()J
    .locals 2

    .line 234
    const-wide/16 v0, 0x40

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public next()V
    .locals 0

    .line 152
    return-void
.end method

.method public onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .locals 0
    .param p1, "host"    # Landroid/support/v17/leanback/media/PlaybackGlueHost;

    .line 256
    return-void
.end method

.method public onDetachedFromHost()V
    .locals 0

    .line 265
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public previous()V
    .locals 0

    .line 160
    return-void
.end method

.method public rewind()V
    .locals 0

    .line 176
    return-void
.end method

.method public seekTo(J)V
    .locals 0
    .param p1, "positionInMs"    # J

    .line 183
    return-void
.end method

.method public final setCallback(Landroid/support/v17/leanback/media/PlayerAdapter$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    .line 118
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlayerAdapter;->mCallback:Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    .line 119
    return-void
.end method

.method public setProgressUpdatingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 190
    return-void
.end method

.method public setRepeatAction(I)V
    .locals 0
    .param p1, "repeatActionIndex"    # I

    .line 213
    return-void
.end method

.method public setShuffleAction(I)V
    .locals 0
    .param p1, "shuffleActionIndex"    # I

    .line 201
    return-void
.end method
