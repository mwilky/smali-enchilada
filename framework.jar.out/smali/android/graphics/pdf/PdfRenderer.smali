.class public final Landroid/graphics/pdf/PdfRenderer;
.super Ljava/lang/Object;
.source "PdfRenderer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/PdfRenderer$Page;,
        Landroid/graphics/pdf/PdfRenderer$RenderMode;
    }
.end annotation


# static fields
.field static final sPdfiumLock:Ljava/lang/Object;


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

.field private mInput:Landroid/os/ParcelFileDescriptor;

.field private mNativeDocument:J

.field private final mPageCount:I

.field private final mTempPoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mTempPoint:Landroid/graphics/Point;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->SEEK_SET:I

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    nop

    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    sget-object v4, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v5, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    invoke-static {v5, v0, v1}, Landroid/graphics/pdf/PdfRenderer;->nativeCreate(IJ)J

    move-result-wide v5

    iput-wide v5, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-wide v5, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    invoke-static {v5, v6}, Landroid/graphics/pdf/PdfRenderer;->nativeGetPageCount(J)I

    move-result v5

    iput v5, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v2, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v3, "close"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v5

    :try_start_4
    iget-wide v6, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    invoke-static {v6, v7}, Landroid/graphics/pdf/PdfRenderer;->nativeClose(J)V

    iput-wide v2, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    throw v5

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "file descriptor not seekable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "input cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$200(Landroid/graphics/pdf/PdfRenderer;)J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    return-wide v0
.end method

.method static synthetic access$300(JILandroid/graphics/Point;)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/pdf/PdfRenderer;->nativeOpenPageAndGetSize(JILandroid/graphics/Point;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(JJLandroid/graphics/Bitmap;IIIIJI)V
    .locals 0

    invoke-static/range {p0 .. p11}, Landroid/graphics/pdf/PdfRenderer;->nativeRenderPage(JJLandroid/graphics/Bitmap;IIIIJI)V

    return-void
.end method

.method static synthetic access$500(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/pdf/PdfRenderer;->nativeClosePage(J)V

    return-void
.end method

.method static synthetic access$602(Landroid/graphics/pdf/PdfRenderer;Landroid/graphics/pdf/PdfRenderer$Page;)Landroid/graphics/pdf/PdfRenderer$Page;
    .locals 0

    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    return-object p1
.end method

.method private doClose()V
    .locals 6

    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V

    iput-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    :cond_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    invoke-static {v2, v3}, Landroid/graphics/pdf/PdfRenderer;->nativeClose(J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-wide v4, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iput-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    :cond_2
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    return-void
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeClosePage(J)V
.end method

.method private static native nativeCreate(IJ)J
.end method

.method private static native nativeGetPageCount(J)I
.end method

.method private static native nativeOpenPageAndGetSize(JILandroid/graphics/Point;)J
.end method

.method private static native nativeRenderPage(JJLandroid/graphics/Bitmap;IIIIJI)V
.end method

.method private static native nativeScaleForPrinting(J)Z
.end method

.method private throwIfClosed()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfPageNotInDocument(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid page index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfPageOpened()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current page not closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageOpened()V

    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->doClose()V

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
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->doClose()V
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

.method public getPageCount()I
    .locals 1

    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    iget v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I

    return v0
.end method

.method public openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;
    .locals 2

    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageOpened()V

    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageNotInDocument(I)V

    new-instance v0, Landroid/graphics/pdf/PdfRenderer$Page;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/pdf/PdfRenderer$Page;-><init>(Landroid/graphics/pdf/PdfRenderer;ILandroid/graphics/pdf/PdfRenderer$1;)V

    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    return-object v0
.end method

.method public shouldScaleForPrinting()Z
    .locals 3

    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    invoke-static {v1, v2}, Landroid/graphics/pdf/PdfRenderer;->nativeScaleForPrinting(J)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
