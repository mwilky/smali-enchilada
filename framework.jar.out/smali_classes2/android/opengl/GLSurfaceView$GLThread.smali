.class Landroid/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishDrawingRunnable:Ljava/lang/Runnable;

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWantRenderNotification:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    iput v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1102(Landroid/opengl/GLSurfaceView$GLThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Landroid/opengl/GLSurfaceView$EglHelper;

    iget-object v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Landroid/opengl/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v15, v4

    move v4, v3

    move-object v3, v2

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v16

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    :goto_1
    :try_start_1
    iget-boolean v14, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v14, :cond_0

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14

    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    monitor-exit v14

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    iget-object v14, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    iget-object v14, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Runnable;

    move-object v0, v14

    nop

    move-object v13, v0

    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x0

    iget-boolean v14, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    move/from16 v17, v0

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    if-eq v14, v0, :cond_2

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    iget-boolean v14, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    iput-boolean v14, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    move/from16 v17, v0

    :cond_2
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v0, :cond_3

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    const/4 v10, 0x1

    :cond_3
    if-eqz v6, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    const/4 v0, 0x0

    move v6, v0

    :cond_4
    if-eqz v17, :cond_5

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_5

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    :cond_5
    if-eqz v17, :cond_7

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_7

    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    if-nez v0, :cond_6

    const/4 v14, 0x0

    goto :goto_2

    :cond_6
    invoke-static {v0}, Landroid/opengl/GLSurfaceView;->access$900(Landroid/opengl/GLSurfaceView;)Z

    move-result v14

    :goto_2
    if-nez v14, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    :cond_7
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v0, :cond_9

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_9

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_9
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    if-eqz v9, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    const/4 v9, 0x0

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_b
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    move-object v2, v0

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    if-nez v0, :cond_e

    if-eqz v10, :cond_d

    const/4 v0, 0x0

    move v10, v0

    goto :goto_3

    :cond_d
    :try_start_4
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->start()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    nop

    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    const/4 v4, 0x1

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    throw v0

    :cond_e
    :goto_3
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_f

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    const/4 v15, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    :cond_f
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_21

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    if-eqz v0, :cond_10

    const/4 v7, 0x1

    iget v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    move v11, v0

    iget v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    move v12, v0

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    const/4 v15, 0x1

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    iget-boolean v14, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    if-eqz v14, :cond_11

    const/4 v8, 0x1

    :cond_11
    :goto_4
    :try_start_6
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    if-eqz v13, :cond_12

    :try_start_7
    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_12
    if-eqz v15, :cond_14

    iget-object v14, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v14}, Landroid/opengl/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v14

    const/4 v0, 0x0

    move v15, v0

    goto :goto_6

    :catchall_1
    move-exception v0

    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0

    :cond_13
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v14

    nop

    :goto_5
    const/4 v0, 0x0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0

    :cond_14
    :goto_6
    if-eqz v5, :cond_15

    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    const/4 v3, 0x0

    move v5, v3

    move-object v3, v0

    :cond_15
    move/from16 v19, v5

    move/from16 v18, v6

    const-wide/16 v5, 0x8

    if-eqz v4, :cond_17

    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    move-object v14, v0

    if-eqz v14, :cond_16

    :try_start_c
    const-string/jumbo v0, "onSurfaceCreated"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v14}, Landroid/opengl/GLSurfaceView;->access$1000(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    iget-object v5, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    iget-object v5, v5, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v3, v5}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    const-wide/16 v5, 0x8

    :try_start_d
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_7

    :catchall_3
    move-exception v0

    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_16
    :goto_7
    const/4 v0, 0x0

    move v4, v0

    :cond_17
    if-eqz v7, :cond_19

    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    move-object v5, v0

    if-eqz v5, :cond_18

    :try_start_e
    const-string/jumbo v0, "onSurfaceChanged"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    move/from16 v20, v7

    const-wide/16 v6, 0x8

    :try_start_f
    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v5}, Landroid/opengl/GLSurfaceView;->access$1000(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    invoke-interface {v0, v3, v11, v12}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_8

    :catchall_5
    move-exception v0

    move/from16 v20, v7

    :goto_8
    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_18
    move/from16 v20, v7

    :goto_9
    const/4 v0, 0x0

    move v7, v0

    goto :goto_a

    :cond_19
    move/from16 v20, v7

    :goto_a
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    move-object v5, v0

    if-eqz v5, :cond_1c

    :try_start_11
    const-string/jumbo v0, "onDrawFrame"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    move/from16 v21, v7

    const-wide/16 v6, 0x8

    :try_start_12
    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1a

    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    move-object v2, v0

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    goto :goto_b

    :cond_1a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v5}, Landroid/opengl/GLSurfaceView;->access$1000(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    if-eqz v2, :cond_1b

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    const/4 v2, 0x0

    :cond_1b
    const-wide/16 v6, 0x8

    :try_start_13
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_d

    :catchall_6
    move-exception v0

    goto :goto_c

    :catchall_7
    move-exception v0

    move/from16 v21, v7

    :goto_c
    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_1c
    move/from16 v21, v7

    const/4 v0, 0x0

    :goto_d
    iget-object v5, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v5}, Landroid/opengl/GLSurfaceView$EglHelper;->swap()I

    move-result v5

    const/16 v6, 0x3000

    if-eq v5, v6, :cond_1e

    const/16 v6, 0x300e

    if-eq v5, v6, :cond_1d

    const-string v6, "GLThread"

    const-string v7, "eglSwapBuffers"

    invoke-static {v6, v7, v5}, Landroid/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v6

    monitor-enter v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    const/4 v7, 0x1

    :try_start_14
    iput-boolean v7, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v6

    goto :goto_e

    :catchall_8
    move-exception v0

    monitor-exit v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :try_start_15
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    :cond_1d
    const/4 v6, 0x1

    goto :goto_f

    :cond_1e
    nop

    :goto_e
    move/from16 v6, v18

    :goto_f
    if-eqz v8, :cond_1f

    const/4 v7, 0x1

    const/4 v5, 0x0

    move v8, v5

    move v9, v7

    :cond_1f
    move/from16 v5, v19

    move/from16 v7, v21

    goto/16 :goto_5

    :catchall_9
    move-exception v0

    move/from16 v18, v6

    move/from16 v20, v7

    goto :goto_10

    :cond_20
    const/4 v0, 0x0

    if-eqz v2, :cond_21

    :try_start_16
    const-string v14, "GLSurfaceView"

    const-string v0, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    move-object v2, v0

    :cond_21
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    nop

    const/4 v0, 0x0

    goto/16 :goto_1

    :catchall_a
    move-exception v0

    :goto_10
    monitor-exit v16
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    :try_start_17
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    :catchall_b
    move-exception v0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_18
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    throw v0

    :catchall_c
    move-exception v0

    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    throw v0
.end method

.method private readyToDraw()Z
    .locals 2

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private stopEglContextLocked()V
    .locals 1

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRenderMode()I
    .locals 2

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 3

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onWindowResize(II)V
    .locals 3

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    iput p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .locals 2

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestRenderAndNotify(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setRenderMode(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public surfaceDestroyed()V
    .locals 3

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
