.class public Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;
.super Ljava/lang/Object;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnPlaybackProgressCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferedPositionChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;J)V
    .locals 0
    .param p1, "row"    # Landroid/support/v17/leanback/widget/PlaybackControlsRow;
    .param p2, "bufferedProgressMs"    # J

    .line 74
    return-void
.end method

.method public onCurrentPositionChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;J)V
    .locals 0
    .param p1, "row"    # Landroid/support/v17/leanback/widget/PlaybackControlsRow;
    .param p2, "currentTimeMs"    # J

    .line 58
    return-void
.end method

.method public onDurationChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;J)V
    .locals 0
    .param p1, "row"    # Landroid/support/v17/leanback/widget/PlaybackControlsRow;
    .param p2, "totalTime"    # J

    .line 66
    return-void
.end method
