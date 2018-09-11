.class public Lcom/oneplus/settings/opfinger/SvgView;
.super Landroid/view/View;
.source "SvgView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SvgView"


# instance fields
.field private mDuration:I

.field private mFadeFactor:F

.field private mHaveMoved:Z

.field private mLoader:Ljava/lang/Thread;

.field private mOffsetY:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mParallax:F

.field private mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase:F

.field private final mSvg:Lcom/oneplus/settings/opfinger/SvgHelper;

.field private mSvgAnimator:Landroid/animation/ObjectAnimator;

.field private mSvgExceptionAnimator:Landroid/animation/ObjectAnimator;

.field private final mSvgLock:Ljava/lang/Object;

.field private mSvgResetAnimator:Landroid/animation/ObjectAnimator;

.field private mSvgResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/opfinger/SvgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    move-object/from16 v1, p0

    .line 56
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Lcom/oneplus/settings/opfinger/SvgView;->mPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Lcom/oneplus/settings/opfinger/SvgHelper;

    iget-object v3, v1, Lcom/oneplus/settings/opfinger/SvgView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Lcom/oneplus/settings/opfinger/SvgHelper;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, v1, Lcom/oneplus/settings/opfinger/SvgView;->mSvg:Lcom/oneplus/settings/opfinger/SvgHelper;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/oneplus/settings/opfinger/SvgView;->mSvgLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lcom/oneplus/settings/opfinger/SvgView;->mParallax:F

    .line 49
    iput-boolean v3, v1, Lcom/oneplus/settings/opfinger/SvgView;->mHaveMoved:Z

    .line 58
    iget-object v4, v1, Lcom/oneplus/settings/opfinger/SvgView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    sget-object v4, Lcom/android/settings/R$styleable;->SvgView:[I

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual {v5, v6, v4, v7, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 63
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x4

    if-eqz v4, :cond_1

    .line 67
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/opfinger/SvgView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 68
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    iget-object v10, v1, Lcom/oneplus/settings/opfinger/SvgView;->mPaint:Landroid/graphics/Paint;

    iget v11, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit8 v11, v11, 0x32

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iget-object v10, v1, Lcom/oneplus/settings/opfinger/SvgView;->mPaint:Landroid/graphics/Paint;

    const/4 v11, 0x2

    const/high16 v12, -0x1000000

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    invoke-virtual {v4, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v1, Lcom/oneplus/settings/opfinger/SvgView;->mPhase:F

    .line 73
    const/16 v0, 0xfa0

    invoke-virtual {v4, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    .line 74
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {v4, v2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v1, Lcom/oneplus/settings/opfinger/SvgView;->mFadeFactor:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "metrics":Landroid/util/DisplayMetrics;
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_0

    .line 78
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    throw v0

    .line 77
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 78
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    :cond_2
    iget-object v0, v1, Lcom/oneplus/settings/opfinger/SvgView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 88
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x42c80000    # 100.0f

    const/high16 v13, 0x42c80000    # 100.0f

    new-array v14, v8, [I

    fill-array-data v14, :array_0

    const/4 v15, 0x0

    sget-object v16, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 104
    .local v0, "mShader":Landroid/graphics/Shader;
    return-void

    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
        -0x100
    .end array-data
.end method

.method static synthetic access$000(Lcom/oneplus/settings/opfinger/SvgView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/SvgView;

    .line 27
    iget v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResource:I

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/opfinger/SvgView;)Lcom/oneplus/settings/opfinger/SvgHelper;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/SvgView;

    .line 27
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvg:Lcom/oneplus/settings/opfinger/SvgHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/opfinger/SvgView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/SvgView;

    .line 27
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/opfinger/SvgView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/SvgView;
    .param p1, "x1"    # Ljava/util/List;

    .line 27
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oneplus/settings/opfinger/SvgView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/SvgView;

    .line 27
    invoke-direct {p0}, Lcom/oneplus/settings/opfinger/SvgView;->updatePathsPhaseLocked()V

    return-void
.end method

.method private updatePathsPhaseLocked()V
    .locals 8

    .line 107
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 108
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 109
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;

    .line 110
    .local v2, "svgPath":Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;
    iget-object v3, v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->renderPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 111
    iget-object v3, v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->measure:Landroid/graphics/PathMeasure;

    iget v4, v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->length:F

    iget v5, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPhase:F

    mul-float/2addr v4, v5

    iget-object v5, v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->renderPath:Landroid/graphics/Path;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 114
    iget-object v3, v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->renderPath:Landroid/graphics/Path;

    invoke-virtual {v3, v7, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 108
    .end local v2    # "svgPath":Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getParallax()F
    .locals 1

    .line 119
    iget v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mParallax:F

    return v0
.end method

.method public getPhase()F
    .locals 1

    .line 128
    iget v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPhase:F

    return v0
.end method

.method public getSvgResource()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResource:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 176
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 178
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 180
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/settings/opfinger/SvgView;->mOffsetY:F

    add-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 181
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 182
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 183
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;

    .line 186
    .local v3, "svgPath":Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;
    iget v4, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPhase:F

    iget v5, p0, Lcom/oneplus/settings/opfinger/SvgView;->mFadeFactor:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 187
    .local v4, "alpha":I
    iget-object v5, v3, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->paint:Landroid/graphics/Paint;

    int-to-float v6, v4

    iget v7, p0, Lcom/oneplus/settings/opfinger/SvgView;->mParallax:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 189
    iget-object v5, v3, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->renderPath:Landroid/graphics/Path;

    iget-object v6, v3, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 182
    .end local v3    # "svgPath":Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;
    .end local v4    # "alpha":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 192
    .end local v1    # "count":I
    monitor-exit v0

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 151
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mLoader:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mLoader:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "SvgView"

    const-string v2, "Unexpected error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/opfinger/SvgView$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/settings/opfinger/SvgView$1;-><init>(Lcom/oneplus/settings/opfinger/SvgView;II)V

    const-string v2, "SVG Loader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mLoader:Ljava/lang/Thread;

    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mLoader:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 172
    return-void
.end method

.method public reset(Z)V
    .locals 3
    .param p1, "force"    # Z

    .line 253
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 254
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    .line 255
    const-string v1, "phase"

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    .line 257
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 258
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_1

    .line 261
    const-string v1, "phase"

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    .line 263
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 264
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 267
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mHaveMoved:Z

    .line 268
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->invalidate()V

    .line 269
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public resetWithAnimation()V
    .locals 3

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    .line 286
    const-string v0, "phase"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    .line 287
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 288
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mHaveMoved:Z

    .line 290
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public resetWithoutAnimation()V
    .locals 3

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    .line 297
    const-string v0, "phase"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    .line 298
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 299
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mHaveMoved:Z

    .line 301
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public reveal(Landroid/view/View;I)V
    .locals 4
    .param p1, "scroller"    # Landroid/view/View;
    .param p2, "parentBottom"    # I

    .line 237
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 238
    const-string v0, "phase"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    .line 239
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 240
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 242
    :cond_0
    iget v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mOffsetY:F

    .line 243
    .local v0, "previousOffset":F
    const/4 v1, 0x0

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int v3, p2, v3

    sub-int/2addr v2, v3

    .line 243
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mOffsetY:F

    .line 245
    iget v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mOffsetY:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->invalidate()V

    .line 247
    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public reveal(Z)V
    .locals 6
    .param p1, "success"    # Z

    .line 196
    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mHaveMoved:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_1

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    .line 198
    const-string v0, "phase"

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    .line 199
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    iget v4, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 202
    const-string v0, "phase"

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 204
    .local v0, "mSvgAnimator1":Landroid/animation/ObjectAnimator;
    iget v4, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 207
    if-eqz p1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 210
    :cond_0
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 211
    .local v4, "set":Landroid/animation/AnimatorSet;
    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    aput-object v5, v3, v1

    aput-object v0, v3, v2

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 212
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 215
    .end local v0    # "mSvgAnimator1":Landroid/animation/ObjectAnimator;
    .end local v4    # "set":Landroid/animation/AnimatorSet;
    :goto_0
    goto :goto_1

    .line 216
    :cond_1
    const-string v0, "phase"

    new-array v4, v3, [F

    fill-array-data v4, :array_2

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    .line 217
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    iget v4, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 219
    const-string v0, "phase"

    new-array v4, v3, [F

    fill-array-data v4, :array_3

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 221
    .restart local v0    # "mSvgAnimator1":Landroid/animation/ObjectAnimator;
    iget v4, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 224
    if-eqz p1, :cond_2

    .line 225
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 227
    :cond_2
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 228
    .restart local v4    # "set":Landroid/animation/AnimatorSet;
    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    aput-object v5, v3, v1

    aput-object v0, v3, v2

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 229
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 232
    .end local v0    # "mSvgAnimator1":Landroid/animation/ObjectAnimator;
    .end local v4    # "set":Landroid/animation/AnimatorSet;
    :goto_1
    iput-boolean v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mHaveMoved:Z

    .line 234
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public revealWithoutAnimation()V
    .locals 3

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    .line 276
    const-string v0, "phase"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    .line 277
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 278
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 279
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setParallax(F)V
    .locals 0
    .param p1, "parallax"    # F

    .line 123
    iput p1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mParallax:F

    .line 124
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->invalidate()V

    .line 125
    return-void
.end method

.method public setPhase(F)V
    .locals 2
    .param p1, "phase"    # F

    .line 132
    iput p1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPhase:F

    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/settings/opfinger/SvgView;->updatePathsPhaseLocked()V

    .line 135
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/SvgView;->invalidate()V

    .line 137
    return-void

    .line 135
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setSvgResource(I)V
    .locals 0
    .param p1, "svgResource"    # I

    .line 144
    iput p1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResource:I

    .line 145
    return-void
.end method
