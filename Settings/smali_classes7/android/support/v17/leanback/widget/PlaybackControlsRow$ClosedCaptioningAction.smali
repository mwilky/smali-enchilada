.class public Landroid/support/v17/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;
.super Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClosedCaptioningAction"
.end annotation


# static fields
.field public static final INDEX_OFF:I = 0x0

.field public static final INDEX_ON:I = 0x1

.field public static final OFF:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ON:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getIconHighlightColor(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    sget v0, Landroid/support/v17/leanback/R$id;->lb_control_closed_captioning:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;-><init>(I)V

    sget v0, Landroid/support/v17/leanback/R$styleable;->lbPlaybackControlsActionIcons_closed_captioning:I

    invoke-static {p1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getStyledDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->createBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;->setDrawables([Landroid/graphics/drawable/Drawable;)V

    array-length v3, v1

    new-array v3, v3, [Ljava/lang/String;

    sget v5, Landroid/support/v17/leanback/R$string;->lb_playback_controls_closed_captioning_enable:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    sget v2, Landroid/support/v17/leanback/R$string;->lb_playback_controls_closed_captioning_disable:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;->setLabels([Ljava/lang/String;)V

    return-void
.end method
