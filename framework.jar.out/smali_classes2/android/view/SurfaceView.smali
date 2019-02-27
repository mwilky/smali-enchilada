.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$WindowStoppedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$SurfaceControlWithBackground;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SurfaceView"


# instance fields
.field private mAttachedToWindow:Z

.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

.field mDrawFinished:Z

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private mGlobalListenersAdded:Z

.field mHaveFrame:Z

.field mIsCreating:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastWindowVisibility:Z

.field final mLocation:[I

.field private mPendingReportDraws:I

.field private mRTLastReportedPosition:Landroid/graphics/Rect;

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field private volatile mRtHandlingPositionUpdates:Z

.field private mRtTransaction:Landroid/view/SurfaceControl$Transaction;

.field final mScreenRect:Landroid/graphics/Rect;

.field private final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSubLayer:I

.field final mSurface:Landroid/view/Surface;

.field mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

.field mSurfaceCreated:Z

.field private mSurfaceFlags:I

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field mSurfaceHeight:I

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mSurfaceSession:Landroid/view/SurfaceSession;

.field mSurfaceWidth:I

.field final mTmpRect:Landroid/graphics/Rect;

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mViewVisibility:Z

.field mVisible:Z

.field mWindowSpaceLeft:I

.field mWindowSpaceTop:I

.field mWindowStopped:Z

.field mWindowVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 197
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 106
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 107
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 112
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 114
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 121
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    .line 122
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 124
    const/4 v2, -0x2

    iput v2, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 126
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 127
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 129
    new-instance v2, Landroid/view/SurfaceView$1;

    invoke-direct {v2, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 137
    new-instance v2, Landroid/view/SurfaceView$2;

    invoke-direct {v2, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 148
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 149
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 150
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 151
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 152
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 154
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 155
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 159
    const/4 v3, 0x4

    iput v3, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 161
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 162
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 163
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 165
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 166
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 167
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 168
    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 169
    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 170
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 171
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 172
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 178
    iput v3, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 182
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 826
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 946
    new-instance v1, Landroid/view/SurfaceView$3;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 198
    iget-object v1, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v1, p0}, Landroid/view/RenderNode;->requestPositionUpdates(Landroid/view/SurfaceView;)V

    .line 200
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 201
    return-void
.end method

.method static synthetic access$100(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/SurfaceView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 97
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private applySurfaceTransforms(Landroid/view/SurfaceControl;Landroid/graphics/Rect;J)V
    .locals 9
    .param p1, "surface"    # Landroid/view/SurfaceControl;
    .param p2, "position"    # Landroid/graphics/Rect;
    .param p3, "frameNumber"    # J

    .line 800
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 801
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 803
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1, v2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntilSurface(Landroid/view/SurfaceControl;Landroid/view/Surface;J)Landroid/view/SurfaceControl$Transaction;

    .line 807
    .end local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 808
    iget-object v3, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 809
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float v5, v0, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 811
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 808
    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 812
    return-void
.end method

.method private getParentSurfaceInsets()Landroid/graphics/Rect;
    .locals 2

    .line 466
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 467
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_0

    .line 468
    const/4 v1, 0x0

    return-object v1

    .line 470
    :cond_0
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    return-object v1
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    .line 904
    iget-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 905
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 906
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 907
    monitor-exit v0

    .line 908
    return-object v1

    .line 907
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isAboveParent()Z
    .locals 1

    .line 932
    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$SyyzxOgxKwZMRgiiTGcRYbOU5JY(Landroid/view/SurfaceView;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    return-void
.end method

.method public static synthetic lambda$onDrawFinished$0(Landroid/view/SurfaceView;)V
    .locals 0

    .line 784
    invoke-direct {p0}, Landroid/view/SurfaceView;->performDrawFinished()V

    .line 785
    return-void
.end method

.method private onDrawFinished()V
    .locals 1

    .line 778
    iget-object v0, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 780
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    .line 783
    :cond_0
    new-instance v0, Landroid/view/-$$Lambda$SurfaceView$Cs7TGTdA1lXf9qW8VOJAfEsMjdk;

    invoke-direct {v0, p0}, Landroid/view/-$$Lambda$SurfaceView$Cs7TGTdA1lXf9qW8VOJAfEsMjdk;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 786
    return-void
.end method

.method private performDrawFinished()V
    .locals 3

    .line 272
    iget v0, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    if-lez v0, :cond_0

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 274
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p0}, Landroid/view/SurfaceView;->notifyDrawFinished()V

    .line 276
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    goto :goto_0

    .line 279
    :cond_0
    const-string v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "finished drawing but no pending report draw (extra call to draw completion runnable?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1
    :goto_0
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 912
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 913
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 914
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 916
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 918
    :goto_0
    return-void
.end method

.method private setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    .locals 3
    .param p1, "position"    # Landroid/graphics/Rect;
    .param p2, "frameNumber"    # J

    .line 815
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 817
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-direct {p0, v1, p1, p2, p3}, Landroid/view/SurfaceView;->applySurfaceTransforms(Landroid/view/SurfaceControl;Landroid/graphics/Rect;J)V

    .line 818
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iget-object v1, v1, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-direct {p0, v1, p1, p2, p3}, Landroid/view/SurfaceView;->applySurfaceTransforms(Landroid/view/SurfaceControl;Landroid/graphics/Rect;J)V

    .line 820
    iget-object v1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v1, v2, p2, p3}, Landroid/view/SurfaceView;->applyChildSurfaceTransaction_renderWorker(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;J)V

    .line 823
    iget-object v1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 824
    return-void
.end method

.method private updateOpaqueFlag()V
    .locals 1

    .line 458
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_0

    .line 461
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 463
    :goto_0
    return-void
.end method

.method private updateRequestedVisibility()V
    .locals 1

    .line 214
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 215
    return-void
.end method


# virtual methods
.method protected applyChildSurfaceTransaction_renderWorker(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;J)V
    .locals 0
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "viewRootSurface"    # Landroid/view/Surface;
    .param p3, "nextViewRootFrameNumber"    # J

    .line 797
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 390
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 394
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 397
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 398
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 378
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 382
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 385
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 386
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 11
    .param p1, "region"    # Landroid/graphics/Region;

    .line 351
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 355
    :cond_0
    const/4 v0, 0x1

    .line 356
    .local v0, "opaque":Z
    iget v1, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    .line 358
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    goto :goto_0

    .line 359
    :cond_1
    if-eqz p1, :cond_2

    .line 360
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    .line 361
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    .line 362
    .local v2, "h":I
    if-lez v1, :cond_2

    if-lez v2, :cond_2

    .line 363
    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 365
    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    .line 366
    .local v3, "l":I
    iget-object v4, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 367
    .local v4, "t":I
    add-int v8, v3, v1

    add-int v9, v4, v2

    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v5, p1

    move v6, v3

    move v7, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 370
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v3    # "l":I
    .end local v4    # "t":I
    :cond_2
    :goto_0
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 371
    const/4 v0, 0x0

    .line 373
    :cond_3
    return v0

    .line 352
    .end local v0    # "opaque":Z
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 210
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public isFixedSize()Z
    .locals 2

    .line 928
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method notifyDrawFinished()V
    .locals 2

    .line 286
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 287
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    .line 290
    :cond_0
    iget v1, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    .line 291
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 227
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 229
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->addWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 232
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v0, v2

    nop

    :cond_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 233
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 235
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 236
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 237
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v0, :cond_1

    .line 238
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 239
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 240
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 241
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 243
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 295
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 301
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V

    .line 305
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 306
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v2, :cond_1

    .line 307
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 308
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 309
    iget-object v3, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 310
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 313
    .end local v2    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    :goto_0
    iget v2, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    if-lez v2, :cond_2

    .line 314
    invoke-virtual {p0}, Landroid/view/SurfaceView;->notifyDrawFinished()V

    goto :goto_0

    .line 317
    :cond_2
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 319
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 320
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-eqz v2, :cond_3

    .line 321
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v2}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->destroy()V

    .line 323
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    .line 325
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 327
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 328
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 332
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 333
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v0, p1, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    goto :goto_0

    .line 334
    :cond_0
    invoke-static {v1, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 335
    .local v0, "width":I
    :goto_0
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_1

    .line 336
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2, p2, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    goto :goto_1

    .line 337
    :cond_1
    invoke-static {v1, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 338
    .local v1, "height":I
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 339
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 247
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 248
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 249
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 250
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 251
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 344
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 345
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 346
    return v0
.end method

.method public setResizeBackgroundColor(I)V
    .locals 1
    .param p1, "bgColor"    # I

    .line 943
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-static {v0, p1}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->access$000(Landroid/view/SurfaceView$SurfaceControlWithBackground;I)V

    .line 944
    return-void
.end method

.method public setSecure(Z)V
    .locals 1
    .param p1, "isSecure"    # Z

    .line 450
    if-eqz p1, :cond_0

    .line 451
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_0

    .line 453
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 455
    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 255
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 257
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v2, :cond_1

    move v0, v1

    nop

    .line 258
    .local v0, "newRequestedVisible":Z
    :cond_1
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_2

    .line 265
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 267
    :cond_2
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 268
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 269
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1
    .param p1, "isMediaOverlay"    # Z

    .line 412
    if-eqz p1, :cond_0

    .line 413
    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 414
    return-void
.end method

.method public setZOrderOnTop(Z)V
    .locals 1
    .param p1, "onTop"    # Z

    .line 430
    if-eqz p1, :cond_0

    .line 431
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    goto :goto_0

    .line 433
    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 435
    :goto_0
    return-void
.end method

.method public final surfacePositionLost_uiRtSync(J)V
    .locals 3
    .param p1, "frameNumber"    # J

    .line 877
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 879
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-nez v0, :cond_0

    .line 880
    return-void

    .line 882
    :cond_0
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    if-eqz v0, :cond_1

    .line 883
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 888
    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 894
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p2}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    goto :goto_0

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "SurfaceView"

    const-string v2, "Exception configuring surface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 900
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method protected updateSurface()V
    .locals 25

    .line 476
    move-object/from16 v1, p0

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v0, :cond_0

    .line 477
    return-void

    .line 479
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 480
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_3b

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3b

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_28

    .line 484
    :cond_1
    iget-object v0, v2, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iput-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 485
    iget-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v3, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, v3}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 489
    :cond_2
    iget v0, v1, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 490
    .local v0, "myWidth":I
    if-gtz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    .line 491
    .end local v0    # "myWidth":I
    .local v3, "myWidth":I
    :cond_3
    move v3, v0

    iget v0, v1, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 492
    .local v0, "myHeight":I
    if-gtz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    .line 494
    .end local v0    # "myHeight":I
    .local v4, "myHeight":I
    :cond_4
    move v4, v0

    iget v0, v1, Landroid/view/SurfaceView;->mFormat:I

    iget v5, v1, Landroid/view/SurfaceView;->mRequestedFormat:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v0, v5, :cond_5

    move v0, v6

    goto :goto_0

    :cond_5
    move v0, v7

    :goto_0
    move v5, v0

    .line 495
    .local v5, "formatChanged":Z
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    iget-boolean v8, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v8, :cond_6

    move v0, v6

    goto :goto_1

    :cond_6
    move v0, v7

    :goto_1
    move v8, v0

    .line 496
    .local v8, "visibleChanged":Z
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-eqz v0, :cond_7

    if-nez v5, :cond_7

    if-eqz v8, :cond_8

    :cond_7
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eqz v0, :cond_8

    move v0, v6

    goto :goto_2

    :cond_8
    move v0, v7

    :goto_2
    move v9, v0

    .line 498
    .local v9, "creating":Z
    iget v0, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    if-ne v0, v3, :cond_a

    iget v0, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    if-eq v0, v4, :cond_9

    goto :goto_3

    :cond_9
    move v0, v7

    goto :goto_4

    :cond_a
    :goto_3
    move v0, v6

    :goto_4
    move v10, v0

    .line 499
    .local v10, "sizeChanged":Z
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iget-boolean v11, v1, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    if-eq v0, v11, :cond_b

    move v0, v6

    goto :goto_5

    :cond_b
    move v0, v7

    :goto_5
    move v11, v0

    .line 500
    .local v11, "windowVisibleChanged":Z
    const/4 v12, 0x0

    .line 502
    .local v12, "redrawNeeded":Z
    if-nez v9, :cond_17

    if-nez v5, :cond_17

    if-nez v10, :cond_17

    if-nez v8, :cond_17

    if-eqz v11, :cond_c

    .line 503
    move/from16 v17, v11

    move/from16 v18, v12

    goto/16 :goto_c

    .line 733
    :cond_c
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->getLocationInSurface([I)V

    .line 734
    iget v0, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget-object v13, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v13, v13, v7

    if-ne v0, v13, :cond_e

    iget v0, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iget-object v13, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v13, v13, v6

    if-eq v0, v13, :cond_d

    goto :goto_6

    :cond_d
    move v0, v7

    goto :goto_7

    :cond_e
    :goto_6
    move v0, v6

    :goto_7
    move v13, v0

    .line 736
    .local v13, "positionChanged":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object v14, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-ne v0, v14, :cond_10

    .line 737
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    iget-object v14, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-eq v0, v14, :cond_f

    goto :goto_8

    :cond_f
    move v0, v7

    goto :goto_9

    :cond_10
    :goto_8
    move v0, v6

    :goto_9
    move v14, v0

    .line 738
    .local v14, "layoutSizeChanged":Z
    if-nez v13, :cond_12

    if-eqz v14, :cond_11

    goto :goto_a

    .line 770
    .end local v13    # "positionChanged":Z
    .end local v14    # "layoutSizeChanged":Z
    :cond_11
    move/from16 v17, v11

    move/from16 v18, v12

    goto :goto_b

    .line 739
    .restart local v13    # "positionChanged":Z
    .restart local v14    # "layoutSizeChanged":Z
    :cond_12
    :goto_a
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v0, v0, v7

    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 740
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v0, v0, v6

    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 743
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v15

    aput v15, v0, v7

    .line 744
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v15

    aput v15, v0, v6

    .line 746
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v15, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget v6, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    move/from16 v17, v11

    iget v11, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .end local v11    # "windowVisibleChanged":Z
    .local v17, "windowVisibleChanged":Z
    move/from16 v18, v12

    iget-object v12, v1, Landroid/view/SurfaceView;->mLocation:[I

    .end local v12    # "redrawNeeded":Z
    .local v18, "redrawNeeded":Z
    aget v7, v12, v7

    add-int/2addr v11, v7

    iget v7, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iget-object v12, v1, Landroid/view/SurfaceView;->mLocation:[I

    const/16 v16, 0x1

    aget v12, v12, v16

    add-int/2addr v7, v12

    invoke-virtual {v0, v15, v6, v11, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 749
    iget-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_13

    .line 750
    iget-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v6, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 753
    :cond_13
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-nez v0, :cond_14

    .line 754
    return-void

    .line 757
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    if-nez v0, :cond_16

    .line 763
    :cond_15
    :try_start_0
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    const-wide/16 v6, -0x1

    invoke-direct {v1, v0, v6, v7}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    goto :goto_b

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "ex":Ljava/lang/Exception;
    const-string v6, "SurfaceView"

    const-string v7, "Exception configuring surface"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 770
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v13    # "positionChanged":Z
    .end local v14    # "layoutSizeChanged":Z
    .end local v17    # "windowVisibleChanged":Z
    .end local v18    # "redrawNeeded":Z
    .restart local v11    # "windowVisibleChanged":Z
    .restart local v12    # "redrawNeeded":Z
    :cond_16
    :goto_b
    move/from16 v24, v5

    move/from16 v12, v18

    .end local v11    # "windowVisibleChanged":Z
    .end local v12    # "redrawNeeded":Z
    .restart local v17    # "windowVisibleChanged":Z
    .restart local v18    # "redrawNeeded":Z
    goto/16 :goto_27

    .line 503
    .end local v17    # "windowVisibleChanged":Z
    .end local v18    # "redrawNeeded":Z
    .restart local v11    # "windowVisibleChanged":Z
    .restart local v12    # "redrawNeeded":Z
    :cond_17
    move/from16 v17, v11

    move/from16 v18, v12

    .end local v11    # "windowVisibleChanged":Z
    .end local v12    # "redrawNeeded":Z
    .restart local v17    # "windowVisibleChanged":Z
    .restart local v18    # "redrawNeeded":Z
    :goto_c
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 513
    :try_start_1
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    move v6, v0

    .line 514
    .local v6, "visible":Z
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v0, v0, v7

    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 515
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v11, 0x1

    aget v0, v0, v11

    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 516
    iput v3, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 517
    iput v4, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 518
    iget v0, v1, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v0, v1, Landroid/view/SurfaceView;->mFormat:I

    .line 519
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 521
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v11, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v11, v0, Landroid/graphics/Rect;->left:I

    .line 522
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v11, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v11, v0, Landroid/graphics/Rect;->top:I

    .line 523
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v11, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v0, Landroid/graphics/Rect;->right:I

    .line 524
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v11, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 525
    iget-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v0, :cond_18

    .line 526
    :try_start_2
    iget-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v11, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v11}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_d

    .line 723
    .end local v6    # "visible":Z
    :catch_1
    move-exception v0

    move/from16 v24, v5

    move/from16 v12, v18

    goto/16 :goto_25

    .line 529
    .restart local v6    # "visible":Z
    :cond_18
    :goto_d
    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getParentSurfaceInsets()Landroid/graphics/Rect;

    move-result-object v0

    move-object v11, v0

    .line 530
    .local v11, "surfaceInsets":Landroid/graphics/Rect;
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v13, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 532
    if-eqz v9, :cond_1a

    .line 533
    :try_start_4
    new-instance v0, Landroid/view/SurfaceSession;

    iget-object v12, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-direct {v0, v12}, Landroid/view/SurfaceSession;-><init>(Landroid/view/Surface;)V

    iput-object v0, v1, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 534
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iput-object v0, v1, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    .line 536
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->updateOpaqueFlag()V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SurfaceView - "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "name":Ljava/lang/String;
    new-instance v12, Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iget v13, v1, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v13, v13, 0x400

    if-eqz v13, :cond_19

    const/4 v13, 0x1

    goto :goto_e

    :cond_19
    move v13, v7

    :goto_e
    new-instance v14, Landroid/view/SurfaceControl$Builder;

    iget-object v15, v1, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v14, v15}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget v15, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v7, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 543
    invoke-virtual {v14, v15, v7}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    iget v14, v1, Landroid/view/SurfaceView;->mFormat:I

    .line 544
    invoke-virtual {v7, v14}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    iget v14, v1, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 545
    invoke-virtual {v7, v14}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    invoke-direct {v12, v1, v0, v13, v7}, Landroid/view/SurfaceView$SurfaceControlWithBackground;-><init>(Landroid/view/SurfaceView;Ljava/lang/String;ZLandroid/view/SurfaceControl$Builder;)V

    iput-object v12, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 546
    .end local v0    # "name":Ljava/lang/String;
    goto :goto_f

    :cond_1a
    :try_start_5
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-nez v0, :cond_1b

    .line 547
    return-void

    .line 550
    :cond_1b
    :goto_f
    const/4 v7, 0x0

    .line 552
    .local v7, "realSizeChanged":Z
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 554
    if-nez v6, :cond_1c

    const/4 v0, 0x1

    goto :goto_10

    :cond_1c
    const/4 v0, 0x0

    :goto_10
    :try_start_6
    iput-boolean v0, v1, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 559
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    .line 561
    :try_start_7
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iget v12, v1, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-virtual {v0, v12}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->setLayer(I)V

    .line 562
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mViewVisibility:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    if-eqz v0, :cond_1d

    .line 563
    :try_start_8
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->show()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_11

    .line 586
    :catchall_0
    move-exception v0

    move/from16 v24, v5

    move-object/from16 v21, v11

    goto/16 :goto_23

    .line 565
    :cond_1d
    :try_start_9
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->hide()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 576
    :goto_11
    if-nez v10, :cond_1e

    if-nez v9, :cond_1e

    :try_start_a
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v0, :cond_1f

    .line 577
    :cond_1e
    :try_start_b
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iget-object v12, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget-object v13, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    invoke-virtual {v0, v12, v13}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->setPosition(FF)V

    .line 578
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iget-object v12, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    iget v13, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    iget-object v13, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 580
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    iget v14, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 578
    const/4 v14, 0x0

    invoke-virtual {v0, v12, v14, v14, v13}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->setMatrix(FFFF)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 582
    :cond_1f
    if-eqz v10, :cond_20

    .line 583
    :try_start_c
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iget v12, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v13, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v0, v12, v13}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->setSize(II)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 586
    :cond_20
    :try_start_d
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .line 587
    nop

    .line 589
    if-nez v10, :cond_22

    if-eqz v9, :cond_21

    goto :goto_12

    .line 593
    :cond_21
    move/from16 v12, v18

    goto :goto_13

    .line 590
    :cond_22
    :goto_12
    const/4 v12, 0x1

    .line 593
    .end local v18    # "redrawNeeded":Z
    .restart local v12    # "redrawNeeded":Z
    :goto_13
    :try_start_e
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v13, 0x0

    iput v13, v0, Landroid/graphics/Rect;->left:I

    .line 594
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v13, v0, Landroid/graphics/Rect;->top:I

    .line 595
    iget-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-nez v0, :cond_23

    .line 596
    :try_start_f
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v13, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v13, v0, Landroid/graphics/Rect;->right:I

    .line 597
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v13, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v13, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_14

    .line 611
    :catchall_1
    move-exception v0

    move/from16 v24, v5

    move-object/from16 v21, v11

    goto/16 :goto_24

    .line 599
    :cond_23
    :try_start_10
    iget-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v0, v0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 600
    .local v0, "appInvertedScale":F
    iget-object v13, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v14, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v14, v14

    mul-float/2addr v14, v0

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v13, Landroid/graphics/Rect;->right:I

    .line 601
    iget-object v13, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v14, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v14, v14

    mul-float/2addr v14, v0

    add-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    .line 604
    .end local v0    # "appInvertedScale":F
    :goto_14
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 605
    .local v0, "surfaceWidth":I
    iget-object v13, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    .line 606
    .local v13, "surfaceHeight":I
    iget v14, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    if-ne v14, v0, :cond_25

    :try_start_11
    iget v14, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eq v14, v13, :cond_24

    goto :goto_15

    :cond_24
    const/4 v14, 0x0

    goto :goto_16

    :cond_25
    :goto_15
    const/4 v14, 0x1

    :goto_16
    move v7, v14

    .line 608
    :try_start_12
    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 609
    iput v13, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 611
    .end local v0    # "surfaceWidth":I
    .end local v13    # "surfaceHeight":I
    :try_start_13
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    .line 612
    nop

    .line 615
    if-eqz v6, :cond_26

    :try_start_14
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mDrawFinished:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    if-nez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_17

    .line 700
    :catchall_2
    move-exception v0

    move/from16 v24, v5

    move-object/from16 v21, v11

    goto/16 :goto_22

    .line 615
    :cond_26
    const/4 v0, 0x0

    :goto_17
    or-int/2addr v12, v0

    .line 617
    const/4 v0, 0x0

    .line 619
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move v14, v9

    .line 620
    .local v14, "surfaceChanged":Z
    :try_start_15
    iget-boolean v15, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    if-eqz v15, :cond_2b

    if-nez v14, :cond_28

    if-nez v6, :cond_27

    if-eqz v8, :cond_27

    goto :goto_18

    .line 646
    :cond_27
    move-object/from16 v21, v11

    goto :goto_1a

    .line 621
    :cond_28
    :goto_18
    const/4 v15, 0x0

    :try_start_16
    iput-boolean v15, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 622
    iget-object v15, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v15}, Landroid/view/Surface;->isValid()Z

    move-result v15

    if-eqz v15, :cond_2b

    .line 625
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v15

    move-object v0, v15

    .line 626
    array-length v15, v0

    const/4 v13, 0x0

    :goto_19
    if-ge v13, v15, :cond_29

    aget-object v18, v0, v13

    move-object/from16 v19, v18

    .line 627
    .local v19, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v20, v0

    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v20, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v21, v11

    move-object/from16 v11, v19

    :try_start_17
    invoke-interface {v11, v0}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 626
    .end local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v19    # "c":Landroid/view/SurfaceHolder$Callback;
    .local v21, "surfaceInsets":Landroid/graphics/Rect;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v20

    move-object/from16 v11, v21

    goto :goto_19

    .line 640
    .end local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v11    # "surfaceInsets":Landroid/graphics/Rect;
    :cond_29
    move-object/from16 v20, v0

    move-object/from16 v21, v11

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v21    # "surfaceInsets":Landroid/graphics/Rect;
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 641
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->forceScopedDisconnect()V

    .line 646
    :cond_2a
    move-object/from16 v0, v20

    goto :goto_1a

    .line 700
    .end local v14    # "surfaceChanged":Z
    .end local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v11    # "surfaceInsets":Landroid/graphics/Rect;
    :catchall_3
    move-exception v0

    move-object/from16 v21, v11

    move/from16 v24, v5

    .end local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v21    # "surfaceInsets":Landroid/graphics/Rect;
    goto/16 :goto_22

    .line 646
    .end local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v14    # "surfaceChanged":Z
    :cond_2b
    move-object/from16 v21, v11

    .end local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v21    # "surfaceInsets":Landroid/graphics/Rect;
    :goto_1a
    if-eqz v9, :cond_2c

    .line 647
    iget-object v11, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v13, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v11, v13}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    goto :goto_1b

    .line 700
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v14    # "surfaceChanged":Z
    :catchall_4
    move-exception v0

    move/from16 v24, v5

    goto/16 :goto_22

    .line 650
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v14    # "surfaceChanged":Z
    :cond_2c
    :goto_1b
    if-eqz v10, :cond_2d

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v13, 0x1a

    if-ge v11, v13, :cond_2d

    .line 657
    iget-object v11, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v13, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v11, v13}, Landroid/view/Surface;->createFrom(Landroid/view/SurfaceControl;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 660
    :cond_2d
    if-eqz v6, :cond_37

    :try_start_18
    iget-object v11, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11}, Landroid/view/Surface;->isValid()Z

    move-result v11

    if-eqz v11, :cond_37

    .line 661
    iget-boolean v11, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    if-nez v11, :cond_31

    if-nez v14, :cond_2e

    if-eqz v8, :cond_31

    .line 662
    :cond_2e
    const/4 v11, 0x1

    :try_start_19
    iput-boolean v11, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 663
    iput-boolean v11, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 666
    if-nez v0, :cond_2f

    .line 667
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v11

    move-object v0, v11

    .line 669
    :cond_2f
    array-length v11, v0

    const/4 v13, 0x0

    :goto_1c
    if-ge v13, v11, :cond_30

    aget-object v15, v0, v13

    .line 670
    .local v15, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v22, v0

    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v22, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    invoke-interface {v15, v0}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 669
    .end local v15    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v22

    goto :goto_1c

    .line 673
    .end local v22    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_30
    move-object/from16 v22, v0

    :cond_31
    if-nez v9, :cond_33

    if-nez v5, :cond_33

    if-nez v10, :cond_33

    if-nez v8, :cond_33

    if-eqz v7, :cond_32

    goto :goto_1d

    .line 685
    :cond_32
    move/from16 v24, v5

    goto :goto_1f

    .line 678
    :cond_33
    :goto_1d
    if-nez v0, :cond_34

    .line 679
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v11
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    move-object v0, v11

    .line 681
    :cond_34
    :try_start_1a
    array-length v11, v0

    const/4 v13, 0x0

    :goto_1e
    if-ge v13, v11, :cond_35

    aget-object v15, v0, v13

    .line 682
    .restart local v15    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v23, v0

    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v23, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move/from16 v24, v5

    :try_start_1b
    iget v5, v1, Landroid/view/SurfaceView;->mFormat:I

    .end local v5    # "formatChanged":Z
    .local v24, "formatChanged":Z
    invoke-interface {v15, v0, v5, v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 681
    .end local v15    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v23

    move/from16 v5, v24

    goto :goto_1e

    .line 685
    .end local v23    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v24    # "formatChanged":Z
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v5    # "formatChanged":Z
    :cond_35
    move-object/from16 v23, v0

    move/from16 v24, v5

    .end local v5    # "formatChanged":Z
    .restart local v24    # "formatChanged":Z
    :goto_1f
    if-eqz v12, :cond_38

    .line 688
    if-nez v0, :cond_36

    .line 689
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v5

    move-object v0, v5

    goto :goto_20

    .line 700
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v14    # "surfaceChanged":Z
    :catchall_5
    move-exception v0

    goto :goto_22

    .line 692
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v14    # "surfaceChanged":Z
    :cond_36
    :goto_20
    iget v5, v1, Landroid/view/SurfaceView;->mPendingReportDraws:I

    const/4 v11, 0x1

    add-int/2addr v5, v11

    iput v5, v1, Landroid/view/SurfaceView;->mPendingReportDraws:I

    .line 693
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->drawPending()V

    .line 694
    new-instance v5, Lcom/android/internal/view/SurfaceCallbackHelper;

    new-instance v11, Landroid/view/-$$Lambda$SurfaceView$SyyzxOgxKwZMRgiiTGcRYbOU5JY;

    invoke-direct {v11, v1}, Landroid/view/-$$Lambda$SurfaceView$SyyzxOgxKwZMRgiiTGcRYbOU5JY;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {v5, v11}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    .line 696
    .local v5, "sch":Lcom/android/internal/view/SurfaceCallbackHelper;
    iget-object v11, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v5, v11, v0}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v5    # "sch":Lcom/android/internal/view/SurfaceCallbackHelper;
    .end local v14    # "surfaceChanged":Z
    goto :goto_21

    .line 700
    .end local v24    # "formatChanged":Z
    .local v5, "formatChanged":Z
    :catchall_6
    move-exception v0

    move/from16 v24, v5

    .end local v5    # "formatChanged":Z
    .restart local v24    # "formatChanged":Z
    goto :goto_22

    .end local v24    # "formatChanged":Z
    .restart local v5    # "formatChanged":Z
    :cond_37
    move/from16 v24, v5

    .end local v5    # "formatChanged":Z
    .restart local v24    # "formatChanged":Z
    :cond_38
    :goto_21
    const/4 v5, 0x0

    :try_start_1c
    iput-boolean v5, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 701
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-eqz v0, :cond_3a

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v0, :cond_3a

    .line 702
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 716
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v0, :cond_3a

    .line 717
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->destroy()V

    .line 718
    const/4 v5, 0x0

    iput-object v5, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    goto :goto_26

    .line 700
    .end local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v24    # "formatChanged":Z
    .restart local v5    # "formatChanged":Z
    .restart local v11    # "surfaceInsets":Landroid/graphics/Rect;
    :catchall_7
    move-exception v0

    move/from16 v24, v5

    move-object/from16 v21, v11

    .end local v5    # "formatChanged":Z
    .end local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v24    # "formatChanged":Z
    :goto_22
    const/4 v5, 0x0

    iput-boolean v5, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 701
    iget-object v5, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-eqz v5, :cond_39

    iget-boolean v5, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v5, :cond_39

    .line 702
    iget-object v5, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->release()V

    .line 716
    iget-boolean v5, v1, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v5, :cond_39

    .line 717
    iget-object v5, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v5}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->destroy()V

    .line 718
    const/4 v5, 0x0

    iput-object v5, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    :cond_39
    throw v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3

    .line 723
    .end local v6    # "visible":Z
    .end local v7    # "realSizeChanged":Z
    .end local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v24    # "formatChanged":Z
    .restart local v5    # "formatChanged":Z
    :catch_2
    move-exception v0

    move/from16 v24, v5

    goto :goto_25

    .line 611
    .restart local v6    # "visible":Z
    .restart local v7    # "realSizeChanged":Z
    .restart local v11    # "surfaceInsets":Landroid/graphics/Rect;
    :catchall_8
    move-exception v0

    move/from16 v24, v5

    move-object/from16 v21, v11

    goto :goto_24

    .line 586
    .end local v12    # "redrawNeeded":Z
    .restart local v18    # "redrawNeeded":Z
    :catchall_9
    move-exception v0

    move/from16 v24, v5

    move-object/from16 v21, v11

    .end local v5    # "formatChanged":Z
    .end local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v24    # "formatChanged":Z
    :goto_23
    :try_start_1d
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    .line 611
    :catchall_a
    move-exception v0

    move/from16 v12, v18

    goto :goto_24

    .end local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v24    # "formatChanged":Z
    .restart local v5    # "formatChanged":Z
    .restart local v11    # "surfaceInsets":Landroid/graphics/Rect;
    :catchall_b
    move-exception v0

    move/from16 v24, v5

    move-object/from16 v21, v11

    move/from16 v12, v18

    .end local v5    # "formatChanged":Z
    .end local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v18    # "redrawNeeded":Z
    .restart local v12    # "redrawNeeded":Z
    .restart local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v24    # "formatChanged":Z
    :goto_24
    :try_start_1e
    iget-object v5, v1, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_3

    .line 723
    .end local v6    # "visible":Z
    .end local v7    # "realSizeChanged":Z
    .end local v21    # "surfaceInsets":Landroid/graphics/Rect;
    :catch_3
    move-exception v0

    goto :goto_25

    .end local v12    # "redrawNeeded":Z
    .end local v24    # "formatChanged":Z
    .restart local v5    # "formatChanged":Z
    .restart local v18    # "redrawNeeded":Z
    :catch_4
    move-exception v0

    move/from16 v24, v5

    move/from16 v12, v18

    .line 724
    .end local v5    # "formatChanged":Z
    .end local v18    # "redrawNeeded":Z
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v12    # "redrawNeeded":Z
    .restart local v24    # "formatChanged":Z
    :goto_25
    const-string v5, "SurfaceView"

    const-string v6, "Exception configuring surface"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 725
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3a
    :goto_26
    nop

    .line 770
    :goto_27
    return-void

    .line 481
    .end local v3    # "myWidth":I
    .end local v4    # "myHeight":I
    .end local v8    # "visibleChanged":Z
    .end local v9    # "creating":Z
    .end local v10    # "sizeChanged":Z
    .end local v12    # "redrawNeeded":Z
    .end local v17    # "windowVisibleChanged":Z
    .end local v24    # "formatChanged":Z
    :cond_3b
    :goto_28
    return-void
.end method

.method public final updateSurfacePosition_renderWorker(JIIII)V
    .locals 3
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 834
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-nez v0, :cond_0

    .line 835
    return-void

    .line 846
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 847
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne v0, p4, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, p5, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p6, :cond_1

    .line 851
    return-void

    .line 859
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 860
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p2}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    goto :goto_0

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "SurfaceView"

    const-string v2, "Exception from repositionChild"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 865
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public windowStopped(Z)V
    .locals 0
    .param p1, "stopped"    # Z

    .line 220
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 221
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 222
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 223
    return-void
.end method
