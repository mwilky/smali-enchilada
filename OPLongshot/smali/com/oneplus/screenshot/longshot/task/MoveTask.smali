.class public Lcom/oneplus/screenshot/longshot/task/MoveTask;
.super Landroid/os/AsyncTask;
.source "MoveTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;,
        Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.MoveTask"

.field private static final mCheckLock:Ljava/lang/Object;


# instance fields
.field inputSource:I

.field private mCanRunTask:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentScreenPart:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field private mLastScreenPart:Landroid/graphics/Bitmap;

.field private mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

.field private mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

.field private mPartScreenshotMatchTimes:I

.field mScreenInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCheckLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    new-instance v0, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->inputSource:I

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    iput-object p3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCheckLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/task/MoveTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/task/MoveTask;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->checkCanScrollInternal(I)V

    return-void
.end method

.method private checkCanScroll(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private checkCanScrollInternal(I)V
    .locals 6

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getPartScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Longshot.MoveTask"

    const-string v1, "mLastScreenPart is already recycled, don\'t compare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "Longshot.MoveTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check overscroll:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    new-instance v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LastScreenPart_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    new-instance v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScreenPart_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iput v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    nop

    :goto_0
    move v1, v2

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_1
    nop

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    return-void

    :cond_3
    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    return-void
.end method

.method private compare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private getPartScreenshot()Landroid/graphics/Bitmap;
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    const/16 v3, 0x438

    const/16 v4, 0x320

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v1, 0x438

    const/16 v2, 0x12c

    const/4 v3, 0x0

    const v4, 0xf4240

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static final getSource(II)I
    .locals 1

    if-nez p0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method private gettraceBitmaps()[Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->getMoveTraceBitmap()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private injectMotionEvent(IIJFFF)V
    .locals 20

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide/from16 v6, p3

    move/from16 v10, p2

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-static/range {v6 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v6

    const/high16 v0, 0x10000000

    or-int v0, p1, v0

    invoke-virtual {v6, v0}, Landroid/view/MotionEvent;->setSource(I)V

    const/4 v8, 0x1

    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v9, 0x2

    invoke-virtual {v0, v6, v9}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v8, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    goto :goto_1

    :catch_1
    move-exception v0

    sput-boolean v8, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private static final lerp(FFF)F
    .locals 1

    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private sendSwipe(III)V
    .locals 30

    move-object/from16 v8, p0

    const/16 v0, 0x1002

    move/from16 v1, p1

    invoke-static {v1, v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getSource(II)I

    move-result v9

    if-gez p2, :cond_0

    const/16 v0, 0x12c

    move v10, v0

    goto :goto_0

    :cond_0
    move/from16 v10, p2

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v13, v0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v14, v0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    const/4 v2, 0x0

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v3

    int-to-float v5, v13

    int-to-float v6, v14

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, v8

    move v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    move-wide v15, v11

    int-to-long v0, v10

    add-long v17, v15, v0

    const/4 v0, 0x0

    iget-object v1, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getEnd()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    move v7, v0

    :goto_1
    move v6, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long v3, v11, v15

    long-to-float v0, v3

    int-to-float v1, v10

    div-float v5, v0, v1

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    int-to-float v1, v14

    int-to-float v2, v6

    invoke-static {v1, v2, v5}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->lerp(FFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v13, v1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->set(II)V

    cmp-long v0, v11, v17

    if-gtz v0, :cond_5

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->canMove()Z

    move-result v0

    if-nez v0, :cond_1

    move-wide/from16 v25, v3

    move/from16 v19, v5

    move/from16 v27, v6

    move/from16 v28, v10

    move v10, v7

    goto/16 :goto_3

    :cond_1
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v19

    int-to-float v1, v13

    int-to-float v0, v14

    int-to-float v2, v6

    invoke-static {v0, v2, v5}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->lerp(FFF)F

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    move-object v0, v8

    move/from16 v24, v1

    move v1, v9

    const/4 v2, 0x2

    move-wide/from16 v25, v3

    move-wide/from16 v3, v19

    move/from16 v19, v5

    move/from16 v5, v24

    move/from16 v27, v6

    move/from16 v6, v22

    move/from16 v28, v10

    move v10, v7

    move/from16 v7, v23

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v5, v19, v0

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr v5, v0

    int-to-float v0, v10

    cmpl-float v0, v5, v0

    if-lez v0, :cond_2

    invoke-direct {v8, v10}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->checkCanScroll(I)V

    add-int/lit8 v7, v10, 0x1

    move v10, v7

    :cond_2
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->isOverScroll()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    nop

    move v7, v10

    move/from16 v1, v27

    move/from16 v10, v28

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v2, 0x3

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v3

    int-to-float v5, v13

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v0, v0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    int-to-float v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, v8

    move v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->setOverScroll(Z)V

    const-string v0, "Longshot.MoveTask"

    const-string v1, "Overscroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    move-wide/from16 v25, v3

    move/from16 v19, v5

    move/from16 v27, v6

    move/from16 v28, v10

    move v10, v7

    :goto_3
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    move/from16 v7, v27

    invoke-virtual {v0, v13, v7}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->set(II)V

    const/4 v6, 0x0

    move v0, v6

    :goto_4
    move v5, v0

    move/from16 v3, p3

    if-ge v5, v3, :cond_6

    const/4 v2, 0x2

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v20

    int-to-float v4, v13

    int-to-float v1, v7

    const/high16 v22, 0x3f800000    # 1.0f

    move-object v0, v8

    move/from16 v23, v1

    move v1, v9

    move/from16 v24, v4

    move-wide/from16 v3, v20

    move/from16 v20, v5

    move/from16 v5, v24

    move/from16 v6, v23

    move/from16 v29, v10

    move v10, v7

    move/from16 v7, v22

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    add-int/lit8 v0, v20, 0x1

    move v7, v10

    move/from16 v10, v29

    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    move/from16 v29, v10

    move v10, v7

    const/4 v0, 0x0

    iput v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    const/4 v2, 0x1

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v3

    int-to-float v5, v13

    int-to-float v6, v10

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, v8

    move v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    return-void
.end method

.method private storeImage(Landroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)V
    .locals 2

    const-string v0, "Longshot.MoveTask"

    const-string v1, "storeImage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    return-void
.end method


# virtual methods
.method public checkTraceBitmap()V
    .locals 12

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->gettraceBitmaps()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getTraingBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    aget-object v6, v0, v3

    invoke-direct {v5, p0, v4, v6}, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const-string v4, ""

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v6, v6, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v7, v7, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v7}, Lcom/oneplus/screenshot/util/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v4, :cond_2

    move-object v4, v6

    move-object v5, v7

    goto :goto_2

    :cond_2
    invoke-direct {p0, v4, v6}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->compare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v8

    const-string v9, "Longshot.MoveTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " compare targetFileName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " compareFileName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " result:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    nop

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, v3, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, v3, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 5

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getPartScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->setThreadPriority()V

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->reset()V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->setDownTime(J)V

    const-string v0, "Longshot.MoveTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin to move, x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v3, v3, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v3, v3, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", keep="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->inputSource:I

    const/16 v3, 0x320

    invoke-direct {p0, v2, v3, v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->sendSwipe(III)V

    const-string v2, "Longshot.MoveTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "move up, x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v4, v4, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v4, v4, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v4}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->isOverScroll()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method getTraingBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->getStitchLastTraceBitmapFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    return-object v1
.end method

.method protected onCancelled()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->shouldDumpForMove()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Longshot.MoveTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " info.mBitmap.save:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v5}, Lcom/oneplus/screenshot/util/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->storeImage(Landroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)V

    goto :goto_1

    :cond_0
    const-string v3, "Longshot.MoveTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " info.mBitmap.isRecycled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v5}, Lcom/oneplus/screenshot/util/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->onMoveFinished()V

    :cond_2
    sget-object v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCheckLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    nop

    :goto_2
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    return-void
.end method
