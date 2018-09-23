.class Lcom/android/server/wm/TaskSnapshotSurface;
.super Ljava/lang/Object;
.source "TaskSnapshotSurface.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;,
        Lcom/android/server/wm/TaskSnapshotSurface$Window;
    }
.end annotation


# static fields
.field private static final FLAG_INHERIT_EXCLUDES:I = 0x3186e038

.field private static final MSG_REPORT_DRAW:I = 0x0

.field private static final PRIVATE_FLAG_INHERITS:I = 0x20000

.field private static final SIZE_MISMATCH_MINIMUM_TIME_MS:J = 0x1c2L

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TITLE_FORMAT:Ljava/lang/String; = "SnapshotStartingWindow for taskId=%s"

.field private static sHandler:Landroid/os/Handler;


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mChildSurfaceControl:Landroid/view/SurfaceControl;

.field private final mContentInsets:Landroid/graphics/Rect;

.field private final mFrame:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private mHasDrawn:Z

.field private final mOrientationOnCreation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSession:Landroid/view/IWindowSession;

.field private mShownTime:J

.field private mSizeMismatch:Z

.field private mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private final mStatusBarColor:I

.field private final mSurface:Landroid/view/Surface;

.field final mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mTaskBounds:Landroid/graphics/Rect;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskSnapshotSurface$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotSurface$Window;Landroid/view/Surface;Landroid/app/ActivityManager$TaskSnapshot;Ljava/lang/CharSequence;IIIIIILandroid/graphics/Rect;I)V
    .locals 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mStableInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mContentInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    iget-object v6, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz p6, :cond_0

    move/from16 v7, p6

    goto :goto_0

    :cond_0
    const/4 v7, -0x1

    :goto_0
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v6, p12

    iput-object v6, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTaskBounds:Landroid/graphics/Rect;

    new-instance v13, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    move-object v7, v13

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p9

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;-><init>(IIIII)V

    iput-object v13, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    move/from16 v7, p7

    iput v7, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mStatusBarColor:I

    move/from16 v8, p13

    iput v8, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mOrientationOnCreation:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskSnapshotSurface;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskSnapshotSurface;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHasDrawn:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskSnapshotSurface;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->reportDrawn()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskSnapshotSurface;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mOrientationOnCreation:I

    return v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppWindowToken;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/wm/TaskSnapshotSurface;
    .locals 61

    move-object/from16 v1, p1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object v15, v0

    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-direct {v0}, Lcom/android/server/wm/TaskSnapshotSurface$Window;-><init>()V

    move-object v14, v0

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v13

    invoke-virtual {v14, v13}, Lcom/android/server/wm/TaskSnapshotSurface$Window;->setSession(Landroid/view/IWindowSession;)V

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    move-object/from16 v37, v0

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v12, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v12}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v0

    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    move-object/from16 v32, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v7, p0

    iget-object v5, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/16 v16, 0x0

    if-nez v6, :cond_0

    move/from16 v48, v2

    :try_start_1
    const-string v2, "WindowManager"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move/from16 v49, v3

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v50, v4

    :try_start_3
    const-string v4, "TaskSnapshotSurface.create: Failed to find task for token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    :catchall_0
    move-exception v0

    move-object/from16 v59, v13

    move-object v4, v14

    move-object v7, v15

    move/from16 v2, v48

    :goto_0
    move/from16 v3, v49

    :goto_1
    move-object/from16 v60, v11

    move-object v11, v8

    move-object/from16 v8, v60

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move/from16 v50, v4

    move-object/from16 v59, v13

    move-object v4, v14

    move-object v7, v15

    move/from16 v2, v48

    move/from16 v3, v49

    move-object/from16 v60, v11

    move-object v11, v8

    move-object/from16 v8, v60

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    move/from16 v49, v3

    move/from16 v50, v4

    move-object/from16 v59, v13

    move-object v4, v14

    move-object v7, v15

    move/from16 v2, v48

    move-object/from16 v60, v11

    move-object v11, v8

    move-object/from16 v8, v60

    goto/16 :goto_6

    :cond_0
    move/from16 v48, v2

    move/from16 v49, v3

    move/from16 v50, v4

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopFullscreenAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-nez v2, :cond_1

    :try_start_5
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TaskSnapshotSurface.create: Failed to find top fullscreen for task="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    :cond_1
    :try_start_6
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTopFullscreenWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v0, :cond_5

    if-nez v3, :cond_2

    move-object/from16 v54, v0

    move-object/from16 v55, v2

    move-object/from16 v59, v13

    move-object v4, v14

    move-object v7, v15

    move-object/from16 v60, v11

    move-object v11, v8

    move-object/from16 v8, v60

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v4

    move v7, v4

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v52, v4

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v53, v4

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v4, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v4, 0x3

    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getFormat()I

    move-result v4

    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    const v4, -0x3186e039

    and-int v4, v52, v4

    or-int/lit8 v4, v4, 0x8

    or-int/lit8 v4, v4, 0x10

    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    and-int v4, v53, v4

    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    iput-object v4, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v4, -0x1

    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v7, v15, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const-string v4, "SnapshotStartingWindow for taskId=%s"

    move-object/from16 v54, v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v17, 0x0

    move-object/from16 v55, v2

    iget v2, v6, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v17

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move/from16 v48, v2

    move/from16 v49, v4

    move/from16 v50, v17

    goto :goto_2

    :catchall_3
    move-exception v0

    move v3, v4

    move-object/from16 v59, v13

    move-object v4, v14

    move-object v7, v15

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    move-object/from16 v59, v13

    move-object v4, v14

    move-object v7, v15

    goto/16 :goto_0

    :cond_3
    :goto_2
    :try_start_a
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v2

    invoke-virtual {v6, v4}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    move/from16 v47, v2

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :try_start_b
    iget v0, v14, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mSeq:I

    const/16 v6, 0x8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v17
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    const/16 v18, 0x0

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v54, v4

    move v4, v0

    move-object v5, v15

    move/from16 v51, v7

    move/from16 v7, v17

    move-object/from16 v56, v8

    move-object v8, v11

    move-object/from16 v57, v10

    move-object v10, v9

    move-object/from16 v58, v11

    move-object v11, v9

    move-object/from16 v59, v13

    move-object/from16 v13, v18

    :try_start_c
    invoke-interface/range {v2 .. v13}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;)I

    move-result v0

    if-gez v0, :cond_4

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add snapshot starting window res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0

    return-object v16

    :cond_4
    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v54, v4

    move/from16 v51, v7

    move-object/from16 v56, v8

    move-object/from16 v57, v10

    move-object/from16 v58, v11

    move-object/from16 v59, v13

    :goto_3
    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface;

    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v39

    move-object/from16 v34, v0

    move-object/from16 v35, p0

    move-object/from16 v36, v14

    move-object/from16 v38, p2

    move/from16 v40, v48

    move/from16 v41, v49

    move/from16 v42, v50

    move/from16 v43, v51

    move/from16 v44, v52

    move/from16 v45, v53

    move-object/from16 v46, v54

    invoke-direct/range {v34 .. v47}, Lcom/android/server/wm/TaskSnapshotSurface;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotSurface$Window;Landroid/view/Surface;Landroid/app/ActivityManager$TaskSnapshot;Ljava/lang/CharSequence;IIIIIILandroid/graphics/Rect;I)V

    move-object v2, v0

    invoke-virtual {v14, v2}, Lcom/android/server/wm/TaskSnapshotSurface$Window;->setOuter(Lcom/android/server/wm/TaskSnapshotSurface;)V

    :try_start_d
    iget v0, v14, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mSeq:I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, -0x1

    move-object v4, v14

    move-object/from16 v14, v59

    move-object v7, v15

    move-object v15, v4

    move/from16 v16, v0

    move-object/from16 v17, v7

    move-object/from16 v24, v58

    move-object/from16 v25, v9

    move-object/from16 v26, v57

    move-object/from16 v27, v9

    move-object/from16 v28, v56

    move-object/from16 v29, v9

    move-object/from16 v30, v9

    move-object/from16 v31, v12

    move-object/from16 v33, v37

    :try_start_e
    invoke-interface/range {v14 .. v33}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/Surface;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v4, v14

    move-object v7, v15

    :goto_4
    move-object/from16 v11, v56

    move-object/from16 v10, v57

    move-object/from16 v8, v58

    invoke-virtual {v2, v8, v10, v11}, Lcom/android/server/wm/TaskSnapshotSurface;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-direct {v2}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSnapshot()V

    return-object v2

    :cond_5
    move-object/from16 v54, v0

    move-object/from16 v55, v2

    move-object/from16 v59, v13

    move-object v4, v14

    move-object v7, v15

    move-object/from16 v60, v11

    move-object v11, v8

    move-object/from16 v8, v60

    :goto_5
    :try_start_f
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TaskSnapshotSurface.create: Failed to find main window for token="

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    :catchall_5
    move-exception v0

    move/from16 v2, v48

    move/from16 v3, v49

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object/from16 v59, v13

    move-object v4, v14

    move-object v7, v15

    move-object/from16 v60, v11

    move-object v11, v8

    move-object/from16 v8, v60

    move/from16 v2, v48

    move/from16 v3, v49

    goto :goto_6

    :catchall_7
    move-exception v0

    move/from16 v48, v2

    move/from16 v49, v3

    move/from16 v50, v4

    move-object/from16 v59, v13

    move-object v4, v14

    move-object v7, v15

    move-object/from16 v60, v11

    move-object v11, v8

    move-object/from16 v8, v60

    :goto_6
    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_6
.end method

.method private drawSizeMatchSnapshot(Landroid/graphics/GraphicBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    return-void
.end method

.method private drawSizeMismatchSnapshot(Landroid/graphics/GraphicBuffer;)V
    .locals 7

    new-instance v0, Landroid/view/SurfaceSession;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/view/SurfaceSession;-><init>(Landroid/view/Surface;)V

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v1, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - task-snapshot-surface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->calculateSnapshotCrop()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskSnapshotSurface;->calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->show()V

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v2}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v6, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    nop

    invoke-virtual {v1, p1}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/TaskSnapshotSurface;->drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v4
.end method

.method private drawSnapshot()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drawing snapshot surface sizeMismatch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSizeMismatchSnapshot(Landroid/graphics/GraphicBuffer;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSizeMatchSnapshot(Landroid/graphics/GraphicBuffer;)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHasDrawn:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->reportDrawn()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private reportDrawn()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method


# virtual methods
.method calculateSnapshotCrop()Landroid/graphics/Rect;
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTaskBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    :goto_1
    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v7}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/graphics/Rect;->inset(IIII)V

    return-object v0
.end method

.method calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->scale(F)V

    iget v2, p1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mContentInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->getColorViewLeftInset(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v3, v4, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v7, :cond_1

    move v5, v6

    nop

    :cond_1
    move v4, v5

    if-eqz v3, :cond_4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v5

    iget v5, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mStatusBarColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    const/16 v6, 0xff

    if-ne v5, v6, :cond_2

    int-to-float v5, v2

    :goto_1
    move v8, v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v9, v5

    if-eqz v4, :cond_3

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    :goto_3
    move v10, v5

    goto :goto_4

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    goto :goto_3

    :goto_4
    iget-object v11, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    if-eqz v4, :cond_5

    const/4 v13, 0x0

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v15, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    iget-object v5, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    move-object/from16 v6, p1

    invoke-virtual {v5, v6, v1}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method public remove()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1c2

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;

    invoke-direct {v4, p0}, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;-><init>(Lcom/android/server/wm/TaskSnapshotSurface;)V

    iget-wide v7, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    add-long/2addr v7, v5

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v3, :cond_0

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Defer removing snapshot surface in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    sub-long v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :try_start_2
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    const-string v1, "Removing snapshot surface"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method
