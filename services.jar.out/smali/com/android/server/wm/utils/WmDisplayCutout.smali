.class public Lcom/android/server/wm/utils/WmDisplayCutout;
.super Ljava/lang/Object;
.source "WmDisplayCutout.java"


# static fields
.field public static final NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;


# instance fields
.field private final mFrameSize:Landroid/util/Size;

.field private final mInner:Landroid/view/DisplayCutout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/wm/utils/WmDisplayCutout;

    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/utils/WmDisplayCutout;-><init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V

    sput-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-void
.end method

.method public constructor <init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    iput-object p2, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    return-void
.end method

.method private static computeSafeInsets(Landroid/util/Size;Landroid/view/DisplayCutout;)Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v2, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/DisplayCutout;->replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {p0, v0, v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->findInsetForSide(Landroid/util/Size;Ljava/util/List;I)I

    move-result v1

    const/16 v3, 0x50

    invoke-static {p0, v0, v3}, Lcom/android/server/wm/utils/WmDisplayCutout;->findInsetForSide(Landroid/util/Size;Ljava/util/List;I)I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/DisplayCutout;->replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->findInsetForSide(Landroid/util/Size;Ljava/util/List;I)I

    move-result v1

    const/4 v3, 0x5

    invoke-static {p0, v0, v3}, Lcom/android/server/wm/utils/WmDisplayCutout;->findInsetForSide(Landroid/util/Size;Ljava/util/List;I)I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not implemented: display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cutout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;
    .locals 4

    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-eq p0, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->isBoundsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0, p0}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/util/Size;Landroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {p0, v1}, Landroid/view/DisplayCutout;->replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/server/wm/utils/WmDisplayCutout;-><init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V

    return-object v2

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object v0
.end method

.method private static findInsetForSide(Landroid/util/Size;Ljava/util/List;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    const/4 v4, 0x3

    if-eq p2, v4, :cond_3

    const/4 v4, 0x5

    if-eq p2, v4, :cond_2

    const/16 v4, 0x30

    if-eq p2, v4, :cond_1

    const/16 v4, 0x50

    if-ne p2, v4, :cond_0

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_4

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown gravity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_4

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_2
    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_4

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_3
    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-nez v4, :cond_4

    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method


# virtual methods
.method public calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/utils/WmDisplayCutout;->inset(IIII)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    return-object v0
.end method

.method public computeSafeInsets(II)Lcom/android/server/wm/utils/WmDisplayCutout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/server/wm/utils/WmDisplayCutout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/utils/WmDisplayCutout;

    iget-object v2, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    iget-object v3, v0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    iget-object v3, v0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getDisplayCutout()Landroid/view/DisplayCutout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public inset(IIII)Lcom/android/server/wm/utils/WmDisplayCutout;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/DisplayCutout;->inset(IIII)Landroid/view/DisplayCutout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    if-ne v1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/util/Size;

    iget-object v2, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    sub-int/2addr v2, p3

    iget-object v3, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v3, p2

    sub-int/2addr v3, p4

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    :goto_0
    new-instance v2, Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-direct {v2, v0, v1}, Lcom/android/server/wm/utils/WmDisplayCutout;-><init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V

    return-object v2
.end method
