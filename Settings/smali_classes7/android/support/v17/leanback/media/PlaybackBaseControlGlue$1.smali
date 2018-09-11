.class Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;
.super Landroid/support/v17/leanback/media/PlayerAdapter$Callback;
.source "PlaybackBaseControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    .line 135
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;"
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferedPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 1
    .param p1, "wrapper"    # Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 152
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onUpdateBufferedProgress()V

    .line 153
    return-void
.end method

.method public onBufferingStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;Z)V
    .locals 1
    .param p1, "wrapper"    # Landroid/support/v17/leanback/media/PlayerAdapter;
    .param p2, "start"    # Z

    .line 194
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iput-boolean p2, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mBuffering:Z

    .line 195
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onBufferingStateChanged(Z)V

    .line 198
    :cond_0
    return-void
.end method

.method public onCurrentPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 1
    .param p1, "wrapper"    # Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 146
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onUpdateProgress()V

    .line 147
    return-void
.end method

.method public onDurationChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 1
    .param p1, "wrapper"    # Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 158
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onUpdateDuration()V

    .line 159
    return-void
.end method

.method public onError(Landroid/support/v17/leanback/media/PlayerAdapter;ILjava/lang/String;)V
    .locals 2
    .param p1, "wrapper"    # Landroid/support/v17/leanback/media/PlayerAdapter;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .line 184
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorSet:Z

    .line 185
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iput p2, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorCode:I

    .line 186
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iput-object p3, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorMessage:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    invoke-virtual {v0, p2, p3}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onError(ILjava/lang/CharSequence;)V

    .line 190
    :cond_0
    return-void
.end method

.method public onMetadataChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 1
    .param p1, "wrapper"    # Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 202
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onMetadataChanged()V

    .line 203
    return-void
.end method

.method public onPlayCompleted(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 1
    .param p1, "wrapper"    # Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 164
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onPlayCompleted()V

    .line 165
    return-void
.end method

.method public onPlayStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 1
    .param p1, "wrapper"    # Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 140
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onPlayStateChanged()V

    .line 141
    return-void
.end method

.method public onPreparedStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 1
    .param p1, "wrapper"    # Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 170
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onPreparedStateChanged()V

    .line 171
    return-void
.end method

.method public onVideoSizeChanged(Landroid/support/v17/leanback/media/PlayerAdapter;II)V
    .locals 1
    .param p1, "wrapper"    # Landroid/support/v17/leanback/media/PlayerAdapter;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 175
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;, "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;"
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iput p2, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoWidth:I

    .line 176
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iput p3, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoHeight:I

    .line 177
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    invoke-virtual {v0, p2, p3}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onVideoSizeChanged(II)V

    .line 180
    :cond_0
    return-void
.end method
