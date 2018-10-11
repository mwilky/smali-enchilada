.class public Lcom/oneplus/aod/battery/BatteryMeterDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BatteryMeterDrawable.java"

# interfaces
.implements Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;
    }
.end annotation


# static fields
.field private static final ADD_LEVEL:I = 0xa

.field private static final ANIM_DURATION:I = 0x1f4

.field private static final ASPECT_RATIO:F = 0.6551724f

.field public static final BATTERY_BAR_STYLE:I = 0x0

.field public static final BATTERY_CIRCLE_STYLE:I = 0x1

.field public static final BATTERY_HIDDEN_STYLE:I = 0x2

.field private static final BOLT_LEVEL_THRESHOLD:F = 0.3f

.field private static final FULL:I = 0x60

.field public static final SHOW_PERCENT_SETTING:Ljava/lang/String; = "status_bar_show_battery_percent"

.field private static final SINGLE_DIGIT_PERCENT:Z = false

.field private static final STROKE_WITH:F = 6.5f

.field public static final TAG:Ljava/lang/String;

.field private static mAnimOffset:I


# instance fields
.field private mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

.field private final mBatteryPaint:Landroid/graphics/Paint;

.field private mBatteryStyle:I

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private mButtonHeightFraction:F

.field private mChargeColor:I

.field private mCharging:Z

.field private mCircleBackPaint:Landroid/graphics/Paint;

.field private mCircleChargingPaint:Landroid/graphics/Paint;

.field private mCircleColor:I

.field private mCircleFrontPaint:Landroid/graphics/Paint;

.field private final mCircleRect:Landroid/graphics/RectF;

.field private mCircleSize:I

.field private final mClipPath:Landroid/graphics/Path;

.field private final mColors:[I

.field private final mContext:Landroid/content/Context;

.field private final mCriticalLevel:I

.field private mCustomBackgroundColor:I

.field private mCustomColor:I

.field private mDarkModeBackgroundColor:I

.field private mDarkModeFillColor:I

.field private final mFrame:Landroid/graphics/RectF;

.field private final mFramePaint:Landroid/graphics/Paint;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIconTint:I

.field private mInStatusBar:Z

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private final mInvalidate:Ljava/lang/Runnable;

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLevel:I

.field private mLightModeBackgroundColor:I

.field private mLightModeFillColor:I

.field private mListening:Z

.field private mLog:Z

.field private mOldDarkIntensity:F

.field private mPluggedIn:Z

.field private final mPlusFrame:Landroid/graphics/RectF;

.field private final mPlusPaint:Landroid/graphics/Paint;

.field private final mPlusPath:Landroid/graphics/Path;

.field private final mPlusPoints:[F

.field private mPowerSaveEnabled:Z

.field private final mSettingObserver:Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;

.field private final mShapePath:Landroid/graphics/Path;

.field private mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private mTextHeight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field private mUseCustomColor:Z

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field private final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private resetUITimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 12

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIconTint:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mOldDarkIntensity:F

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mTextPath:Landroid/graphics/Path;

    new-instance v2, Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;

    invoke-direct {v2, p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;-><init>(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSettingObserver:Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    new-instance v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable$1;-><init>(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryStyle:I

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLog:Z

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->resetUITimes:I

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLastHeight:I

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLastWidth:I

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInStatusBar:Z

    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    const v4, 0x7f020007

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    const/4 v6, 0x2

    mul-int v7, v6, v5

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    move v7, v0

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v5, :cond_0

    iget-object v9, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    mul-int v10, v6, v7

    invoke-virtual {v3, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    aput v11, v9, v10

    iget-object v9, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    mul-int v10, v6, v7

    add-int/2addr v10, v8

    invoke-virtual {v4, v7, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    aput v8, v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->updateShowPercent()V

    const v0, 0x7f100059

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x10e0026

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCriticalLevel:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v6, 0x7f080000

    invoke-virtual {v0, v6, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonHeightFraction:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f080001

    invoke-virtual {v0, v6, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f080002

    invoke-virtual {v0, v6, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    aget v6, v6, v8

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const v0, 0x7f05005c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mChargeColor:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    const v6, 0x7f05005b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v2}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    new-instance v0, Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->loadPlusPoints(Landroid/content/res/Resources;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    const v0, 0x7f0500d3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mDarkModeBackgroundColor:I

    const v0, 0x7f0500d4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mDarkModeFillColor:I

    const v0, 0x7f0501ac

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLightModeBackgroundColor:I

    const v0, 0x7f0501ad

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLightModeFillColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f060071

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f060070

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicHeight:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->updateShowPercent()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v2, v1}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->initCircleSize(II)V

    iget-object v3, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    iget-boolean v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mChargeColor:I

    goto :goto_0

    :cond_0
    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    invoke-direct {v0, v4}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getColorForLevel(I)I

    move-result v4

    :goto_0
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    iget-boolean v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mChargeColor:I

    goto :goto_1

    :cond_1
    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    invoke-direct {v0, v4}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getColorForLevel(I)I

    move-result v4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    const/high16 v7, 0x43870000    # 270.0f

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v12, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    const/high16 v13, 0x43870000    # 270.0f

    const v3, 0x40666666    # 3.6f

    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    int-to-float v4, v4

    mul-float v14, v3, v4

    const/4 v15, 0x0

    iget-object v3, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v3, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    iget-boolean v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual {v7, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    move-object/from16 v7, p1

    :goto_2
    return-void
.end method

.method private getBackgroundColor(F)I
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mUseCustomColor:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCustomBackgroundColor:I

    return v0

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLightModeBackgroundColor:I

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mDarkModeBackgroundColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getColorForLevel(I)I
    .locals 5

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mUseCustomColor:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCustomColor:I

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    if-gt p1, v2, :cond_3

    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_2

    iget v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIconTint:I

    return v3

    :cond_2
    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_4
    return v0
.end method

.method private getFillColor(F)I
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mUseCustomColor:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCustomColor:I

    return v0

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLightModeFillColor:I

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mDarkModeFillColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private initCircleSize(II)V
    .locals 7

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleSize:I

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleSize:I

    int-to-float v0, v0

    const/high16 v1, 0x40d00000    # 6.5f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v0, v3

    add-float/2addr v2, v4

    div-float v4, v0, v3

    iget v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleSize:I

    int-to-float v5, v5

    div-float v6, v0, v3

    sub-float/2addr v5, v6

    int-to-float v6, v1

    add-float/2addr v5, v6

    iget v6, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleSize:I

    int-to-float v6, v6

    div-float v3, v0, v3

    sub-float/2addr v6, v3

    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8

    const v0, 0x7f020005

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    move v1, v3

    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    aget v5, v0, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v5, v1, 0x1

    aget v5, v0, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    array-length v1, v0

    new-array v1, v1, [F

    nop

    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    aget v5, v0, v3

    int-to-float v5, v5

    int-to-float v6, v2

    div-float/2addr v5, v6

    aput v5, v1, v3

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v3, 0x1

    aget v6, v0, v6

    int-to-float v6, v6

    int-to-float v7, v4

    div-float/2addr v6, v7

    aput v6, v1, v5

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private static loadPlusPoints(Landroid/content/res/Resources;)[F
    .locals 8

    const v0, 0x7f020008

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    move v1, v3

    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    aget v5, v0, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v5, v1, 0x1

    aget v5, v0, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    array-length v1, v0

    new-array v1, v1, [F

    nop

    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    aget v5, v0, v3

    int-to-float v5, v5

    int-to-float v6, v2

    div-float/2addr v5, v6

    aput v5, v1, v3

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v3, 0x1

    aget v6, v0, v6

    int-to-float v6, v6

    int-to-float v7, v4

    div-float/2addr v6, v7

    aput v6, v1, v5

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private postInvalidate()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postInvalidate(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateChargingAnimLevel()I
    .locals 5

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCharging:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryStyle:I

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget v1, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mAnimOffset:I

    add-int/2addr v0, v1

    const/16 v1, 0x60

    if-lt v0, v1, :cond_1

    const/16 v0, 0x64

    sput v2, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mAnimOffset:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mAnimOffset:I

    add-int/lit8 v1, v1, 0xa

    sput v1, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mAnimOffset:I

    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    :goto_1
    sput v2, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mAnimOffset:I

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_2
    return v0
.end method

.method private updateShowPercent()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_battery_percent"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    iput-boolean v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShowPercent:Z

    return-void
.end method


# virtual methods
.method public disableShowPercent()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShowPercent:Z

    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget-boolean v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInStatusBar:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    if-nez v4, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    iget v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->resetUITimes:I

    const/16 v8, 0xa

    if-ge v6, v8, :cond_1

    sget-object v6, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    const-string v8, "re-draw since have padding"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->resetUITimes:I

    add-int/2addr v6, v7

    iput v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->resetUITimes:I

    const/4 v2, 0x1

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->postInvalidate()V

    :cond_1
    const/4 v6, 0x0

    iget v8, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    iget-boolean v9, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLog:Z

    if-eqz v9, :cond_2

    iget-boolean v9, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    if-nez v9, :cond_2

    sget-object v9, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "draw, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryStyle:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCharging:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShowPercent:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mListening:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    return-void

    :cond_3
    int-to-float v9, v8

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    iget v10, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    const v11, 0x3f27b961

    iget v12, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iget v12, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWidth:I

    sub-int/2addr v12, v11

    const/4 v13, 0x2

    div-int/2addr v12, v13

    int-to-float v14, v10

    iget v15, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonHeightFraction:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iget-object v15, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    int-to-float v13, v11

    int-to-float v7, v10

    move/from16 v18, v2

    const/4 v2, 0x0

    invoke-virtual {v15, v2, v2, v13, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    int-to-float v13, v12

    invoke-virtual {v7, v13, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryStyle:I

    packed-switch v7, :pswitch_data_0

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    int-to-float v15, v11

    const/high16 v19, 0x3e800000    # 0.25f

    mul-float v15, v15, v19

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v13, v15

    iget-object v15, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v20, v3

    int-to-float v3, v11

    mul-float v3, v3, v19

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move/from16 v21, v4

    int-to-float v4, v14

    add-float/2addr v3, v4

    invoke-virtual {v7, v13, v15, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    int-to-float v4, v14

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    iget-boolean v3, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mChargeColor:I

    goto :goto_0

    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {v0, v1, v11, v10}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->drawCircle(Landroid/graphics/Canvas;II)V

    return-void

    :cond_4
    invoke-direct {v0, v8}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getColorForLevel(I)I

    move-result v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0x60

    if-lt v8, v2, :cond_5

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    iget v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCriticalLevel:I

    if-gt v8, v2, :cond_6

    const/4 v9, 0x0

    :cond_6
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v9, v2

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_7
    iget-object v3, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v7, v2, v9

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    :goto_2
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-boolean v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v4, :cond_b

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v13, 0x40800000    # 4.0f

    div-float/2addr v4, v13

    add-float/2addr v2, v4

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v15, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    const/high16 v19, 0x40c00000    # 6.0f

    div-float v15, v15, v19

    add-float/2addr v4, v15

    iget-object v15, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v13

    sub-float/2addr v15, v7

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    const/high16 v19, 0x41200000    # 10.0f

    div-float v13, v13, v19

    sub-float/2addr v7, v13

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    cmpl-float v13, v13, v2

    if-nez v13, :cond_9

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    cmpl-float v13, v13, v4

    if-nez v13, :cond_9

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    cmpl-float v13, v13, v15

    if-nez v13, :cond_9

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    cmpl-float v13, v13, v7

    if-eqz v13, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v22, v2

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    goto/16 :goto_5

    :cond_9
    :goto_3
    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v13, v2, v4, v15, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move/from16 v22, v2

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move/from16 v23, v4

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    const/16 v19, 0x0

    aget v4, v4, v19

    move/from16 v24, v5

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    const/16 v17, 0x1

    aget v5, v5, v17

    move/from16 v25, v6

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v13, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/16 v16, 0x2

    :goto_4
    move/from16 v2, v16

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    array-length v4, v4

    if-ge v2, v4, :cond_a

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    aget v6, v6, v2

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    mul-float/2addr v6, v13

    add-float/2addr v5, v6

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    add-int/lit8 v16, v2, 0x1

    aget v13, v13, v16

    move/from16 v26, v7

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v13, v7

    add-float/2addr v6, v13

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v16, v2, 0x2

    move/from16 v7, v26

    goto :goto_4

    :cond_a
    move/from16 v26, v7

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    nop

    move/from16 v30, v9

    goto/16 :goto_9

    :cond_b
    move/from16 v24, v5

    move/from16 v25, v6

    iget-boolean v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v4, :cond_10

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v4, v6

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float/2addr v7, v4

    div-float/2addr v7, v5

    add-float/2addr v6, v7

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    sub-float/2addr v13, v4

    div-float/2addr v13, v5

    add-float/2addr v7, v13

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    iget-object v15, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    sub-float/2addr v15, v4

    div-float/2addr v15, v5

    sub-float/2addr v13, v15

    iget-object v15, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v2, v4

    div-float/2addr v2, v5

    sub-float/2addr v15, v2

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v13

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v15

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    move/from16 v27, v4

    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v9

    goto/16 :goto_8

    :cond_d
    :goto_6
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v2, v6, v7, v13, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move/from16 v27, v4

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    const/16 v19, 0x0

    aget v4, v4, v19

    move/from16 v28, v6

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float/2addr v4, v6

    add-float/2addr v5, v4

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    const/16 v17, 0x1

    aget v6, v6, v17

    move/from16 v29, v7

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/16 v16, 0x2

    :goto_7
    move/from16 v2, v16

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    array-length v4, v4

    if-ge v2, v4, :cond_e

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    aget v6, v6, v2

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    add-int/lit8 v16, v2, 0x1

    aget v7, v7, v16

    move/from16 v30, v9

    iget-object v9, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v16, v2, 0x2

    move/from16 v9, v30

    goto :goto_7

    :cond_e
    move/from16 v30, v9

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_8
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    div-float/2addr v2, v4

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_f

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_9

    :cond_f
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto :goto_9

    :cond_10
    move/from16 v30, v9

    :goto_9
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iput v3, v7, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    sget-object v13, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v9, v13}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    sget-object v13, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v7, v9, v13}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    if-nez v7, :cond_12

    iget-boolean v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-nez v7, :cond_12

    iget v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCriticalLevel:I

    if-gt v8, v7, :cond_11

    iget v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWidth:I

    int-to-float v7, v7

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v7, v9

    iget v9, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    int-to-float v9, v9

    iget v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextHeight:F

    add-float/2addr v9, v13

    const v13, 0x3ef5c28f    # 0.48f

    mul-float/2addr v9, v13

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    iget-object v15, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v7, v9, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_11
    if-eqz v2, :cond_12

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_12
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enableLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLog:Z

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicWidth:I

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getShowPercentage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShowPercent:Z

    return v0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    iput-boolean p2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    iput-boolean p3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCharging:Z

    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method public onBatteryPercentShowChange(Z)V
    .locals 0

    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryStyle:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->resetUITimes:I

    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method public onFastChargeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPowerSaveChanged , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->invalidateSelf()V

    return-void
.end method

.method public relayout()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicWidth:I

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicHeight:I

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBatteryController(Lcom/oneplus/aod/battery/BatteryController;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

    invoke-interface {v0}, Lcom/oneplus/aod/battery/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    return-void
.end method

.method public setBounds(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int v0, p4, p2

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    sub-int v0, p3, p1

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWidth:I

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextHeight:F

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLastHeight:I

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLastWidth:I

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWidth:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLastHeight:I

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWidth:I

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLastWidth:I

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->postInvalidate(I)V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setCustomColor(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mUseCustomColor:Z

    iput p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCustomColor:I

    iput p2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCustomBackgroundColor:I

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mChargeColor:I

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 3

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mOldDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getBackgroundColor(F)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getFillColor(F)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIconTint:I

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mChargeColor:I

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->invalidateSelf()V

    iput p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mOldDarkIntensity:F

    return-void
.end method

.method public setIconPlace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInStatusBar:Z

    return-void
.end method

.method public startListening()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mListening:Z

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_battery_percent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSettingObserver:Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->updateShowPercent()V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

    invoke-interface {v0, p0}, Lcom/oneplus/aod/battery/BatteryController;->addStateChangedCallback(Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method

.method public stopListening()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mListening:Z

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSettingObserver:Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

    invoke-interface {v0, p0}, Lcom/oneplus/aod/battery/BatteryController;->removeStateChangedCallback(Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method
