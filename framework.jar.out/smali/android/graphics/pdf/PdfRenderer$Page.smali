.class public final Landroid/graphics/pdf/PdfRenderer$Page;
.super Ljava/lang/Object;
.source "PdfRenderer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Page"
.end annotation


# static fields
.field public static final RENDER_MODE_FOR_DISPLAY:I = 0x1

.field public static final RENDER_MODE_FOR_PRINT:I = 0x2


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mHeight:I

.field private final mIndex:I

.field private mNativePage:J

.field private final mWidth:I

.field final synthetic this$0:Landroid/graphics/pdf/PdfRenderer;


# direct methods
.method private constructor <init>(Landroid/graphics/pdf/PdfRenderer;I)V
    .locals 4

    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->access$100(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/Point;

    move-result-object v0

    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->access$200(Landroid/graphics/pdf/PdfRenderer;)J

    move-result-wide v2

    invoke-static {v2, v3, p2, v0}, Landroid/graphics/pdf/PdfRenderer;->access$300(JILandroid/graphics/Point;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method synthetic constructor <init>(Landroid/graphics/pdf/PdfRenderer;ILandroid/graphics/pdf/PdfRenderer$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfRenderer$Page;-><init>(Landroid/graphics/pdf/PdfRenderer;I)V

    return-void
.end method

.method private doClose()V
    .locals 6

    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v4, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    invoke-static {v4, v5}, Landroid/graphics/pdf/PdfRenderer;->access$500(J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-wide v2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfRenderer;->access$602(Landroid/graphics/pdf/PdfRenderer;Landroid/graphics/pdf/PdfRenderer$Page;)Landroid/graphics/pdf/PdfRenderer$Page;

    return-void
.end method

.method private throwIfClosed()V
    .locals 4

    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfClosed()V

    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    return v0
.end method

.method public render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v15, p4

    iget-wide v3, v1, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_e

    const-string v3, "bitmap null"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_d

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "destBounds not in destination"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Matrix;->isAffine()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "transform not affine"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v15, v4, :cond_5

    if-ne v15, v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported render mode"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    :goto_2
    if-ne v15, v4, :cond_7

    if-eq v15, v3, :cond_6

    goto :goto_3

    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Only single render mode supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    :goto_3
    const/4 v3, 0x0

    if-eqz v2, :cond_8

    iget v4, v2, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :cond_8
    move v4, v3

    :goto_4
    move v12, v4

    if-eqz v2, :cond_9

    iget v3, v2, Landroid/graphics/Rect;->top:I

    nop

    :cond_9
    move v13, v3

    if-eqz v2, :cond_a

    iget v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_5

    :cond_a
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    :goto_5
    move/from16 v16, v3

    if-eqz v2, :cond_b

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :cond_b
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    :goto_6
    move/from16 v17, v3

    if-nez p3, :cond_c

    sub-int v3, v16, v12

    sub-int v4, v17, v13

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    move-object v0, v5

    int-to-float v5, v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v5, v12

    int-to-float v6, v13

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object v11, v0

    goto :goto_7

    :cond_c
    move-object/from16 v11, p3

    :goto_7
    iget-wide v9, v11, Landroid/graphics/Matrix;->native_instance:J

    sget-object v18, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v18

    :try_start_0
    iget-object v0, v1, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->access$200(Landroid/graphics/pdf/PdfRenderer;)J

    move-result-wide v3

    iget-wide v5, v1, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v14

    move v8, v12

    move-wide/from16 v19, v9

    move v9, v13

    move/from16 v10, v16

    move-object/from16 v21, v11

    move/from16 v11, v17

    move/from16 v22, v12

    move/from16 v23, v13

    move-wide/from16 v12, v19

    move-object/from16 v24, v14

    move v14, v15

    :try_start_1
    invoke-static/range {v3 .. v14}, Landroid/graphics/pdf/PdfRenderer;->access$400(JJLandroid/graphics/Bitmap;IIIIJI)V

    monitor-exit v18

    return-void

    :catchall_0
    move-exception v0

    move-wide/from16 v19, v9

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move-object/from16 v24, v14

    :goto_8
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_d
    move-object/from16 v24, v14

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported pixel format"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_e
    move-object/from16 v4, p1

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
.end method
