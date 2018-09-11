.class Landroid/support/v17/leanback/media/MediaControllerAdapter$2;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "MediaControllerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/MediaControllerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/MediaControllerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/media/MediaControllerAdapter;

    .line 67
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2
    .param p1, "metadata"    # Landroid/support/v4/media/MediaMetadataCompat;

    .line 116
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onMetadataChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    .line 117
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 5
    .param p1, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 70
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-static {v0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->access$200(Landroid/support/v17/leanback/media/MediaControllerAdapter;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onBufferingStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;Z)V

    .line 72
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onBufferedPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    .line 73
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-static {v0, v3}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->access$202(Landroid/support/v17/leanback/media/MediaControllerAdapter;Z)Z

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 85
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPlayCompleted(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    goto/16 :goto_1

    .line 86
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 87
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    .line 88
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onCurrentPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    goto/16 :goto_1

    .line 89
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 90
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    .line 91
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onCurrentPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    goto/16 :goto_1

    .line 92
    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 93
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-static {v0, v2}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->access$202(Landroid/support/v17/leanback/media/MediaControllerAdapter;Z)Z

    .line 94
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onBufferingStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;Z)V

    .line 95
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onBufferedPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    goto :goto_1

    .line 96
    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 97
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 98
    .local v0, "errorMessage":Ljava/lang/CharSequence;
    if-nez v0, :cond_6

    .line 99
    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getErrorCode()I

    move-result v3

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onError(Landroid/support/v17/leanback/media/PlayerAdapter;ILjava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_6
    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getErrorCode()I

    move-result v3

    .line 103
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onError(Landroid/support/v17/leanback/media/PlayerAdapter;ILjava/lang/String;)V

    .line 105
    .end local v0    # "errorMessage":Ljava/lang/CharSequence;
    :goto_0
    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 106
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    .line 107
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onCurrentPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    goto :goto_1

    .line 108
    :cond_8
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    .line 109
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    .line 110
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaControllerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onCurrentPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    .line 112
    :cond_9
    :goto_1
    return-void
.end method
