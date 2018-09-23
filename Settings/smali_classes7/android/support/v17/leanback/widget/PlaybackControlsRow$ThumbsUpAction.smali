.class public Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;
.super Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsAction;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbsUpAction"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget v0, Landroid/support/v17/leanback/R$id;->lb_control_thumbs_up:I

    sget v1, Landroid/support/v17/leanback/R$styleable;->lbPlaybackControlsActionIcons_thumb_up:I

    sget v2, Landroid/support/v17/leanback/R$styleable;->lbPlaybackControlsActionIcons_thumb_up_outline:I

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsAction;-><init>(ILandroid/content/Context;II)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;->getActionCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Landroid/support/v17/leanback/R$string;->lb_playback_controls_thumb_up:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Landroid/support/v17/leanback/R$string;->lb_playback_controls_thumb_up_outline:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;->setLabels([Ljava/lang/String;)V

    return-void
.end method
