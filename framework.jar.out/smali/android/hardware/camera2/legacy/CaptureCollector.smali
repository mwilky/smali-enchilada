.class public Landroid/hardware/camera2/legacy/CaptureCollector;
.super Ljava/lang/Object;
.source "CaptureCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FLAG_RECEIVED_ALL_JPEG:I = 0x3

.field private static final FLAG_RECEIVED_ALL_PREVIEW:I = 0xc

.field private static final FLAG_RECEIVED_JPEG:I = 0x1

.field private static final FLAG_RECEIVED_JPEG_TS:I = 0x2

.field private static final FLAG_RECEIVED_PREVIEW:I = 0x4

.field private static final FLAG_RECEIVED_PREVIEW_TS:I = 0x8

.field private static final MAX_JPEGS_IN_FLIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CaptureCollector"


# instance fields
.field private final mActiveRequests:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompletedRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field private mInFlight:I

.field private mInFlightPreviews:I

.field private final mIsEmpty:Ljava/util/concurrent/locks/Condition;

.field private final mJpegCaptureQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mJpegProduceQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mMaxInFlight:I

.field private final mNotFull:Ljava/util/concurrent/locks/Condition;

.field private final mPreviewCaptureQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewProduceQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewsEmpty:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(ILandroid/hardware/camera2/legacy/CameraDeviceState;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mCompletedRequests:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    iput p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mMaxInFlight:I

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mMaxInFlight:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mMaxInFlight:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mIsEmpty:Ljava/util/concurrent/locks/Condition;

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mNotFull:Ljava/util/concurrent/locks/Condition;

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewsEmpty:Ljava/util/concurrent/locks/Condition;

    iput-object p2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/legacy/CaptureCollector;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CaptureCollector;->onPreviewCompleted()V

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/CaptureCollector;->onRequestCompleted(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)V

    return-void
.end method

.method private onPreviewCompleted()V
    .locals 2

    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewsEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "More preview captures completed than requests queued."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onRequestCompleted(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)V
    .locals 3

    invoke-static {p1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$300(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mCompletedRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mIsEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "More captures completed than requests queued."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private removeRequestIfCompleted(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/util/MutableLong;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mCompletedRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    invoke-static {v2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$300(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$400(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)J

    move-result-wide v3

    iput-wide v3, p2, Landroid/util/MutableLong;->value:J

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mCompletedRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public failAll()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setPreviewFailed()V

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setJpegFailed()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public failNextJpeg()V
    .locals 5

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I

    move-result v3

    if-gtz v3, :cond_2

    :goto_0
    move-object v3, v1

    goto :goto_2

    :cond_2
    :goto_1
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_3

    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    invoke-virtual {v4, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setJpegFailed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public failNextPreview()V
    .locals 5

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I

    move-result v3

    if-gtz v3, :cond_2

    :goto_0
    move-object v3, v1

    goto :goto_2

    :cond_2
    :goto_1
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_3

    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    invoke-virtual {v4, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setPreviewFailed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public hasPendingPreviewCaptures()Z
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public jpegCaptured(J)Landroid/hardware/camera2/legacy/RequestHolder;
    .locals 4

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    if-nez v1, :cond_0

    const-string v2, "CaptureCollector"

    const-string/jumbo v3, "jpegCaptured called with no jpeg request on queue!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setJpegTimestamp(J)V

    invoke-static {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$300(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public jpegProduced()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/legacy/RequestHolder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    if-nez v1, :cond_0

    const-string v2, "CaptureCollector"

    const-string/jumbo v3, "jpegProduced called with no jpeg request on queue!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setJpegProduced()V

    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$300(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    move-result-object v3

    invoke-static {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$400(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public previewCaptured(J)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/legacy/RequestHolder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setPreviewTimestamp(J)V

    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$300(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    move-result-object v3

    invoke-static {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$400(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public previewProduced()Landroid/hardware/camera2/legacy/RequestHolder;
    .locals 4

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    if-nez v1, :cond_0

    const-string v2, "CaptureCollector"

    const-string/jumbo v3, "previewProduced called with no preview request on queue!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setPreviewProduced()V

    invoke-static {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$300(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public queueRequest(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;JLjava/util/concurrent/TimeUnit;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;-><init>(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;)V

    move-object v4, v0

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    iget-object v10, v1, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, v4, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    if-nez v0, :cond_1

    iget-boolean v0, v4, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v11, "Request must target at least one output surface!"

    invoke-direct {v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-boolean v0, v4, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    if-eqz v0, :cond_4

    :goto_1
    iget v0, v1, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_3

    cmp-long v0, v8, v12

    if-gtz v0, :cond_2

    nop

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v11

    :cond_2
    :try_start_1
    iget-object v0, v1, Landroid/hardware/camera2/legacy/CaptureCollector;->mIsEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, v8, v9}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v14

    move-wide v8, v14

    goto :goto_1

    :cond_3
    iget-object v0, v1, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-boolean v0, v4, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    const/4 v14, 0x1

    if-eqz v0, :cond_7

    :goto_2
    iget v0, v1, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    iget v15, v1, Landroid/hardware/camera2/legacy/CaptureCollector;->mMaxInFlight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v15, :cond_6

    cmp-long v0, v8, v12

    if-gtz v0, :cond_5

    nop

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v11

    :cond_5
    :try_start_2
    iget-object v0, v1, Landroid/hardware/camera2/legacy/CaptureCollector;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, v8, v9}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v15

    move-wide v8, v15

    goto :goto_2

    :cond_6
    iget-object v0, v1, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget v0, v1, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    add-int/2addr v0, v14

    iput v0, v1, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    :cond_7
    iget-object v0, v1, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget v0, v1, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    add-int/2addr v0, v14

    iput v0, v1, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v14

    :catchall_0
    move-exception v0

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    :try_start_0
    iget v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mIsEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public waitForPreviewsEmpty(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    :try_start_0
    iget v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewsEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public waitForRequestCompleted(Landroid/hardware/camera2/legacy/RequestHolder;JLjava/util/concurrent/TimeUnit;Landroid/util/MutableLong;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p5}, Landroid/hardware/camera2/legacy/CaptureCollector;->removeRequestIfCompleted(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/util/MutableLong;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method
