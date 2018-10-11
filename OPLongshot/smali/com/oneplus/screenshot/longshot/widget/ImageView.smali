.class public Lcom/oneplus/screenshot/longshot/widget/ImageView;
.super Landroid/view/View;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;,
        Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.ImageView"

.field private static final TOUCH_MODE_FLING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I = 0x0

.field private static final TOUCH_MODE_SCROLL:I = 0x1


# instance fields
.field private mAnimationDuration:I

.field private mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomY:I

.field private mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

.field private mFlingRunnable:Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageHeight:I

.field protected mIsFirstScroll:Z

.field protected mNavBarHeight:I

.field private mOffsetY:I

.field protected mTouchMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mTouchMode:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mNavBarHeight:I

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mIsFirstScroll:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;-><init>(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mFlingRunnable:Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;

    new-instance v1, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    invoke-direct {v1}, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;-><init>()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    const/16 v1, 0x190

    iput v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mAnimationDuration:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mImageHeight:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mOffsetY:I

    sget-object v1, Lcom/oneplus/screenshot/R$styleable;->ImageView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->setEnabled(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->setImagePadding(I)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->createGestureListener()Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/widget/ImageView;)Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mFlingRunnable:Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/widget/ImageView;)Landroid/view/ViewParent;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/screenshot/longshot/widget/ImageView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->trackMotionScroll(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/screenshot/longshot/widget/ImageView;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->scrollIntoSlots()V

    return-void
.end method

.method private endFlingAtEdge(I)I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mFlingRunnable:Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->access$000(Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;Z)V

    return p1
.end method

.method private initDrawMatrix()V
    .locals 12

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->getPadding()I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    mul-int/lit8 v7, v4, 0x2

    sub-int v7, v5, v7

    mul-int/lit8 v8, v4, 0x2

    sub-int v8, v6, v8

    mul-int v9, v5, v8

    mul-int v10, v7, v6

    const/high16 v11, 0x3f000000    # 0.5f

    if-le v9, v10, :cond_0

    int-to-float v9, v8

    int-to-float v10, v6

    div-float/2addr v9, v10

    int-to-float v1, v7

    int-to-float v10, v5

    mul-float/2addr v10, v9

    sub-float/2addr v1, v10

    mul-float v2, v1, v11

    goto :goto_0

    :cond_0
    int-to-float v9, v7

    int-to-float v10, v5

    div-float/2addr v9, v10

    int-to-float v1, v8

    int-to-float v10, v6

    mul-float/2addr v10, v9

    sub-float/2addr v1, v10

    mul-float v3, v1, v11

    :goto_0
    invoke-virtual {v0, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float v1, v2, v11

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v11, v3

    float-to-int v10, v11

    int-to-float v10, v10

    invoke-virtual {v0, v1, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 0

    return-void
.end method

.method private trackMotionScroll(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getOffsetY()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    if-gez p1, :cond_0

    invoke-direct {p0, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->endFlingAtEdge(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    if-le p1, v0, :cond_3

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->endFlingAtEdge(I)I

    move-result p1

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    invoke-direct {p0, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->endFlingAtEdge(I)I

    move-result p1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    if-ge p1, v0, :cond_3

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->endFlingAtEdge(I)I

    move-result p1

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->setOffsetY(I)V

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected createGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    new-instance v0, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;-><init>(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V

    return-object v0
.end method

.method public getNavBarHeight()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mNavBarHeight:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mOffsetY:I

    return v0
.end method

.method protected onCancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->onUp()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth(Ljava/util/List;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageConfig(Ljava/util/List;)Landroid/graphics/Bitmap$Config;

    move-result-object v8

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->getPadding()I

    move-result v1

    iget v2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getTop()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getBottom()I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_0
    int-to-float v2, v1

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getOffsetY()I

    move-result v4

    add-int/2addr v3, v4

    sget v5, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->DIV_HEIGHT:I

    move v4, v0

    move-object v6, p1

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->drawBitmaps(Ljava/util/List;IIIILandroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mImageHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mImageHeight:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getMeasuredWidthAndState()I

    move-result v0

    iget v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mImageHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->setMeasuredDimension(II)V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->initDrawMatrix()V

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mImageHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->setOffsetY(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->onUp()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->onCancel()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onUp()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mTouchMode:I

    return-void
.end method

.method public setBitmaps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mImageHeight:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setImagePadding(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->setPadding(I)V

    return-void
.end method

.method public setNavBarHeight(I)V
    .locals 5

    iput p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mNavBarHeight:I

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mNavBarHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mPaddingLeft:I

    iget v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mPaddingTop:I

    iget v2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mPaddingRight:I

    iget v3, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mPaddingBottom:I

    iget v4, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mNavBarHeight:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setOffsetY(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mOffsetY:I

    return-void
.end method
