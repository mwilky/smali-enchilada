.class public Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;
.super Ljava/lang/Object;
.source "DrawableLayoutDirectionHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIII)Landroid/graphics/drawable/InsetDrawable;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "insetStart"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetEnd"    # I
    .param p4, "insetBottom"    # I
    .param p5, "layoutDirection"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 69
    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIIZ)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/content/Context;)Landroid/graphics/drawable/InsetDrawable;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "insetStart"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetEnd"    # I
    .param p4, "insetBottom"    # I
    .param p5, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "isRtl":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 53
    nop

    .line 54
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    .line 55
    .local v1, "layoutDirection":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 57
    .end local v1    # "layoutDirection":I
    :cond_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIIZ)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;
    .locals 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "insetStart"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetEnd"    # I
    .param p4, "insetBottom"    # I
    .param p5, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 39
    invoke-virtual {p5}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v7, v1

    .line 40
    .local v7, "isRtl":Z
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v2 .. v7}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIIZ)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIIZ)Landroid/graphics/drawable/InsetDrawable;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "insetStart"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetEnd"    # I
    .param p4, "insetBottom"    # I
    .param p5, "isRtl"    # Z

    .line 75
    if-eqz p5, :cond_0

    .line 76
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move v3, p2

    move v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v6

    .line 78
    :cond_0
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v6
.end method
