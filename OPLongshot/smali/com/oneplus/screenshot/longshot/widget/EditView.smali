.class public Lcom/oneplus/screenshot/longshot/widget/EditView;
.super Lcom/oneplus/screenshot/longshot/widget/ImageView;
.source "EditView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EditView"

.field private static final TOUCH_MODE_EDIT:I = 0x3


# instance fields
.field private mCutBottom:I

.field private mCutPosition:I

.field private mDimDrawable:Landroid/graphics/drawable/Drawable;

.field private mDragDrawable:Landroid/graphics/drawable/Drawable;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutPosition:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutBottom:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mTouchSlop:I

    sget-object v1, Lcom/oneplus/screenshot/R$styleable;->EditView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mTouchSlop:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/widget/EditView;)Landroid/view/ViewParent;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/widget/EditView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/EditView;->trackMotionDrag(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/widget/EditView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/screenshot/longshot/widget/EditView;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/widget/EditView;->hitDrag(II)Z

    move-result v0

    return v0
.end method

.method private hitDrag(II)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mTouchSlop:I

    neg-int v1, v1

    iget v2, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mTouchSlop:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method private trackMotionDrag(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getCutPosition()I

    move-result v0

    add-int/2addr p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutBottom:I

    if-le p1, v0, :cond_1

    iget p1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutBottom:I

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/EditView;->setCutPosition(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected createGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    new-instance v0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;-><init>(Lcom/oneplus/screenshot/longshot/widget/EditView;)V

    return-object v0
.end method

.method public getCutPosition()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutPosition:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v2, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getCutPosition()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getPaddingRight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getPaddingBottom()I

    move-result v6

    iget-object v7, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget-object v8, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getWidth()I

    move-result v9

    sub-int/2addr v9, v3

    sub-int/2addr v9, v5

    sub-int/2addr v9, v7

    shr-int/lit8 v9, v9, 0x1

    shr-int/lit8 v10, v8, 0x1

    sub-int v10, v2, v10

    add-int v11, v9, v7

    add-int v12, v10, v8

    move v13, v3

    move v14, v2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getWidth()I

    move-result v15

    sub-int/2addr v15, v5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getHeight()I

    move-result v16

    move/from16 v17, v2

    sub-int v2, v16, v6

    move/from16 v18, v3

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v13, v14, v15, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutBottom:I

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutBottom:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mNavBarHeight:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->setCutPosition(I)V

    return-void
.end method

.method public setCutPosition(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutPosition:I

    return-void
.end method
