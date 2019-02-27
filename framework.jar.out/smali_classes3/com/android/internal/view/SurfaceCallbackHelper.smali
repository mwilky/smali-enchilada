.class public Lcom/android/internal/view/SurfaceCallbackHelper;
.super Ljava/lang/Object;
.source "SurfaceCallbackHelper.java"


# instance fields
.field mFinishDrawingCollected:I

.field mFinishDrawingExpected:I

.field private mFinishDrawingRunnable:Ljava/lang/Runnable;

.field mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    iput v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingExpected:I

    new-instance v0, Lcom/android/internal/view/SurfaceCallbackHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/SurfaceCallbackHelper$1;-><init>(Lcom/android/internal/view/SurfaceCallbackHelper;)V

    iput-object v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V
    .locals 5

    if-eqz p2, :cond_3

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    monitor-enter p0

    :try_start_0
    array-length v0, p2

    iput v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingExpected:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p2, v0

    instance-of v3, v2, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/view/SurfaceHolder$Callback2;

    iget-object v4, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    invoke-interface {v3, p1, v4}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
