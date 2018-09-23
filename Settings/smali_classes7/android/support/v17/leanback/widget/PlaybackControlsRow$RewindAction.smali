.class public Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;
.super Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RewindAction"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 11

    sget v0, Landroid/support/v17/leanback/R$id;->lb_control_fast_rewind:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;-><init>(I)V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    add-int/lit8 v1, p2, 0x1

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    sget v2, Landroid/support/v17/leanback/R$styleable;->lbPlaybackControlsActionIcons_rewind:I

    invoke-static {p1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getStyledDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->setDrawables([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->getActionCount()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    sget v4, Landroid/support/v17/leanback/R$string;->lb_playback_controls_rewind:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->getActionCount()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    aget-object v5, v2, v3

    aput-object v5, v4, v3

    move v5, v0

    :goto_0
    if-gt v5, p2, :cond_0

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Landroid/support/v17/leanback/R$string;->lb_control_display_rewind_multiplier:I

    new-array v9, v0, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    aput-object v7, v2, v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Landroid/support/v17/leanback/R$string;->lb_playback_controls_rewind_multiplier:I

    new-array v9, v0, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->setLabels([Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->setSecondaryLabels([Ljava/lang/String;)V

    const/16 v0, 0x59

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->addKeyCode(I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numSpeeds must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
