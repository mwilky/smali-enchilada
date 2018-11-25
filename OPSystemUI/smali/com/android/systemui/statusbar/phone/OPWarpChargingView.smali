.class public Lcom/android/systemui/statusbar/phone/OPWarpChargingView;
.super Landroid/widget/FrameLayout;
.source "OPWarpChargingView.java"


# static fields
.field private static final ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

.field private static mRes:Landroid/content/res/Resources;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isAnimationStart:Z

.field private mAssetLoaded:Z

.field private mAssetLoading:Z

.field private mAssetReleasing:Z

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBatteryLevel:Landroid/widget/TextView;

.field private mChargeAnimation:Landroid/animation/AnimatorSet;

.field private mChargingAnimationController:Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInfoView:Landroid/view/View;

.field private mIsPaddingStartAnimation:Z

.field private mPlugin:Z

.field mStartAnimationAssets1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaper:Landroid/graphics/Bitmap;

.field private mWallpaperView:Landroid/widget/ImageView;

.field private mWrapview:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, "OPWarpChargingView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mPlugin:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoading:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoaded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetReleasing:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mIsPaddingStartAnimation:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mWallpaper:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mInfoView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Lcom/android/systemui/statusbar/policy/ChargingAnimationController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mChargingAnimationController:Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->isAnimationStart:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->preloadAnimationList()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->relaseAnimationList()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoading:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoaded:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mIsPaddingStartAnimation:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetReleasing:Z

    return p1
.end method

.method private getWarpFastChargeAnimation()Landroid/animation/AnimatorSet;
    .locals 11

    const/16 v0, 0x1b0

    const/16 v1, 0x90

    const/16 v2, 0x230

    const/16 v3, 0xff

    const/16 v4, 0x50b

    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x0

    aput v7, v6, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aput v7, v6, v8

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    int-to-long v7, v0

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v7, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$1;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v7, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$2;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v7, Landroid/animation/ValueAnimator;

    invoke-direct {v7}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v7, v5, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v8, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v8, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$3;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$3;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v8, Landroid/animation/ValueAnimator;

    invoke-direct {v8}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v8, v5, [F

    fill-array-data v8, :array_1

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    int-to-long v9, v2

    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v9, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$4;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$4;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v9, Landroid/animation/ValueAnimator;

    invoke-direct {v9}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v9, 0x7d0

    invoke-virtual {v5, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    int-to-long v9, v3

    invoke-virtual {v5, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v9, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$5;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$5;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v10, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v9, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v9, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v9, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v9

    nop

    :array_0
    .array-data 4
        0x0
        0x3f866666    # 1.05f
    .end array-data

    :array_1
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private preloadAnimationList()V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f030032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-boolean v5, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_1

    const-string v5, "OPWarpChargingView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preloadAnimationList: cost Time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v3, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " mStartAnimationAssets1 size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$9;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$9;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private refresh()V
    .locals 0

    return-void
.end method

.method private relaseAnimationList()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$10;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const v0, 0x7f0a0080

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    const v0, 0x7f0a048f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mWrapview:Landroid/widget/ImageView;

    const v0, 0x7f0a007a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const v0, 0x7f0a0478

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mWallpaperView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mWallpaperView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f0a01b1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mInfoView:Landroid/view/View;

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->stopAnimation()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->refresh()V

    :cond_0
    return-void
.end method

.method public prepaerAsset()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoading:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$7;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public relaseAsset()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->isAnimationStart:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetReleasing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetReleasing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$8;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setBackgroundWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mWallpaper:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mWallpaperView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mWallpaperView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setChargingAnimationController(Lcom/android/systemui/statusbar/policy/ChargingAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mChargingAnimationController:Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    return-void
.end method

.method public startAnimation()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoaded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mIsPaddingStartAnimation:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->isAnimationStart:Z

    if-nez v0, :cond_2

    const-string v0, "OPWarpChargingView"

    const-string v2, "startAnimation"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->isAnimationStart:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->getWarpFastChargeAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mIsPaddingStartAnimation:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->prepaerAsset()V

    :cond_2
    :goto_1
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->isAnimationStart:Z

    if-eqz v0, :cond_0

    const-string v0, "OPWarpChargingView"

    const-string v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method
