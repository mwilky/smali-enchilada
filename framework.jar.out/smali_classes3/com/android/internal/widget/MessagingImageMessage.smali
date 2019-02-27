.class public Lcom/android/internal/widget/MessagingImageMessage;
.super Landroid/widget/ImageView;
.source "MessagingImageMessage.java"

# interfaces
.implements Lcom/android/internal/widget/MessagingMessage;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MessagingImageMessage"

.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Lcom/android/internal/widget/MessagingImageMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActualHeight:I

.field private mActualWidth:I

.field private mAspectRatio:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mExtraSpacing:I

.field private final mImageRounding:I

.field private mIsIsolated:Z

.field private final mIsolatedSize:I

.field private final mMaxImageHeight:I

.field private final mMinImageHeight:I

.field private final mPath:Landroid/graphics/Path;

.field private final mState:Lcom/android/internal/widget/MessagingMessageState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Landroid/util/Pools$SimplePool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MessagingImageMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/MessagingImageMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MessagingImageMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMinImageHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMaxImageHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageRounding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mExtraSpacing:I

    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMaxImageHeight:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setMaxHeight(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsolatedSize:I

    return-void
.end method

.method static createMessage(Lcom/android/internal/widget/MessagingLayout;Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingImageMessage;

    if-nez v1, :cond_0

    nop

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109009d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/internal/widget/MessagingImageMessage;

    sget-object v2, Lcom/android/internal/widget/MessagingLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingImageMessage;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/MessagingImageMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingImageMessage;->recycle()V

    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->createMessage(Lcom/android/internal/widget/MessagingLayout;Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    return-object v3

    :cond_1
    return-object v1
.end method

.method public static dropCache()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Landroid/util/Pools$SimplePool;

    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualHeight:I

    return v0
.end method

.method public getActualWidth()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualWidth:I

    return v0
.end method

.method public getConsumedLines()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getExtraSpacing()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mExtraSpacing:I

    return v0
.end method

.method public getMeasuredType()I
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getMeasuredHeight()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsolatedSize:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMinImageHeight:I

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-eq v0, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v4, :cond_2

    const/4 v2, 0x2

    return v2

    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-eq v0, v5, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method public getRoundedRectPath()Landroid/graphics/Path;
    .locals 12

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    sub-int v4, v1, v0

    iget v5, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageRounding:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageRounding:I

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-int v7, v3, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    int-to-float v9, v2

    add-float/2addr v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    int-to-float v9, v2

    int-to-float v10, v0

    add-float/2addr v10, v5

    int-to-float v11, v2

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    sub-float/2addr v8, v5

    int-to-float v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v9, v2

    int-to-float v10, v1

    int-to-float v11, v2

    add-float/2addr v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v9, v3

    sub-float/2addr v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v9, v3

    int-to-float v10, v1

    sub-float/2addr v10, v5

    int-to-float v11, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    add-float/2addr v8, v5

    int-to-float v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    int-to-float v9, v3

    int-to-float v10, v0

    int-to-float v11, v3

    sub-float/2addr v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    return-object v7
.end method

.method public getState()Lcom/android/internal/widget/MessagingMessageState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    return-object v0
.end method

.method public getStaticWidth()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getWidth()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getRoundedRectPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v1, v0

    iget v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int v4, v2, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getStaticWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setActualWidth(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setActualHeight(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/MessagingImageMessage;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/widget/MessagingMessage;->recycle()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public setActualHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualHeight:I

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->invalidate()V

    return-void
.end method

.method public setActualWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualWidth:I

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->invalidate()V

    return-void
.end method

.method public setIsolated(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    nop

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mExtraSpacing:I

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setMaxDisplayedLines(I)V
    .locals 0

    return-void
.end method

.method public setMessage(Landroid/app/Notification$MessagingStyle$Message;)Z
    .locals 5

    invoke-super {p0, p1}, Lcom/android/internal/widget/MessagingMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;)Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "MessagingImageMessage"

    const-string v4, "Drawable with 0 intrinsic height was returned"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iput-object v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v2

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MessagingImageMessage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
