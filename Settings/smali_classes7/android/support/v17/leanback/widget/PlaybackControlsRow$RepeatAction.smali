.class public Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;
.super Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RepeatAction"
.end annotation


# static fields
.field public static final ALL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INDEX_ALL:I = 0x1

.field public static final INDEX_NONE:I = 0x0

.field public static final INDEX_ONE:I = 0x2

.field public static final NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ONE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getIconHighlightColor(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 8

    sget v0, Landroid/support/v17/leanback/R$id;->lb_control_repeat:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;-><init>(I)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sget v1, Landroid/support/v17/leanback/R$styleable;->lbPlaybackControlsActionIcons_repeat:I

    invoke-static {p1, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getStyledDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    sget v2, Landroid/support/v17/leanback/R$styleable;->lbPlaybackControlsActionIcons_repeat_one:I

    invoke-static {p1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getStyledDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->createBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    const/4 v6, 0x1

    aput-object v5, v0, v6

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7, p3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->createBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_1
    const/4 v5, 0x2

    aput-object v4, v0, v5

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;->setDrawables([Landroid/graphics/drawable/Drawable;)V

    array-length v4, v0

    new-array v4, v4, [Ljava/lang/String;

    sget v7, Landroid/support/v17/leanback/R$string;->lb_playback_controls_repeat_all:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    sget v3, Landroid/support/v17/leanback/R$string;->lb_playback_controls_repeat_one:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    sget v3, Landroid/support/v17/leanback/R$string;->lb_playback_controls_repeat_none:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;->setLabels([Ljava/lang/String;)V

    return-void
.end method
