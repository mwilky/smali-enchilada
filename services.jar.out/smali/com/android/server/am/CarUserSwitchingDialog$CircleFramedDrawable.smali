.class Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CarUserSwitchingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CarUserSwitchingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CircleFramedDrawable"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private final mSize:I

.field private mSrcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 12

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    iget v0, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    iget v1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v6, v2, v3

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v4, v5, v6, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/RectF;

    iget v6, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    const/high16 v7, 0x43b40000    # 360.0f

    invoke-virtual {v6, v5, v8, v7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v7, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v10, -0x1000000

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v7, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v7, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v7, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v7, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mScale:F

    new-instance v7, Landroid/graphics/Rect;

    iget v10, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    iget v11, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    invoke-direct {v7, v9, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/RectF;

    iget v9, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float v10, v10

    invoke-direct {v7, v8, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    return-void
.end method

.method public static getInstance(Landroid/graphics/Bitmap;F)Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;
    .locals 2

    new-instance v0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;

    float-to-int v1, p1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mScale:F

    iget v1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
