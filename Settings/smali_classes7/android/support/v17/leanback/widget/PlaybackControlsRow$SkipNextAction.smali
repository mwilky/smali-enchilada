.class public Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;
.super Landroid/support/v17/leanback/widget/Action;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkipNextAction"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 341
    sget v0, Landroid/support/v17/leanback/R$id;->lb_control_skip_next:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/widget/Action;-><init>(J)V

    .line 342
    sget v0, Landroid/support/v17/leanback/R$styleable;->lbPlaybackControlsActionIcons_skip_next:I

    invoke-static {p1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getStyledDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 344
    sget v0, Landroid/support/v17/leanback/R$string;->lb_playback_controls_skip_next:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;->setLabel1(Ljava/lang/CharSequence;)V

    .line 345
    const/16 v0, 0x57

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;->addKeyCode(I)V

    .line 346
    return-void
.end method
