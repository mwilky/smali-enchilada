.class public abstract Lcom/oneplus/screenshot/longshot/state/AbsShotState;
.super Lcom/oneplus/screenshot/longshot/state/AbsViewState;
.source "AbsShotState.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.AbsShotState"


# instance fields
.field protected mCaptureDelay:I

.field protected mCaptureRunnable:Ljava/lang/Runnable;

.field protected mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

.field protected mEffectDelay:I

.field protected mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field protected mHandler:Landroid/os/Handler;

.field protected mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field protected mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

.field protected mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

.field protected mOffset:I

.field protected mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mOffset:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mEffectDelay:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureDelay:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/screenshot/longshot/state/AbsShotState$1;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState$1;-><init>(Lcom/oneplus/screenshot/longshot/state/AbsShotState;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getFirstCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getImageCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getRunnableCache()Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->EFFECT_DELAY:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mEffectDelay:I

    return-void
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->onEnter()V

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->startCapture()V

    return-void
.end method

.method public exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    return-void
.end method

.method protected firstToCache()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getEnd()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mOffset:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getStart()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mOffset:I

    sub-int/2addr v2, v3

    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    new-instance v3, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v3, v0, v1, v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    monitor-enter v4

    :try_start_1
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v5, v3}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_3
    :goto_0
    return-void

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method protected initDecor(Landroid/widget/FrameLayout;)V
    .locals 5

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Features;->SHOW_SHOT_EFFECT:Lcom/oneplus/screenshot/longshot/util/Features;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Features;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    new-instance v2, Lcom/oneplus/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;-><init>(Lcom/oneplus/screenshot/longshot/state/AbsShotState;Landroid/widget/FrameLayout;)V

    iget v3, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mEffectDelay:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public initViews(Landroid/widget/FrameLayout;)V
    .locals 0

    return-void
.end method

.method protected onCaptureError()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    return-void
.end method

.method public onCaptureFinished(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const v1, 0x7f0c000e

    const v2, 0x7f030003

    invoke-interface {v0, v1, v2, p0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->show(IILcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->onCaptureSuccess(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->onCaptureError()V

    :goto_0
    return-void
.end method

.method protected onCaptureSuccess(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->recycleBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onEnter()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->clear()V

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->firstToCache()V

    return-void
.end method

.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method protected startCapture()V
    .locals 2

    const-string v0, "Longshot.AbsShotState"

    const-string v1, "startCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    return-void
.end method
