.class public Lcom/android/internal/widget/PointerLocationView;
.super Landroid/view/View;
.source "PointerLocationView.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;,
        Lcom/android/internal/widget/PointerLocationView$PointerState;
    }
.end annotation


# static fields
.field private static final ALT_STRATEGY_PROPERY_KEY:Ljava/lang/String; = "debug.velocitytracker.alt"

.field private static final TAG:Ljava/lang/String; = "Pointer"


# instance fields
.field private final ESTIMATE_FUTURE_POINTS:I

.field private final ESTIMATE_INTERVAL:F

.field private final ESTIMATE_PAST_POINTS:I

.field private mActivePointerId:I

.field private final mAltVelocity:Landroid/view/VelocityTracker;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private final mCurrentPointPaint:Landroid/graphics/Paint;

.field private mHeaderBottom:I

.field private final mIm:Landroid/hardware/input/InputManager;

.field private mMaxNumPointers:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPathPaint:Landroid/graphics/Paint;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/PointerLocationView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintCoords:Z

.field private mReusableOvalRect:Landroid/graphics/RectF;

.field private final mTargetPaint:Landroid/graphics/Paint;

.field private final mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

.field private final mTextBackgroundPaint:Landroid/graphics/Paint;

.field private final mTextLevelPaint:Landroid/graphics/Paint;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mVC:Landroid/view/ViewConfiguration;

.field private final mVelocity:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->ESTIMATE_PAST_POINTS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->ESTIMATE_FUTURE_POINTS:I

    const v0, 0x3ca3d70a    # 0.02f

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->ESTIMATE_INTERVAL:F

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    new-instance v0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-direct {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PointerLocationView;->setFocusableInTouchMode(Z)V

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const/16 v4, 0x80

    invoke-virtual {v1, v4, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    const/16 v4, 0xc0

    invoke-virtual {v1, v4, v2, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v1, 0x60

    invoke-virtual {v0, v2, v3, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    const-string v1, "debug.velocitytracker.alt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Pointer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Comparing default velocity tracker strategy with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/view/VelocityTracker;->obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    :goto_0
    return-void
.end method

.method private drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p6

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p5, v1

    sub-float v2, p2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v2, p5, v1

    add-float/2addr v2, p2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v2, p4, v1

    sub-float v2, p3, v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v1

    add-float/2addr v1, p3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V
    .locals 18

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-virtual/range {p6 .. p6}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    and-int/lit16 v6, v0, 0xff

    const v7, 0xff00

    packed-switch v6, :pswitch_data_0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :pswitch_0
    const-string v6, "HOVER EXIT"

    goto :goto_1

    :pswitch_1
    const-string v6, "HOVER ENTER"

    goto :goto_1

    :pswitch_2
    const-string v6, "SCROLL"

    goto :goto_1

    :pswitch_3
    const-string v6, "HOVER MOVE"

    goto :goto_1

    :pswitch_4
    and-int v6, v0, v7

    shr-int/lit8 v6, v6, 0x8

    if-ne v1, v6, :cond_0

    const-string v6, "UP"

    goto :goto_0

    :cond_0
    const-string v6, "MOVE"

    goto :goto_1

    :pswitch_5
    and-int v6, v0, v7

    shr-int/lit8 v6, v6, 0x8

    if-ne v1, v6, :cond_1

    const-string v6, "DOWN"

    :goto_0
    goto :goto_1

    :cond_1
    const-string v6, "MOVE"

    goto :goto_1

    :pswitch_6
    const-string v6, "OUTSIDE"

    goto :goto_1

    :pswitch_7
    const-string v6, "CANCEL"

    goto :goto_1

    :pswitch_8
    const-string v6, "MOVE"

    goto :goto_1

    :pswitch_9
    const-string v6, "UP"

    goto :goto_1

    :pswitch_a
    const-string v6, "DOWN"

    nop

    :goto_1
    nop

    const-string v7, "Pointer"

    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v9}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    move-object/from16 v10, p1

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v11, " id "

    invoke-virtual {v9, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    add-int/lit8 v12, p5, 0x1

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, ": "

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " ("

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v13, 0x3

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, ", "

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, ") Pressure="

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " Size="

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " TouchMajor="

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " TouchMinor="

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " ToolMajor="

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " ToolMinor="

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " Orientation="

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/high16 v14, 0x43340000    # 180.0f

    mul-float/2addr v12, v14

    float-to-double v13, v12

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v13, v15

    double-to-float v12, v13

    const/4 v13, 0x1

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, "deg"

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " Tilt="

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const/16 v12, 0x19

    invoke-virtual {v2, v12}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v12

    const/high16 v14, 0x43340000    # 180.0f

    mul-float/2addr v12, v14

    float-to-double v13, v12

    div-double/2addr v13, v15

    double-to-float v12, v13

    const/4 v13, 0x1

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, "deg"

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " Distance="

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const/16 v12, 0x18

    invoke-virtual {v2, v12}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v12

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " VScroll="

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const/16 v12, 0x9

    invoke-virtual {v2, v12}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v12

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " HScroll="

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const/16 v12, 0xa

    invoke-virtual {v2, v12}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v12

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " BoundingBox=[("

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const/16 v12, 0x20

    invoke-virtual {v3, v12}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v12

    const/4 v13, 0x3

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, ", "

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const/16 v12, 0x21

    invoke-virtual {v3, v12}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v12

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, ")"

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, ", ("

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const/16 v12, 0x22

    invoke-virtual {v3, v12}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v12

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, ", "

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const/16 v12, 0x23

    invoke-virtual {v3, v12}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v12

    invoke-virtual {v9, v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, ")]"

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " ToolType="

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    invoke-static {v4}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    const-string v12, " ButtonState="

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    invoke-static {v5}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private logInputDeviceState(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private logInputDevices()V
    .locals 4

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget v2, v0, v1

    const-string v3, "Device Enumerated"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v12, 0x0

    move v0, v12

    :goto_0
    move v13, v0

    if-ge v13, v10, :cond_1

    move v0, v12

    :goto_1
    move v14, v0

    if-ge v14, v11, :cond_0

    invoke-virtual {v8, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v8, v14, v13, v0}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    iget-object v4, v7, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    move-object v0, v7

    move-object/from16 v1, p1

    move v2, v9

    move v3, v14

    move v5, v15

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    add-int/lit8 v0, v14, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v13, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_2
    if-ge v12, v11, :cond_2

    invoke-virtual {v8, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v8, v12, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget-object v4, v7, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    move-object v0, v7

    move-object/from16 v1, p1

    move v2, v9

    move v3, v12

    move v5, v13

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private static shouldLogKey(I)Z
    .locals 2

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :pswitch_0
    return v0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->logInputDevices()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 36

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v10

    div-int/lit8 v11, v10, 0x7

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    const/4 v6, 0x1

    add-int/lit8 v12, v0, 0x1

    iget v13, v8, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    iget v0, v8, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    const/4 v15, 0x0

    if-ltz v0, :cond_5

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    iget v1, v8, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/internal/widget/PointerLocationView$PointerState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    add-int/lit8 v0, v11, -0x1

    int-to-float v3, v0

    int-to-float v4, v13

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object v0, v9

    move-object v7, v5

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, "P: "

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v12

    iget-object v2, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v9, v0, v5, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v16

    iget-boolean v0, v8, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v0, :cond_0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez v16, :cond_2

    :cond_1
    int-to-float v1, v11

    const/4 v2, 0x0

    mul-int/lit8 v0, v11, 0x2

    sub-int/2addr v0, v6

    int-to-float v3, v0

    int-to-float v4, v13

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object v0, v9

    move/from16 v19, v5

    move-object/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, "X: "

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int v1, v6, v11

    int-to-float v1, v1

    int-to-float v2, v12

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    mul-int/lit8 v0, v11, 0x2

    int-to-float v1, v0

    const/4 v2, 0x0

    mul-int/lit8 v0, v11, 0x3

    sub-int/2addr v0, v6

    int-to-float v3, v0

    int-to-float v4, v13

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, "Y: "

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v11, 0x2

    add-int/2addr v1, v6

    int-to-float v1, v1

    int-to-float v2, v12

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_2
    move/from16 v19, v5

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v0

    add-int/lit8 v1, v16, -0x1

    aget v0, v0, v1

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v1

    aget v1, v1, v15

    sub-float v5, v0, v1

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v0

    add-int/lit8 v1, v16, -0x1

    aget v0, v0, v1

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v1

    aget v1, v1, v15

    sub-float v4, v0, v1

    int-to-float v1, v11

    const/4 v2, 0x0

    mul-int/lit8 v0, v11, 0x2

    sub-int/2addr v0, v6

    int-to-float v3, v0

    int-to-float v0, v13

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v18

    iget-object v15, v8, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    invoke-virtual {v15}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v15

    int-to-float v15, v15

    cmpg-float v15, v18, v15

    if-gez v15, :cond_3

    iget-object v15, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_3
    iget-object v15, v8, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    :goto_0
    move/from16 v18, v0

    move-object v0, v9

    move/from16 v21, v4

    move/from16 v4, v18

    move v6, v5

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, "dX: "

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int v2, v1, v11

    int-to-float v1, v2

    int-to-float v2, v12

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    mul-int/lit8 v0, v11, 0x2

    int-to-float v1, v0

    const/4 v2, 0x0

    mul-int/lit8 v0, v11, 0x3

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v13

    move/from16 v15, v21

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_4

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    :goto_1
    move-object v5, v0

    goto :goto_2

    :cond_4
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    goto :goto_1

    :goto_2
    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, "dY: "

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v2, v11, 0x2

    add-int/2addr v2, v1

    int-to-float v1, v2

    int-to-float v2, v12

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_3
    mul-int/lit8 v0, v11, 0x3

    int-to-float v1, v0

    const/4 v2, 0x0

    mul-int/lit8 v0, v11, 0x4

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v13

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, "Xv: "

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v1

    const/4 v6, 0x3

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v11, 0x3

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v12

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    mul-int/lit8 v0, v11, 0x4

    int-to-float v1, v0

    const/4 v2, 0x0

    mul-int/lit8 v0, v11, 0x5

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v13

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, "Yv: "

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v11, 0x4

    const/4 v2, 0x1

    add-int v6, v2, v1

    int-to-float v1, v6

    int-to-float v2, v12

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    mul-int/lit8 v0, v11, 0x5

    int-to-float v1, v0

    const/4 v2, 0x0

    mul-int/lit8 v0, v11, 0x6

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v13

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-int/lit8 v0, v11, 0x5

    int-to-float v1, v0

    mul-int/lit8 v0, v11, 0x5

    int-to-float v0, v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    int-to-float v4, v11

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    sub-float v3, v0, v19

    int-to-float v4, v13

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, "Prs: "

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v11, 0x5

    const/4 v2, 0x1

    add-int v6, v2, v1

    int-to-float v1, v6

    int-to-float v2, v12

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    mul-int/lit8 v0, v11, 0x6

    int-to-float v1, v0

    const/4 v2, 0x0

    int-to-float v3, v10

    int-to-float v4, v13

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-int/lit8 v0, v11, 0x6

    int-to-float v1, v0

    mul-int/lit8 v0, v11, 0x6

    int-to-float v0, v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    int-to-float v4, v11

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    sub-float v3, v0, v19

    int-to-float v4, v13

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    const-string v1, "Size: "

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v11, 0x6

    const/4 v2, 0x1

    add-int v6, v2, v1

    int-to-float v1, v6

    int-to-float v2, v12

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    const/4 v0, 0x0

    :goto_4
    move v15, v0

    if-ge v15, v14, :cond_12

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0x80

    move/from16 v23, v10

    const/16 v10, 0xff

    invoke-virtual {v4, v10, v5, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    move v4, v0

    move/from16 v18, v2

    move/from16 v16, v3

    const/4 v0, 0x0

    move v3, v1

    :goto_5
    move v2, v0

    if-ge v2, v6, :cond_9

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v0

    aget v1, v0, v2

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v0

    aget v19, v0, v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    nop

    move/from16 v18, v0

    move/from16 v24, v2

    move/from16 v25, v11

    move/from16 v26, v12

    move v12, v5

    goto :goto_8

    :cond_6
    if-eqz v18, :cond_8

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object v0, v9

    move/from16 v22, v1

    move v1, v4

    move/from16 v24, v2

    move v2, v3

    move v10, v3

    move/from16 v3, v22

    move/from16 v25, v11

    move v11, v4

    move/from16 v4, v19

    move/from16 v26, v12

    move v12, v5

    move-object/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$700(Lcom/android/internal/widget/PointerLocationView$PointerState;)[Z

    move-result-object v0

    aget-boolean v0, v0, v24

    if-eqz v0, :cond_7

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    goto :goto_6

    :cond_7
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    :goto_6
    invoke-virtual {v9, v11, v10, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    const/16 v16, 0x1

    goto :goto_7

    :cond_8
    move/from16 v22, v1

    move/from16 v24, v2

    move v10, v3

    move/from16 v25, v11

    move/from16 v26, v12

    move v11, v4

    move v12, v5

    :goto_7
    move/from16 v4, v22

    move/from16 v3, v19

    const/4 v0, 0x1

    move/from16 v18, v0

    :goto_8
    add-int/lit8 v0, v24, 0x1

    move v5, v12

    move/from16 v11, v25

    move/from16 v12, v26

    const/16 v10, 0xff

    goto :goto_5

    :cond_9
    move v10, v3

    move/from16 v25, v11

    move/from16 v26, v12

    move v11, v4

    move v12, v5

    if-eqz v16, :cond_c

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v12, v1, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v0

    const v5, -0x425c28f6    # -0.08f

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v1

    const/16 v19, -0x3

    move/from16 v21, v0

    move/from16 v22, v1

    move/from16 v0, v19

    :goto_9
    move v4, v0

    const v24, 0x3ca3d70a    # 0.02f

    const/4 v0, 0x2

    if-gt v4, v0, :cond_a

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v0

    int-to-float v1, v4

    mul-float v1, v1, v24

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v27

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v0

    int-to-float v1, v4

    mul-float v1, v1, v24

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v24

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v0, v9

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v28, v3

    move/from16 v3, v27

    move/from16 v29, v4

    move/from16 v4, v24

    move-object/from16 v5, v28

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v21, v27

    move/from16 v22, v24

    add-int/lit8 v0, v29, 0x1

    const v5, -0x425c28f6    # -0.08f

    goto :goto_9

    :cond_a
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0x40

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v1, v5, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v0

    const/high16 v27, 0x41800000    # 16.0f

    mul-float v28, v0, v27

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v0

    mul-float v29, v0, v27

    add-float v3, v11, v28

    add-float v4, v10, v29

    iget-object v2, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v0, v9

    move v1, v11

    move-object/from16 v31, v2

    move v2, v10

    move-object/from16 v5, v31

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1, v12, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v0

    const v1, -0x425c28f6    # -0.08f

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v1

    move/from16 v21, v0

    move/from16 v22, v1

    :goto_a
    move/from16 v5, v19

    const/4 v4, 0x2

    if-gt v5, v4, :cond_b

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v0

    int-to-float v1, v5

    mul-float v1, v1, v24

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v17

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v0

    int-to-float v1, v5

    mul-float v1, v1, v24

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v19

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v0, v9

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v30, v3

    move/from16 v3, v17

    move/from16 v31, v4

    move/from16 v4, v19

    move/from16 v32, v5

    move-object/from16 v5, v30

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v21, v17

    move/from16 v22, v19

    add-int/lit8 v19, v32, 0x1

    goto :goto_a

    :cond_b
    move/from16 v31, v4

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2, v1, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1000(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v0

    mul-float v17, v0, v27

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1100(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v0

    mul-float v19, v0, v27

    add-float v3, v11, v17

    add-float v4, v10, v19

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v0, v9

    move v1, v11

    move v2, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_c
    const/16 v31, 0x2

    :goto_b
    iget-boolean v0, v8, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v0, :cond_10

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v2, 0x0

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v3, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v5, v0

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    rsub-int v2, v5, 0xff

    invoke-virtual {v0, v1, v5, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    rsub-int v2, v5, 0xff

    invoke-virtual {v0, v1, v5, v2, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    invoke-static {v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iget-object v12, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move/from16 v17, v0

    move-object v0, v8

    move/from16 v19, v1

    move-object v1, v9

    move/from16 v33, v10

    move v10, v5

    move/from16 v5, v19

    move/from16 v19, v6

    move/from16 v6, v17

    move/from16 v34, v11

    move/from16 v35, v13

    move/from16 v13, v31

    move-object v11, v7

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    rsub-int v2, v10, 0xff

    const/16 v3, 0x80

    invoke-virtual {v0, v1, v10, v3, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v5, v0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v6, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iget-object v7, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v0, v8

    move-object v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_d

    const/high16 v0, 0x41a00000    # 20.0f

    :cond_d
    move v6, v0

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v10, v1, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    float-to-double v2, v6

    mul-double/2addr v0, v2

    double-to-float v12, v0

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    neg-double v0, v0

    float-to-double v2, v6

    mul-double/2addr v0, v2

    double-to-float v5, v0

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1200(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v0

    if-eq v0, v13, :cond_f

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1200(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    move/from16 v20, v5

    goto :goto_c

    :cond_e
    nop

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v1, v0, v12

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float v2, v0, v5

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v3, v0, v12

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v4, v0, v5

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object v0, v9

    move/from16 v20, v5

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_f
    move/from16 v20, v5

    :goto_c
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v3, v0, v12

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v4, v0, v20

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_d
    nop

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v5, v0

    nop

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v1, v12, v5

    add-float/2addr v0, v1

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v2, v20, v5

    add-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1300(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1400(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v1

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v3

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1700(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v4

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object v0, v9

    move/from16 v21, v5

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_e

    :cond_10
    move/from16 v35, v13

    move/from16 v13, v31

    const/4 v7, 0x0

    :cond_11
    :goto_e
    add-int/lit8 v0, v15, 0x1

    move/from16 v10, v23

    move/from16 v11, v25

    move/from16 v12, v26

    move/from16 v13, v35

    goto/16 :goto_4

    :cond_12
    move/from16 v23, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v35, v13

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->onPointerEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    const-string v1, "Joystick"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    const-string v1, "Position"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    const-string v1, "Generic"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public onInputDeviceAdded(I)V
    .locals 1

    const-string v0, "Device Added"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1

    const-string v0, "Device Changed"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    const-string v0, "Device Removed"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key Down: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key Repeat #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Pointer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key Up: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v10, 0x20

    const v11, 0xff00

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v9, :cond_1

    and-int/lit16 v1, v9, 0xff

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v14, v0

    goto/16 :goto_5

    :cond_1
    :goto_1
    and-int v1, v9, v11

    shr-int/lit8 v1, v1, 0x8

    if-nez v9, :cond_3

    move v2, v12

    :goto_2
    if-ge v2, v0, :cond_2

    iget-object v3, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-virtual {v3}, Lcom/android/internal/widget/PointerLocationView$PointerState;->clearTrace()V

    invoke-static {v3, v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iput-boolean v13, v7, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    iput v12, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    iput v12, v7, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    iget-object v2, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    iget-object v2, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_3

    iget-object v2, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    :cond_3
    iget v2, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    add-int/2addr v2, v13

    iput v2, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    iget v2, v7, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    iget v3, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    if-ge v2, v3, :cond_4

    iget v2, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    iput v2, v7, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    :cond_4
    invoke-virtual {v8, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    :goto_3
    if-gt v0, v2, :cond_5

    new-instance v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v3}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    iget-object v4, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget v3, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ltz v3, :cond_6

    iget-object v3, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    iget v4, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-static {v3}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    iput v2, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    :cond_7
    iget-object v3, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-static {v3, v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4, v10}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v5

    if-eqz v5, :cond_8

    move v5, v13

    goto :goto_4

    :cond_8
    nop

    move v5, v12

    :goto_4
    invoke-static {v3, v5}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1302(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    goto/16 :goto_0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v6

    move v0, v12

    :goto_6
    move v5, v0

    const/16 v16, 0x0

    if-ge v5, v6, :cond_f

    move v0, v12

    :goto_7
    move v4, v0

    if-ge v4, v15, :cond_e

    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget-boolean v0, v7, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v0, :cond_a

    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    goto :goto_8

    :cond_a
    move-object/from16 v0, v16

    :goto_8
    move-object v2, v0

    if-eqz v2, :cond_b

    invoke-static {v2}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    goto :goto_9

    :cond_b
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    :goto_9
    move-object v1, v0

    invoke-virtual {v8, v4, v5, v1}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    iget-boolean v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v0, :cond_c

    const-string v17, "Pointer"

    move-object v0, v7

    move-object/from16 v18, v1

    move-object/from16 v1, v17

    move-object v11, v2

    move v2, v9

    move/from16 v17, v3

    move v3, v4

    move/from16 v19, v4

    move-object/from16 v4, v18

    move/from16 v20, v5

    move/from16 v5, v17

    move/from16 v21, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    goto :goto_a

    :cond_c
    move-object/from16 v18, v1

    move-object v11, v2

    move/from16 v17, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    :goto_a
    if-eqz v11, :cond_d

    move-object/from16 v0, v18

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v11, v1, v2, v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    :cond_d
    add-int/lit8 v0, v19, 0x1

    move/from16 v5, v20

    move/from16 v6, v21

    const v11, 0xff00

    goto :goto_7

    :cond_e
    move/from16 v20, v5

    move/from16 v21, v6

    add-int/lit8 v0, v20, 0x1

    const v11, 0xff00

    goto :goto_6

    :cond_f
    move/from16 v21, v6

    move v0, v12

    :goto_b
    move v11, v0

    if-ge v11, v15, :cond_15

    invoke-virtual {v8, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget-boolean v0, v7, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v0, :cond_10

    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    goto :goto_c

    :cond_10
    move-object/from16 v0, v16

    :goto_c
    move-object v5, v0

    if-eqz v5, :cond_11

    invoke-static {v5}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    goto :goto_d

    :cond_11
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    :goto_d
    move-object v4, v0

    invoke-virtual {v8, v11, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget-boolean v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v0, :cond_12

    const-string v1, "Pointer"

    move-object v0, v7

    move v2, v9

    move v3, v11

    move-object/from16 v22, v4

    move-object v12, v5

    move v5, v6

    move v10, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    goto :goto_e

    :cond_12
    move-object/from16 v22, v4

    move-object v12, v5

    move v10, v6

    :goto_e
    if-eqz v12, :cond_14

    move-object/from16 v0, v22

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v12, v1, v2, v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    iget-object v1, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v10}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    iget-object v1, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    iget-object v1, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/view/VelocityTracker;->getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z

    iget-object v1, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_13

    iget-object v1, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v10}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1002(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    iget-object v1, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1102(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    iget-object v1, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/view/VelocityTracker;->getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z

    :cond_13
    invoke-virtual {v8, v11}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1202(Lcom/android/internal/widget/PointerLocationView$PointerState;I)I

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1300(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v1, 0x20

    invoke-virtual {v8, v1, v11}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v2

    invoke-static {v12, v2}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1402(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    const/16 v2, 0x21

    invoke-virtual {v8, v2, v11}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v2

    invoke-static {v12, v2}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    const/16 v2, 0x22

    invoke-virtual {v8, v2, v11}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v2

    invoke-static {v12, v2}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    const/16 v2, 0x23

    invoke-virtual {v8, v2, v11}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v2

    invoke-static {v12, v2}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1702(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    goto :goto_f

    :cond_14
    const/16 v1, 0x20

    :goto_f
    add-int/lit8 v0, v11, 0x1

    move v10, v1

    const/4 v12, 0x0

    goto/16 :goto_b

    :cond_15
    const/4 v0, 0x3

    if-eq v9, v13, :cond_16

    if-eq v9, v0, :cond_16

    and-int/lit16 v1, v9, 0xff

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1c

    :cond_16
    const v1, 0xff00

    and-int/2addr v1, v9

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-lt v2, v14, :cond_17

    const-string v0, "Pointer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got pointer ID out of bounds: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " arraysize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pointerindex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " action=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    iget-object v3, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    if-eq v9, v13, :cond_1b

    if-ne v9, v0, :cond_18

    goto :goto_11

    :cond_18
    iget v0, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    sub-int/2addr v0, v13

    iput v0, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    iget v0, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ne v0, v2, :cond_1a

    if-nez v1, :cond_19

    goto :goto_10

    :cond_19
    const/4 v13, 0x0

    :goto_10
    invoke-virtual {v8, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    :cond_1a
    const/high16 v0, 0x7fc00000    # NaNf

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v0, v4}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    goto :goto_12

    :cond_1b
    :goto_11
    const/4 v4, 0x0

    iput-boolean v4, v7, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    iput v4, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    :cond_1c
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->onPointerEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->requestFocus()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "Trackball"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public setPrintCoords(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    return-void
.end method
