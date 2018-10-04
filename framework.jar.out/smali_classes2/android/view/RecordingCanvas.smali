.class public Landroid/view/RecordingCanvas;
.super Landroid/graphics/Canvas;
.source "RecordingCanvas.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/Canvas;-><init>(J)V

    return-void
.end method

.method private static native nDrawArc(JFFFFFFZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmap(JLandroid/graphics/Bitmap;FFJIII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmap(J[IIIFFIIZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawCircle(JFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawColor(JII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawLine(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawLines(J[FIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawNinePatch(JJJFFFFJII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawOval(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawPaint(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawPath(JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawPoint(JFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawPoints(J[FIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawRect(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawRegion(JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawRoundRect(JFFFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawText(JLjava/lang/String;IIFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawText(J[CIIFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawTextOnPath(JLjava/lang/String;JFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawTextOnPath(J[CIIJFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawTextRun(J[CIIIIFFZJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawVertices(JII[FI[FI[II[SIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public final drawARGB(IIII)V
    .locals 1

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/RecordingCanvas;->drawColor(I)V

    return-void
.end method

.method public final drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 12

    move-object v0, p0

    iget-wide v1, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v11}, Landroid/view/RecordingCanvas;->nDrawArc(JFFFFFFZJ)V

    return-void
.end method

.method public final drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 9

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Landroid/view/RecordingCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 10

    invoke-virtual {p0, p1}, Landroid/view/RecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    :goto_0
    move-wide v5, v2

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    :goto_1
    iget v7, p0, Landroid/view/RecordingCanvas;->mDensity:I

    iget v8, p0, Landroid/view/RecordingCanvas;->mScreenDensity:I

    iget v9, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v9}, Landroid/view/RecordingCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFJIII)V

    return-void
.end method

.method public final drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 7

    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    move-object v2, p1

    invoke-static/range {v0 .. v6}, Landroid/view/RecordingCanvas;->nDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V

    return-void
.end method

.method public final drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p1}, Landroid/view/RecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    if-nez p4, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    move-wide/from16 v17, v4

    goto :goto_1

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    goto :goto_0

    :goto_1
    if-nez v1, :cond_1

    const/4 v4, 0x0

    move v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    :goto_2
    move v15, v6

    goto :goto_3

    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :goto_3
    move v14, v7

    iget-wide v6, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    int-to-float v9, v4

    int-to-float v10, v5

    int-to-float v11, v15

    int-to-float v12, v14

    iget v8, v2, Landroid/graphics/Rect;->left:I

    int-to-float v13, v8

    iget v8, v2, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v1, v2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v2, v0, Landroid/view/RecordingCanvas;->mScreenDensity:I

    move-object/from16 v0, p1

    move/from16 v21, v4

    iget v4, v0, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v16, v8

    move-object v8, v0

    move/from16 v22, v14

    move/from16 v14, v16

    move/from16 v23, v15

    move v15, v1

    move/from16 v16, v3

    move/from16 v19, v2

    move/from16 v20, v4

    invoke-static/range {v6 .. v20}, Landroid/view/RecordingCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    return-void

    :cond_2
    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public final drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p1}, Landroid/view/RecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    if-nez p4, :cond_0

    const-wide/16 v3, 0x0

    :goto_0
    move-wide/from16 v16, v3

    goto :goto_1

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    goto :goto_0

    :goto_1
    if-nez v1, :cond_1

    const/4 v3, 0x0

    move v4, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move/from16 v20, v5

    :goto_2
    move v11, v6

    goto :goto_3

    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    move/from16 v20, v4

    move v4, v5

    goto :goto_2

    :goto_3
    iget-wide v5, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    iget v12, v2, Landroid/graphics/RectF;->left:F

    iget v13, v2, Landroid/graphics/RectF;->top:F

    iget v14, v2, Landroid/graphics/RectF;->right:F

    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    iget v9, v0, Landroid/view/RecordingCanvas;->mScreenDensity:I

    move-object/from16 v8, p1

    iget v7, v8, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v19, v7

    move-object v7, v8

    move v8, v3

    move/from16 v18, v9

    move v9, v4

    move v15, v10

    move/from16 v10, v20

    invoke-static/range {v5 .. v19}, Landroid/view/RecordingCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    return-void

    :cond_2
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
.end method

.method public final drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move/from16 v12, p6

    if-ltz v12, :cond_6

    if-ltz p7, :cond_5

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v12, :cond_4

    add-int/lit8 v0, p7, -0x1

    mul-int v0, v0, p3

    add-int v13, p2, v0

    move-object/from16 v10, p1

    array-length v11, v10

    if-ltz p2, :cond_3

    add-int v0, p2, v12

    if-gt v0, v11, :cond_3

    if-ltz v13, :cond_3

    add-int v0, v13, v12

    if-gt v0, v11, :cond_3

    if-eqz v12, :cond_2

    if-nez p7, :cond_0

    move/from16 v16, v11

    goto :goto_2

    :cond_0
    move-object/from16 v9, p0

    iget-wide v0, v9, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    if-eqz p9, :cond_1

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    :goto_0
    move-wide v14, v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    :goto_1
    move-object v2, v10

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move v7, v12

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v16, v11

    move-wide v10, v14

    invoke-static/range {v0 .. v11}, Landroid/view/RecordingCanvas;->nDrawBitmap(J[IIIFFIIZJ)V

    return-void

    :cond_2
    move/from16 v16, v11

    :goto_2
    return-void

    :cond_3
    move/from16 v16, v11

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abs(stride) must be >= width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v11, p5

    int-to-float v6, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/view/RecordingCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 17

    move/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    or-int v0, p2, p3

    or-int/2addr v0, v11

    or-int/2addr v0, v13

    if-ltz v0, :cond_4

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p3, 0x1

    mul-int v9, v0, v1

    move-object/from16 v10, p4

    array-length v0, v10

    mul-int/lit8 v1, v9, 0x2

    invoke-static {v0, v11, v1}, Landroid/view/RecordingCanvas;->checkRange(III)V

    if-eqz v12, :cond_1

    array-length v0, v12

    invoke-static {v0, v13, v9}, Landroid/view/RecordingCanvas;->checkRange(III)V

    :cond_1
    move-object/from16 v8, p0

    iget-wide v0, v8, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    if-eqz p8, :cond_2

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    :goto_0
    move-wide v14, v2

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0

    :goto_1
    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v5, v10

    move v6, v11

    move-object v7, v12

    move v8, v13

    move/from16 v16, v9

    move-wide v9, v14

    invoke-static/range {v0 .. v10}, Landroid/view/RecordingCanvas;->nDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V

    return-void

    :cond_3
    :goto_2
    return-void

    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 7

    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/view/RecordingCanvas;->nDrawCircle(JFFFJ)V

    return-void
.end method

.method public final drawColor(I)V
    .locals 3

    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    iget v2, v2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/view/RecordingCanvas;->nDrawColor(JII)V

    return-void
.end method

.method public final drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 3

    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    iget v2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/view/RecordingCanvas;->nDrawColor(JII)V

    return-void
.end method

.method public final drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 8

    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/view/RecordingCanvas;->nDrawLine(JFFFFJ)V

    return-void
.end method

.method public final drawLines([FIILandroid/graphics/Paint;)V
    .locals 7

    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/view/RecordingCanvas;->nDrawLines(J[FIIJ)V

    return-void
.end method

.method public final drawLines([FLandroid/graphics/Paint;)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/view/RecordingCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 8

    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/view/RecordingCanvas;->nDrawOval(JFFFFJ)V

    return-void
.end method

.method public final drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 6

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/RecordingCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final drawPaint(Landroid/graphics/Paint;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/RecordingCanvas;->nDrawPaint(JJ)V

    return-void
.end method

.method public final drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/RecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    if-nez p3, :cond_0

    const-wide/16 v3, 0x0

    :goto_0
    move-wide v15, v3

    goto :goto_1

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    goto :goto_0

    :goto_1
    iget-wide v5, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    move-object/from16 v3, p1

    iget-wide v9, v3, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v11, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v13, v4

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v4

    iget v4, v0, Landroid/view/RecordingCanvas;->mDensity:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v18

    move/from16 v17, v4

    invoke-static/range {v5 .. v18}, Landroid/view/RecordingCanvas;->nDrawNinePatch(JJJFFFFJII)V

    return-void
.end method

.method public final drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/RecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    if-nez p3, :cond_0

    const-wide/16 v3, 0x0

    :goto_0
    move-wide v15, v3

    goto :goto_1

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    goto :goto_0

    :goto_1
    iget-wide v5, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    move-object/from16 v3, p1

    iget-wide v9, v3, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v12, v1, Landroid/graphics/RectF;->top:F

    iget v13, v1, Landroid/graphics/RectF;->right:F

    iget v14, v1, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Landroid/view/RecordingCanvas;->mDensity:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v18

    move/from16 v17, v4

    invoke-static/range {v5 .. v18}, Landroid/view/RecordingCanvas;->nDrawNinePatch(JJJFFFFJII)V

    return-void
.end method

.method public final drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 13

    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    iget-wide v3, v0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Landroid/view/RecordingCanvas;->nDrawRegion(JJJ)V

    goto :goto_0

    :cond_0
    iget-wide v7, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v9

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    invoke-static/range {v7 .. v12}, Landroid/view/RecordingCanvas;->nDrawPath(JJJ)V

    :goto_0
    return-void
.end method

.method public final drawPicture(Landroid/graphics/Picture;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    invoke-virtual {p0}, Landroid/view/RecordingCanvas;->save()I

    move-result v0

    invoke-virtual {p1, p0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v0}, Landroid/view/RecordingCanvas;->restoreToCount(I)V

    return-void
.end method

.method public final drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/RecordingCanvas;->save()I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/view/RecordingCanvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/RecordingCanvas;->scale(FF)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/RecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    invoke-virtual {p0}, Landroid/view/RecordingCanvas;->restore()V

    return-void
.end method

.method public final drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/RecordingCanvas;->save()I

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/view/RecordingCanvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/RecordingCanvas;->scale(FF)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/RecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    invoke-virtual {p0}, Landroid/view/RecordingCanvas;->restore()V

    return-void
.end method

.method public final drawPoint(FFLandroid/graphics/Paint;)V
    .locals 6

    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/view/RecordingCanvas;->nDrawPoint(JFFJ)V

    return-void
.end method

.method public final drawPoints([FIILandroid/graphics/Paint;)V
    .locals 7

    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/view/RecordingCanvas;->nDrawPoints(J[FIIJ)V

    return-void
.end method

.method public final drawPoints([FLandroid/graphics/Paint;)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/view/RecordingCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/RecordingCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p2, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v3, p2, v0

    const/4 v4, 0x1

    mul-int/lit8 v1, v0, 0x2

    aget v5, p4, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v6, p4, v1

    move-object v1, p0

    move-object v2, p1

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/view/RecordingCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final drawRGB(III)V
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/RecordingCanvas;->drawColor(I)V

    return-void
.end method

.method public final drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 8

    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/view/RecordingCanvas;->nDrawRect(JFFFFJ)V

    return-void
.end method

.method public final drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 7

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/view/RecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 8

    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Landroid/view/RecordingCanvas;->nDrawRect(JFFFFJ)V

    return-void
.end method

.method public final drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 11

    move-object v0, p0

    iget-wide v1, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v1 .. v10}, Landroid/view/RecordingCanvas;->nDrawRoundRect(JFFFFFFJ)V

    return-void
.end method

.method public final drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 8

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/view/RecordingCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v15, p2

    move/from16 v14, p3

    move-object/from16 v13, p6

    or-int v0, v15, v14

    sub-int v1, v14, v15

    or-int/2addr v0, v1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v14

    or-int/2addr v0, v1

    if-ltz v0, :cond_3

    instance-of v0, v8, Ljava/lang/String;

    if-nez v0, :cond_2

    instance-of v0, v8, Landroid/text/SpannedString;

    if-nez v0, :cond_2

    instance-of v0, v8, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, v8, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_1

    move-object v0, v8

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object v1, v7

    move v2, v15

    move v3, v14

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v13

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    sub-int v0, v14, v15

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v8, v15, v14, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    iget-wide v1, v7, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    const/16 v19, 0x0

    sub-int v20, v14, v15

    iget v3, v13, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v24

    move-wide/from16 v16, v1

    move-object/from16 v18, v0

    move/from16 v21, p4

    move/from16 v22, p5

    move/from16 v23, v3

    invoke-static/range {v16 .. v25}, Landroid/view/RecordingCanvas;->nDrawText(J[CIIFFIJ)V

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-wide v9, v7, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget v0, v13, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v17

    move v12, v15

    move v13, v14

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, v0

    invoke-static/range {v9 .. v18}, Landroid/view/RecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    :goto_1
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 10

    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v7, p4, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    const/4 v3, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v9}, Landroid/view/RecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    return-void
.end method

.method public final drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 12

    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    move-object v10, p0

    iget-wide v0, v10, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v11, p6

    iget v7, v11, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v9}, Landroid/view/RecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    return-void

    :cond_0
    move-object v10, p0

    move-object/from16 v11, p6

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 13

    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    move-object v10, p1

    array-length v1, v10

    sub-int/2addr v1, p2

    sub-int v1, v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    move-object v11, p0

    iget-wide v0, v11, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v12, p6

    iget v7, v12, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    move-object v2, v10

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v9}, Landroid/view/RecordingCanvas;->nDrawText(J[CIIFFIJ)V

    return-void

    :cond_0
    move-object v11, p0

    move-object/from16 v12, p6

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p0

    iget-wide v1, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v4

    move-object/from16 v11, p5

    iget v8, v11, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    move-object v3, p1

    move v6, p3

    move/from16 v7, p4

    invoke-static/range {v1 .. v10}, Landroid/view/RecordingCanvas;->nDrawTextOnPath(JLjava/lang/String;JFFIJ)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object/from16 v11, p5

    :goto_0
    return-void
.end method

.method public final drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 16

    if-ltz p2, :cond_1

    add-int v0, p2, p3

    move-object/from16 v12, p1

    array-length v1, v12

    if-gt v0, v1, :cond_0

    move-object/from16 v13, p0

    iget-wide v0, v13, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v5

    move-object/from16 v10, p7

    iget v9, v10, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v14

    move-object v2, v12

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide v10, v14

    invoke-static/range {v0 .. v11}, Landroid/view/RecordingCanvas;->nDrawTextOnPath(J[CIIJFFIJ)V

    return-void

    :cond_0
    move-object/from16 v13, p0

    goto :goto_0

    :cond_1
    move-object/from16 v13, p0

    move-object/from16 v12, p1

    :goto_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 38

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v15, p2

    move/from16 v14, p3

    move/from16 v12, p4

    move/from16 v13, p5

    if-eqz v11, :cond_6

    if-eqz p9, :cond_5

    or-int v0, v15, v14

    or-int/2addr v0, v12

    or-int/2addr v0, v13

    sub-int v1, v15, v12

    or-int/2addr v0, v1

    sub-int v1, v14, v15

    or-int/2addr v0, v1

    sub-int v1, v13, v14

    or-int/2addr v0, v1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v13

    or-int/2addr v0, v1

    if-ltz v0, :cond_4

    instance-of v0, v11, Ljava/lang/String;

    if-nez v0, :cond_3

    instance-of v0, v11, Landroid/text/SpannedString;

    if-nez v0, :cond_3

    instance-of v0, v11, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v0, v11, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_1

    move-object v0, v11

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object v1, v10

    move v2, v15

    move v3, v14

    move v4, v12

    move v5, v13

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    sub-int v0, v13, v12

    sub-int v1, v14, v15

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v11, v12, v13, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    const-wide/16 v3, 0x0

    instance-of v5, v11, Landroid/text/PrecomputedText;

    if-eqz v5, :cond_2

    move-object v5, v11

    check-cast v5, Landroid/text/PrecomputedText;

    invoke-virtual {v5, v15}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v7

    if-gt v14, v7, :cond_2

    invoke-virtual {v5, v6}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/MeasuredParagraph;->getNativePtr()J

    move-result-wide v3

    :cond_2
    iget-wide v5, v10, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    sub-int v27, v15, v12

    const/16 v29, 0x0

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v34

    move-wide/from16 v24, v5

    move-object/from16 v26, v2

    move/from16 v28, v1

    move/from16 v30, v0

    move/from16 v31, p6

    move/from16 v32, p7

    move/from16 v33, p8

    move-wide/from16 v36, v3

    invoke-static/range {v24 .. v37}, Landroid/view/RecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-wide v0, v10, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v22

    move-wide v12, v0

    move-object v14, v2

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p5

    move/from16 v19, p6

    move/from16 v20, p7

    move/from16 v21, p8

    invoke-static/range {v12 .. v23}, Landroid/view/RecordingCanvas;->nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V

    :goto_1
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "paint is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 17

    move-object/from16 v14, p1

    if-eqz v14, :cond_2

    if-eqz p9, :cond_1

    or-int v0, p2, p3

    or-int v0, v0, p4

    or-int v0, v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    add-int v1, p4, p5

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    array-length v1, v14

    add-int v2, p4, p5

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    move-object/from16 v12, p0

    iget-wide v0, v12, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    const-wide/16 v15, 0x0

    move-object v2, v14

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide v12, v15

    invoke-static/range {v0 .. v13}, Landroid/view/RecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "paint is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 18

    move/from16 v15, p2

    move-object/from16 v13, p5

    move-object/from16 v14, p7

    move-object/from16 v12, p9

    move-object/from16 v11, p3

    array-length v0, v11

    move/from16 v10, p4

    invoke-static {v0, v10, v15}, Landroid/view/RecordingCanvas;->checkRange(III)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/RecordingCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz v13, :cond_1

    array-length v0, v13

    move/from16 v9, p6

    invoke-static {v0, v9, v15}, Landroid/view/RecordingCanvas;->checkRange(III)V

    goto :goto_0

    :cond_1
    move/from16 v9, p6

    :goto_0
    if-eqz v14, :cond_2

    array-length v0, v14

    div-int/lit8 v1, v15, 0x2

    move/from16 v8, p8

    invoke-static {v0, v8, v1}, Landroid/view/RecordingCanvas;->checkRange(III)V

    goto :goto_1

    :cond_2
    move/from16 v8, p8

    :goto_1
    if-eqz v12, :cond_3

    array-length v0, v12

    move/from16 v7, p10

    move/from16 v6, p11

    invoke-static {v0, v7, v6}, Landroid/view/RecordingCanvas;->checkRange(III)V

    goto :goto_2

    :cond_3
    move/from16 v7, p10

    move/from16 v6, p11

    :goto_2
    move-object/from16 v5, p0

    iget-wide v0, v5, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v4, p1

    iget v2, v4, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    invoke-virtual/range {p12 .. p12}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    move v3, v15

    move-object v4, v11

    move v5, v10

    move-object v6, v13

    move v7, v9

    move-object v8, v14

    move/from16 v9, p8

    move-object v10, v12

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, v16

    invoke-static/range {v0 .. v14}, Landroid/view/RecordingCanvas;->nDrawVertices(JII[FI[FI[II[SIIJ)V

    return-void
.end method
