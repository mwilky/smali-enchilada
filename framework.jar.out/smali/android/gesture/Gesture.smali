.class public Landroid/gesture/Gesture;
.super Ljava/lang/Object;
.source "Gesture.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final BITMAP_RENDERING_ANTIALIAS:Z = true

.field private static final BITMAP_RENDERING_DITHER:Z = true

.field private static final BITMAP_RENDERING_WIDTH:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/gesture/Gesture;",
            ">;"
        }
    .end annotation
.end field

.field private static final GESTURE_ID_BASE:J

.field private static final sGestureCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mBoundingBox:Landroid/graphics/RectF;

.field private mGestureID:J

.field private final mStrokes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GestureStroke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/gesture/Gesture;->GESTURE_ID_BASE:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/gesture/Gesture;->sGestureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/gesture/Gesture$1;

    invoke-direct {v0}, Landroid/gesture/Gesture$1;-><init>()V

    sput-object v0, Landroid/gesture/Gesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    sget-wide v0, Landroid/gesture/Gesture;->GESTURE_ID_BASE:J

    sget-object v2, Landroid/gesture/Gesture;->sGestureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/gesture/Gesture;->mGestureID:J

    return-void
.end method

.method static synthetic access$002(Landroid/gesture/Gesture;J)J
    .locals 0

    iput-wide p1, p0, Landroid/gesture/Gesture;->mGestureID:J

    return-wide p1
.end method

.method static deserialize(Ljava/io/DataInputStream;)Landroid/gesture/Gesture;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/gesture/Gesture;

    invoke-direct {v0}, Landroid/gesture/Gesture;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/gesture/Gesture;->mGestureID:J

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-static {p0}, Landroid/gesture/GestureStroke;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GestureStroke;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addStroke(Landroid/gesture/GestureStroke;)V
    .locals 2

    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget-object v1, p1, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    new-instance v0, Landroid/gesture/Gesture;

    invoke-direct {v0}, Landroid/gesture/Gesture;-><init>()V

    iget-object v1, v0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureStroke;

    iget-object v4, v0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/gesture/GestureStroke;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/GestureStroke;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBoundingBox()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getID()J
    .locals 2

    iget-wide v0, p0, Landroid/gesture/Gesture;->mGestureID:J

    return-wide v0
.end method

.method public getLength()F
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    int-to-float v4, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/GestureStroke;

    iget v5, v5, Landroid/gesture/GestureStroke;->length:F

    add-float/2addr v4, v5

    float-to-int v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    int-to-float v3, v0

    return v3
.end method

.method public getStrokes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GestureStroke;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStrokesCount()I
    .locals 1

    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method serialize(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-wide v2, p0, Landroid/gesture/Gesture;->mGestureID:J

    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureStroke;

    invoke-virtual {v3, p1}, Landroid/gesture/GestureStroke;->serialize(Ljava/io/DataOutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setID(J)V
    .locals 0

    iput-wide p1, p0, Landroid/gesture/Gesture;->mGestureID:J

    return-void
.end method

.method public toBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setDither(Z)V

    move/from16 v7, p4

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v8, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/gesture/Gesture;->toPath()Landroid/graphics/Path;

    move-result-object v9

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v9, v10, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    const/4 v6, 0x2

    mul-int v11, v6, v2

    sub-int v11, v0, v11

    int-to-float v11, v11

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float/2addr v11, v12

    mul-int/2addr v6, v2

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v12

    div-float/2addr v6, v12

    cmpl-float v12, v11, v6

    if-lez v12, :cond_0

    move v12, v6

    goto :goto_0

    :cond_0
    move v12, v11

    :goto_0
    div-float v13, v8, v12

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v13, v10, Landroid/graphics/RectF;->left:F

    neg-float v13, v13

    int-to-float v14, v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v15

    mul-float/2addr v15, v12

    sub-float/2addr v14, v15

    div-float/2addr v14, v8

    add-float/2addr v13, v14

    iget v14, v10, Landroid/graphics/RectF;->top:F

    neg-float v14, v14

    int-to-float v15, v1

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v16

    mul-float v16, v16, v12

    sub-float v15, v15, v16

    div-float/2addr v15, v8

    add-float/2addr v14, v15

    invoke-virtual {v9, v13, v14}, Landroid/graphics/Path;->offset(FF)V

    int-to-float v8, v2

    int-to-float v13, v2

    invoke-virtual {v4, v8, v13}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4, v12, v12}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v4, v9, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v3
.end method

.method public toBitmap(IIIII)Landroid/graphics/Bitmap;
    .locals 9

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v2, p3

    int-to-float v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v2, p5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/gesture/GestureStroke;

    const/4 v7, 0x2

    mul-int v8, v7, p3

    sub-int v8, p1, v8

    int-to-float v8, v8

    mul-int/2addr v7, p3

    sub-int v7, p2, v7

    int-to-float v7, v7

    invoke-virtual {v6, v8, v7, p4}, Landroid/gesture/GestureStroke;->toPath(FFI)Landroid/graphics/Path;

    move-result-object v6

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toPath()Landroid/graphics/Path;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/gesture/Gesture;->toPath(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public toPath(IIII)Landroid/graphics/Path;
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/gesture/Gesture;->toPath(Landroid/graphics/Path;IIII)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public toPath(Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureStroke;

    invoke-virtual {v3}, Landroid/gesture/GestureStroke;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public toPath(Landroid/graphics/Path;IIII)Landroid/graphics/Path;
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureStroke;

    const/4 v4, 0x2

    mul-int v5, v4, p4

    sub-int v5, p2, v5

    int-to-float v5, v5

    mul-int/2addr v4, p4

    sub-int v4, p3, v4

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4, p5}, Landroid/gesture/GestureStroke;->toPath(FFI)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    iget-wide v0, p0, Landroid/gesture/Gesture;->mGestureID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const v2, 0x8000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/gesture/Gesture;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v1}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "Gestures"

    const-string v5, "Error writing Gesture to parcel:"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    return-void

    :goto_2
    invoke-static {v2}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v1}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    throw v3
.end method
