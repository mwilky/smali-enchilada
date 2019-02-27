.class public Landroid/view/Gravity;
.super Ljava/lang/Object;
.source "Gravity.java"


# static fields
.field public static final AXIS_CLIP:I = 0x8

.field public static final AXIS_PULL_AFTER:I = 0x4

.field public static final AXIS_PULL_BEFORE:I = 0x2

.field public static final AXIS_SPECIFIED:I = 0x1

.field public static final AXIS_X_SHIFT:I = 0x0

.field public static final AXIS_Y_SHIFT:I = 0x4

.field public static final BOTTOM:I = 0x50

.field public static final CENTER:I = 0x11

.field public static final CENTER_HORIZONTAL:I = 0x1

.field public static final CENTER_VERTICAL:I = 0x10

.field public static final CLIP_HORIZONTAL:I = 0x8

.field public static final CLIP_VERTICAL:I = 0x80

.field public static final DISPLAY_CLIP_HORIZONTAL:I = 0x1000000

.field public static final DISPLAY_CLIP_VERTICAL:I = 0x10000000

.field public static final END:I = 0x800005

.field public static final FILL:I = 0x77

.field public static final FILL_HORIZONTAL:I = 0x7

.field public static final FILL_VERTICAL:I = 0x70

.field public static final HORIZONTAL_GRAVITY_MASK:I = 0x7

.field public static final LEFT:I = 0x3

.field public static final NO_GRAVITY:I = 0x0

.field public static final RELATIVE_HORIZONTAL_GRAVITY_MASK:I = 0x800007

.field public static final RELATIVE_LAYOUT_DIRECTION:I = 0x800000

.field public static final RIGHT:I = 0x5

.field public static final START:I = 0x800003

.field public static final TOP:I = 0x30

.field public static final VERTICAL_GRAVITY_MASK:I = 0x70


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 5

    and-int/lit8 v0, p0, 0x6

    const/4 v1, 0x2

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    iget v0, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget v0, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->right:I

    iget v0, p6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->left:I

    and-int/lit8 v0, p0, 0x8

    if-ne v0, v2, :cond_4

    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v2, :cond_4

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    and-int/lit8 v0, p0, 0x8

    if-ne v0, v2, :cond_4

    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v2, :cond_4

    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    iget v4, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, p1

    div-int/2addr v3, v1

    add-int/2addr v0, v3

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    and-int/lit8 v0, p0, 0x8

    if-ne v0, v2, :cond_4

    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v2, :cond_3

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    :cond_3
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v2, :cond_4

    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    :cond_4
    :goto_0
    and-int/lit8 v0, p0, 0x60

    const/16 v2, 0x80

    if-eqz v0, :cond_7

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    const/16 v1, 0x40

    if-eq v0, v1, :cond_5

    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_5
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->top:I

    and-int/lit16 v0, p0, 0x80

    if-ne v0, v2, :cond_9

    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_9

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_6
    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    and-int/lit16 v0, p0, 0x80

    if-ne v0, v2, :cond_9

    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_9

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_7
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    div-int/2addr v3, v1

    add-int/2addr v0, v3

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    and-int/lit16 v0, p0, 0x80

    if-ne v0, v2, :cond_9

    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_8

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    :cond_8
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_9

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    :cond_9
    :goto_1
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .locals 8

    invoke-static {p0, p7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    move v0, v7

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 8

    invoke-static {p0, p5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, v7

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    return-void
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_5

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v2

    goto :goto_0

    :cond_2
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_4

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_4
    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    :cond_5
    :goto_1
    const/high16 v0, 0x1000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_6

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    :cond_6
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_b

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_8

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v2

    goto :goto_2

    :cond_8
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_9

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v2

    :cond_9
    :goto_2
    if-eqz v0, :cond_b

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_a

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_a
    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->right:I

    :cond_b
    :goto_3
    return-void
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 1

    invoke-static {p0, p3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    invoke-static {v0, p1, p2}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static getAbsoluteGravity(II)I
    .locals 4

    move v0, p0

    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-lez v1, :cond_4

    const v1, 0x800003

    and-int v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, v1, :cond_1

    const v1, -0x800004

    and-int/2addr v0, v1

    if-ne p1, v3, :cond_0

    or-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_0
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_1
    const v1, 0x800005

    and-int v2, v0, v1

    if-ne v2, v1, :cond_3

    const v1, -0x800006

    and-int/2addr v0, v1

    if-ne p1, v3, :cond_2

    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_2
    or-int/lit8 v0, v0, 0x5

    :cond_3
    :goto_0
    const v1, -0x800001

    and-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public static isHorizontal(I)Z
    .locals 1

    if-lez p0, :cond_0

    const v0, 0x800007

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVertical(I)Z
    .locals 1

    if-lez p0, :cond_0

    and-int/lit8 v0, p0, 0x70

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x77

    const/16 v2, 0x77

    const/16 v3, 0x20

    if-ne v1, v2, :cond_0

    const-string v1, "FILL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_0
    and-int/lit8 v1, p0, 0x70

    const/16 v2, 0x70

    if-ne v1, v2, :cond_1

    const-string v1, "FILL_VERTICAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    and-int/lit8 v1, p0, 0x30

    const/16 v2, 0x30

    if-ne v1, v2, :cond_2

    const-string v1, "TOP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x50

    const/16 v2, 0x50

    if-ne v1, v2, :cond_3

    const-string v1, "BOTTOM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    and-int/lit8 v1, p0, 0x7

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    const-string v1, "FILL_HORIZONTAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const v1, 0x800003

    and-int v2, p0, v1

    if-ne v2, v1, :cond_5

    const-string v1, "START"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    and-int/lit8 v1, p0, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    const-string v1, "LEFT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    :goto_1
    const v1, 0x800005

    and-int v2, p0, v1

    if-ne v2, v1, :cond_7

    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    and-int/lit8 v1, p0, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    const-string v1, "RIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    :goto_2
    and-int/lit8 v1, p0, 0x11

    const/16 v2, 0x11

    const/4 v4, 0x1

    if-ne v1, v2, :cond_9

    const-string v1, "CENTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_a

    const-string v1, "CENTER_VERTICAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    and-int/lit8 v1, p0, 0x1

    if-ne v1, v4, :cond_b

    const-string v1, "CENTER_HORIZONTAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "NO GRAVITY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    const/high16 v1, 0x10000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_d

    const-string v1, "DISPLAY_CLIP_VERTICAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d
    const/high16 v1, 0x1000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_e

    const-string v1, "DISPLAY_CLIP_HORIZONTAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
