.class Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;
.super Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;
.source "PlaybackTransportRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    .line 87
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferedPositionChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;J)V
    .locals 1
    .param p1, "row"    # Landroid/support/v17/leanback/widget/PlaybackControlsRow;
    .param p2, "ms"    # J

    .line 100
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-virtual {v0, p2, p3}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->setBufferedPosition(J)V

    .line 101
    return-void
.end method

.method public onCurrentPositionChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;J)V
    .locals 1
    .param p1, "row"    # Landroid/support/v17/leanback/widget/PlaybackControlsRow;
    .param p2, "ms"    # J

    .line 90
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-virtual {v0, p2, p3}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->setCurrentPosition(J)V

    .line 91
    return-void
.end method

.method public onDurationChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;J)V
    .locals 1
    .param p1, "row"    # Landroid/support/v17/leanback/widget/PlaybackControlsRow;
    .param p2, "ms"    # J

    .line 95
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-virtual {v0, p2, p3}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->setTotalTime(J)V

    .line 96
    return-void
.end method
