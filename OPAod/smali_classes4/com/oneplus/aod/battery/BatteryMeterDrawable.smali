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

    .line 45
    const-class v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "frameColor"    # I

    .line 140
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIconTint:I

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mOldDarkIntensity:F

    .line 74
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    .line 76
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    .line 78
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    .line 79
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    .line 80
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    .line 81
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    .line 83
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    .line 84
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    .line 85
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mTextPath:Landroid/graphics/Path;

    .line 96
    new-instance v2, Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;

    invoke-direct {v2, p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;-><init>(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSettingObserver:Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;

    .line 101
    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    .line 111
    new-instance v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable$1;-><init>(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryStyle:I

    .line 123
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    .line 137
    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLog:Z

    .line 308
    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->resetUITimes:I

    .line 383
    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLastHeight:I

    .line 384
    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLastWidth:I

    .line 748
    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInStatusBar:Z

    .line 141
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 144
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f020006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 145
    .local v3, "levels":Landroid/content/res/TypedArray;
    const v4, 0x7f020007

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 147
    .local v4, "colors":Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    .line 148
    .local v5, "N":I
    const/4 v6, 0x2

    mul-int v7, v6, v5

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    .line 149
    move v7, v0

    .local v7, "i":I
    :goto_0
    const/4 v8, 0x1

    if-ge v7, v5, :cond_0

    .line 150
    iget-object v9, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    mul-int v10, v6, v7

    invoke-virtual {v3, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    aput v11, v9, v10

    .line 151
    iget-object v9, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    mul-int v10, v6, v7

    add-int/2addr v10, v8

    invoke-virtual {v4, v7, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    aput v8, v9, v10

    .line 149
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 153
    .end local v7    # "i":I
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->updateShowPercent()V

    .line 156
    const v0, 0x7f100059

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x10e0026

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCriticalLevel:I

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v6, 0x7f080000

    invoke-virtual {v0, v6, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonHeightFraction:F

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f080001

    invoke-virtual {v0, v6, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f080002

    invoke-virtual {v0, v6, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    .line 167
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 169
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    .line 173
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 174
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    .line 180
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 182
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 183
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    aget v6, v6, v8

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 188
    const v0, 0x7f05005c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mChargeColor:I

    .line 190
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    .line 191
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    const v6, 0x7f05005b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    invoke-static {v2}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    .line 194
    new-instance v0, Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    .line 195
    invoke-static {v2}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->loadPlusPoints(Landroid/content/res/Resources;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    .line 197
    const v0, 0x7f0500d3

    .line 198
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mDarkModeBackgroundColor:I

    .line 199
    const v0, 0x7f0500d4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mDarkModeFillColor:I

    .line 200
    const v0, 0x7f0501ac

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLightModeBackgroundColor:I

    .line 202
    const v0, 0x7f0501ad

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLightModeFillColor:I

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f060071

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicWidth:I

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f060070

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicHeight:I

    .line 208
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    .line 209
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 211
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 212
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 213
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 215
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    .line 216
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 217
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 218
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 219
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 221
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    .line 222
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 224
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    .line 41
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->updateShowPercent()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    .line 41
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;II)V
    .locals 17
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "height"    # I
    .param p3, "width"    # I

    move-object/from16 v0, p0

    .line 716
    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v2, v1}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->initCircleSize(II)V

    .line 719
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

    .line 720
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

    .line 722
    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    const/high16 v7, 0x43870000    # 270.0f

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 723
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

    .line 725
    iget-object v3, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    .line 727
    .local v3, "radius":F
    iget-boolean v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v4, :cond_2

    .line 728
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

    .line 730
    :cond_2
    move-object/from16 v7, p1

    :goto_2
    return-void
.end method

.method private getBackgroundColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .line 461
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mUseCustomColor:Z

    if-eqz v0, :cond_0

    .line 462
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCustomBackgroundColor:I

    return v0

    .line 464
    :cond_0
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLightModeBackgroundColor:I

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mDarkModeBackgroundColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3
    .param p1, "darkIntensity"    # F
    .param p2, "lightColor"    # I
    .param p3, "darkColor"    # I

    .line 477
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
    .param p1, "percent"    # I

    .line 415
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mUseCustomColor:Z

    if-eqz v0, :cond_0

    .line 416
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCustomColor:I

    return v0

    .line 419
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0

    .line 422
    :cond_1
    const/4 v0, 0x0

    .line 423
    .local v0, "color":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 424
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    aget v2, v2, v1

    .line 425
    .local v2, "thresh":I
    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    .line 426
    if-gt p1, v2, :cond_3

    .line 429
    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_2

    .line 430
    iget v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIconTint:I

    return v3

    .line 432
    :cond_2
    return v0

    .line 423
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 436
    .end local v1    # "i":I
    .end local v2    # "thresh":I
    :cond_4
    return v0
.end method

.method private getFillColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .line 469
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mUseCustomColor:Z

    if-eqz v0, :cond_0

    .line 470
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCustomColor:I

    return v0

    .line 472
    :cond_0
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLightModeFillColor:I

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mDarkModeFillColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private initCircleSize(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 733
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleSize:I

    .line 734
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleSize:I

    int-to-float v0, v0

    const/high16 v1, 0x40d00000    # 6.5f

    div-float/2addr v0, v1

    .line 735
    .local v0, "strokeWidth":F
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 736
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 737
    const/4 v1, 0x0

    .line 739
    .local v1, "pLeft":I
    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v0, v3

    add-float/2addr v2, v4

    .line 740
    .local v2, "left":F
    div-float v4, v0, v3

    .line 741
    .local v4, "top":F
    iget v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleSize:I

    int-to-float v5, v5

    div-float v6, v0, v3

    sub-float/2addr v5, v6

    int-to-float v6, v1

    add-float/2addr v5, v6

    .line 742
    .local v5, "right":F
    iget v6, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleSize:I

    int-to-float v6, v6

    div-float v3, v0, v3

    sub-float/2addr v6, v3

    .line 743
    .local v6, "bottom":F
    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 744
    return-void
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 353
    const v0, 0x7f020005

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 354
    .local v0, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 355
    .local v2, "maxY":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    move v1, v3

    .local v1, "i":I
    .local v2, "maxX":I
    .local v4, "maxY":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    .line 356
    aget v5, v0, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 357
    add-int/lit8 v5, v1, 0x1

    aget v5, v0, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 355
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 359
    .end local v1    # "i":I
    :cond_0
    array-length v1, v0

    new-array v1, v1, [F

    .line 360
    .local v1, "ptsF":[F
    nop

    .local v3, "i":I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 361
    aget v5, v0, v3

    int-to-float v5, v5

    int-to-float v6, v2

    div-float/2addr v5, v6

    aput v5, v1, v3

    .line 362
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v3, 0x1

    aget v6, v0, v6

    int-to-float v6, v6

    int-to-float v7, v4

    div-float/2addr v6, v7

    aput v6, v1, v5

    .line 360
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 364
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method private static loadPlusPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 368
    const v0, 0x7f020008

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 369
    .local v0, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 370
    .local v2, "maxY":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    move v1, v3

    .local v1, "i":I
    .local v2, "maxX":I
    .local v4, "maxY":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    .line 371
    aget v5, v0, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 372
    add-int/lit8 v5, v1, 0x1

    aget v5, v0, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 370
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 374
    .end local v1    # "i":I
    :cond_0
    array-length v1, v0

    new-array v1, v1, [F

    .line 375
    .local v1, "ptsF":[F
    nop

    .local v3, "i":I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 376
    aget v5, v0, v3

    int-to-float v5, v5

    int-to-float v6, v2

    div-float/2addr v5, v6

    aput v5, v1, v3

    .line 377
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v3, 0x1

    aget v6, v0, v6

    int-to-float v6, v6

    int-to-float v7, v4

    div-float/2addr v6, v7

    aput v6, v1, v5

    .line 375
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 379
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method private postInvalidate()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    return-void
.end method

.method private postInvalidate(I)V
    .locals 4
    .param p1, "delaytime"    # I

    .line 279
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    return-void
.end method

.method private updateChargingAnimLevel()I
    .locals 5

    .line 330
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    .line 331
    .local v0, "curLevel":I
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCharging:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryStyle:I

    if-eqz v1, :cond_0

    goto :goto_1

    .line 338
    :cond_0
    sget v1, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mAnimOffset:I

    add-int/2addr v0, v1

    .line 339
    const/16 v1, 0x60

    if-lt v0, v1, :cond_1

    .line 340
    const/16 v0, 0x64

    .line 341
    sput v2, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mAnimOffset:I

    goto :goto_0

    .line 343
    :cond_1
    sget v1, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mAnimOffset:I

    add-int/lit8 v1, v1, 0xa

    sput v1, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mAnimOffset:I

    .line 346
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 347
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 335
    :cond_2
    :goto_1
    sput v2, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mAnimOffset:I

    .line 336
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 349
    :goto_2
    return v0
.end method

.method private updateShowPercent()V
    .locals 4

    .line 408
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_battery_percent"

    .line 409
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 408
    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    iput-boolean v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShowPercent:Z

    .line 411
    return-void
.end method


# virtual methods
.method public disableShowPercent()V
    .locals 1

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShowPercent:Z

    .line 270
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->postInvalidate()V

    .line 271
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 31
    .param p1, "c"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 483
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 485
    .local v2, "redrawByPadding":Z
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 486
    .local v3, "rf":Landroid/graphics/Rect;
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 487
    .local v4, "l":I
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 489
    .local v5, "t":I
    iget-boolean v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInStatusBar:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    if-nez v4, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    iget v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->resetUITimes:I

    const/16 v8, 0xa

    if-ge v6, v8, :cond_1

    .line 490
    sget-object v6, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    const-string v8, "re-draw since have padding"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->resetUITimes:I

    add-int/2addr v6, v7

    iput v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->resetUITimes:I

    .line 492
    const/4 v2, 0x1

    .line 493
    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->postInvalidate()V

    .line 497
    :cond_1
    const/4 v6, 0x0

    .line 501
    .local v6, "showChargingAnim":Z
    iget v8, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    .line 505
    .local v8, "level":I
    iget-boolean v9, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLog:Z

    if-eqz v9, :cond_2

    iget-boolean v9, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    if-nez v9, :cond_2

    .line 506
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

    .line 510
    :cond_2
    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    return-void

    .line 512
    :cond_3
    int-to-float v9, v8

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    .line 513
    .local v9, "drawFrac":F
    iget v10, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    .line 514
    .local v10, "height":I
    const v11, 0x3f27b961

    iget v12, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 515
    .local v11, "width":I
    iget v12, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWidth:I

    sub-int/2addr v12, v11

    const/4 v13, 0x2

    div-int/2addr v12, v13

    .line 517
    .local v12, "px":I
    int-to-float v14, v10

    iget v15, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonHeightFraction:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    .line 519
    .local v14, "buttonHeight":I
    iget-object v15, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    int-to-float v13, v11

    int-to-float v7, v10

    move/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "redrawByPadding":Z
    .local v18, "redrawByPadding":Z
    invoke-virtual {v15, v2, v2, v13, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 520
    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    int-to-float v13, v12

    invoke-virtual {v7, v13, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 523
    iget v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryStyle:I

    packed-switch v7, :pswitch_data_0

    .line 537
    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    int-to-float v15, v11

    const/high16 v19, 0x3e800000    # 0.25f

    mul-float v15, v15, v19

    .line 538
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

    .end local v3    # "rf":Landroid/graphics/Rect;
    .local v20, "rf":Landroid/graphics/Rect;
    mul-float v3, v3, v19

    .line 540
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move/from16 v21, v4

    int-to-float v4, v14

    .end local v4    # "l":I
    .local v21, "l":I
    add-float/2addr v3, v4

    .line 537
    invoke-virtual {v7, v13, v15, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 543
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 544
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 545
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 548
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    int-to-float v4, v14

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 549
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 550
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 551
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 552
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 555
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    iget-boolean v3, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mChargeColor:I

    goto :goto_0

    .line 529
    .end local v20    # "rf":Landroid/graphics/Rect;
    .end local v21    # "l":I
    .restart local v3    # "rf":Landroid/graphics/Rect;
    .restart local v4    # "l":I
    :pswitch_0
    return-void

    .line 525
    :pswitch_1
    invoke-direct {v0, v1, v11, v10}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->drawCircle(Landroid/graphics/Canvas;II)V

    .line 526
    return-void

    .line 555
    .end local v3    # "rf":Landroid/graphics/Rect;
    .end local v4    # "l":I
    .restart local v20    # "rf":Landroid/graphics/Rect;
    .restart local v21    # "l":I
    :cond_4
    invoke-direct {v0, v8}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getColorForLevel(I)I

    move-result v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 557
    const/16 v2, 0x60

    if-lt v8, v2, :cond_5

    .line 558
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_1

    .line 559
    :cond_5
    iget v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCriticalLevel:I

    if-gt v8, v2, :cond_6

    .line 560
    const/4 v9, 0x0

    .line 563
    :cond_6
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v9, v2

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    goto :goto_2

    .line 564
    :cond_7
    iget-object v3, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v7, v2, v9

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    .line 567
    .local v3, "levelTop":F
    :goto_2
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 568
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 569
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 570
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 571
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 572
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 573
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 574
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 575
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 576
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 578
    iget-boolean v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v4, :cond_b

    .line 580
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v13, 0x40800000    # 4.0f

    div-float/2addr v4, v13

    add-float/2addr v2, v4

    .line 581
    .local v2, "bl":F
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v15, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    const/high16 v19, 0x40c00000    # 6.0f

    div-float v15, v15, v19

    add-float/2addr v4, v15

    .line 582
    .local v4, "bt":F
    iget-object v15, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v13

    sub-float/2addr v15, v7

    .line 583
    .local v15, "br":F
    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    const/high16 v19, 0x41200000    # 10.0f

    div-float v13, v13, v19

    sub-float/2addr v7, v13

    .line 584
    .local v7, "bb":F
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

    .line 602
    :cond_8
    move/from16 v22, v2

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    goto/16 :goto_5

    .line 586
    :cond_9
    :goto_3
    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v13, v2, v4, v15, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 587
    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    .line 588
    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move/from16 v22, v2

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    .end local v2    # "bl":F
    .local v22, "bl":F
    iget v2, v2, Landroid/graphics/RectF;->left:F

    move/from16 v23, v4

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    .end local v4    # "bt":F
    .local v23, "bt":F
    const/16 v19, 0x0

    aget v4, v4, v19

    move/from16 v24, v5

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    .line 589
    .end local v5    # "t":I
    .local v24, "t":I
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

    .line 590
    .end local v6    # "showChargingAnim":Z
    .local v25, "showChargingAnim":Z
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 588
    invoke-virtual {v13, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 591
    const/16 v16, 0x2

    .local v16, "i":I
    :goto_4
    move/from16 v2, v16

    .end local v16    # "i":I
    .local v2, "i":I
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    array-length v4, v4

    if-ge v2, v4, :cond_a

    .line 592
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    aget v6, v6, v2

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    .line 593
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

    .line 594
    .end local v7    # "bb":F
    .local v26, "bb":F
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v13, v7

    add-float/2addr v6, v13

    .line 592
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 591
    add-int/lit8 v16, v2, 0x2

    .end local v2    # "i":I
    .restart local v16    # "i":I
    move/from16 v7, v26

    goto :goto_4

    .line 596
    .end local v16    # "i":I
    .end local v26    # "bb":F
    .restart local v7    # "bb":F
    :cond_a
    move/from16 v26, v7

    .end local v7    # "bb":F
    .restart local v26    # "bb":F
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    .line 597
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

    .line 598
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 596
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 602
    :goto_5
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 604
    .end local v15    # "br":F
    .end local v22    # "bl":F
    .end local v23    # "bt":F
    .end local v26    # "bb":F
    nop

    .line 640
    move/from16 v30, v9

    goto/16 :goto_9

    .line 604
    .end local v24    # "t":I
    .end local v25    # "showChargingAnim":Z
    .restart local v5    # "t":I
    .restart local v6    # "showChargingAnim":Z
    :cond_b
    move/from16 v24, v5

    move/from16 v25, v6

    .end local v5    # "t":I
    .end local v6    # "showChargingAnim":Z
    .restart local v24    # "t":I
    .restart local v25    # "showChargingAnim":Z
    iget-boolean v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v4, :cond_10

    .line 606
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v4, v6

    .line 607
    .local v4, "pw":F
    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float/2addr v7, v4

    div-float/2addr v7, v5

    add-float/2addr v6, v7

    .line 608
    .local v6, "pl":F
    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    sub-float/2addr v13, v4

    div-float/2addr v13, v5

    add-float/2addr v7, v13

    .line 609
    .local v7, "pt":F
    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    iget-object v15, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    sub-float/2addr v15, v4

    div-float/2addr v15, v5

    sub-float/2addr v13, v15

    .line 610
    .local v13, "pr":F
    iget-object v15, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v2, v4

    div-float/2addr v2, v5

    sub-float/2addr v15, v2

    .line 611
    .local v15, "pb":F
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

    .line 628
    :cond_c
    move/from16 v27, v4

    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v9

    goto/16 :goto_8

    .line 613
    :cond_d
    :goto_6
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v2, v6, v7, v13, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 614
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 615
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move/from16 v27, v4

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    .end local v4    # "pw":F
    .local v27, "pw":F
    const/16 v19, 0x0

    aget v4, v4, v19

    move/from16 v28, v6

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    .line 616
    .end local v6    # "pl":F
    .local v28, "pl":F
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

    .line 617
    .end local v7    # "pt":F
    .local v29, "pt":F
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    .line 615
    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 618
    const/16 v16, 0x2

    .restart local v16    # "i":I
    :goto_7
    move/from16 v2, v16

    .end local v16    # "i":I
    .restart local v2    # "i":I
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    array-length v4, v4

    if-ge v2, v4, :cond_e

    .line 619
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    aget v6, v6, v2

    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    .line 620
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

    .line 621
    .end local v9    # "drawFrac":F
    .local v30, "drawFrac":F
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    .line 619
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 618
    add-int/lit8 v16, v2, 0x2

    .end local v2    # "i":I
    .restart local v16    # "i":I
    move/from16 v9, v30

    goto :goto_7

    .line 623
    .end local v16    # "i":I
    .end local v30    # "drawFrac":F
    .restart local v9    # "drawFrac":F
    :cond_e
    move/from16 v30, v9

    .end local v9    # "drawFrac":F
    .restart local v30    # "drawFrac":F
    iget-object v2, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    .line 624
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

    .line 625
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 623
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 628
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

    .line 629
    .local v2, "boltPct":F
    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 630
    const v4, 0x3e99999a    # 0.3f

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_f

    .line 632
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_9

    .line 635
    :cond_f
    iget-object v4, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .end local v2    # "boltPct":F
    .end local v13    # "pr":F
    .end local v15    # "pb":F
    .end local v27    # "pw":F
    .end local v28    # "pl":F
    .end local v29    # "pt":F
    goto :goto_9

    .line 640
    .end local v30    # "drawFrac":F
    .restart local v9    # "drawFrac":F
    :cond_10
    move/from16 v30, v9

    .end local v9    # "drawFrac":F
    .restart local v30    # "drawFrac":F
    :goto_9
    const/4 v2, 0x0

    .line 641
    .local v2, "pctOpaque":Z
    const/4 v4, 0x0

    .local v4, "pctX":F
    const/4 v5, 0x0

    .line 642
    .local v5, "pctY":F
    const/4 v6, 0x0

    .line 665
    .local v6, "pctText":Ljava/lang/String;
    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 668
    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iput v3, v7, Landroid/graphics/RectF;->top:F

    .line 669
    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 670
    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    sget-object v13, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v9, v13}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 671
    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    sget-object v13, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v7, v9, v13}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 672
    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 674
    iget-boolean v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    if-nez v7, :cond_12

    iget-boolean v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-nez v7, :cond_12

    .line 675
    iget v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCriticalLevel:I

    if-gt v8, v7, :cond_11

    .line 677
    iget v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWidth:I

    int-to-float v7, v7

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v7, v9

    .line 678
    .local v7, "x":F
    iget v9, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    int-to-float v9, v9

    iget v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextHeight:F

    add-float/2addr v9, v13

    const v13, 0x3ef5c28f    # 0.48f

    mul-float/2addr v9, v13

    .line 679
    .local v9, "y":F
    iget-object v13, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    iget-object v15, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v7, v9, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 680
    .end local v7    # "x":F
    .end local v9    # "y":F
    goto :goto_a

    :cond_11
    if-eqz v2, :cond_12

    .line 682
    iget-object v7, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 685
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
    .param p1, "enable"    # Z

    .line 756
    iput-boolean p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLog:Z

    .line 757
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 250
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

    .line 698
    const/4 v0, 0x0

    return v0
.end method

.method public getShowPercentage()Z
    .locals 1

    .line 761
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShowPercent:Z

    return v0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .line 291
    iput p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    .line 292
    iput-boolean p2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    .line 293
    iput-boolean p3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCharging:Z

    .line 294
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->postInvalidate()V

    .line 295
    return-void
.end method

.method public onBatteryPercentShowChange(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 300
    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 1
    .param p1, "style"    # I

    .line 311
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 312
    const/4 p1, 0x0

    .line 314
    :cond_0
    iput p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryStyle:I

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->resetUITimes:I

    .line 316
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->postInvalidate()V

    .line 317
    return-void
.end method

.method public onFastChargeChanged(Z)V
    .locals 0
    .param p1, "fastCharge"    # Z

    .line 305
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 3
    .param p1, "isPowerSave"    # Z

    .line 322
    iput-boolean p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    .line 324
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

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->invalidateSelf()V

    .line 327
    return-void
.end method

.method public relayout()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicWidth:I

    .line 229
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicHeight:I

    .line 230
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 690
    return-void
.end method

.method public setBatteryController(Lcom/oneplus/aod/battery/BatteryController;)V
    .locals 1
    .param p1, "batteryController"    # Lcom/oneplus/aod/battery/BatteryController;

    .line 284
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

    .line 285
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

    invoke-interface {v0}, Lcom/oneplus/aod/battery/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    .line 286
    return-void
.end method

.method public setBounds(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 389
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 390
    sub-int v0, p4, p2

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    .line 391
    sub-int v0, p3, p1

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWidth:I

    .line 392
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 393
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextHeight:F

    .line 396
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLastHeight:I

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLastWidth:I

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWidth:I

    if-eq v0, v1, :cond_1

    .line 397
    :cond_0
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLastHeight:I

    .line 398
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWidth:I

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLastWidth:I

    .line 399
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->postInvalidate(I)V

    .line 402
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 694
    return-void
.end method

.method public setCustomColor(II)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "backgroundColor"    # I

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mUseCustomColor:Z

    .line 235
    iput p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCustomColor:I

    .line 236
    iput p2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCustomBackgroundColor:I

    .line 237
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    iput p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mChargeColor:I

    .line 239
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 3
    .param p1, "darkIntensity"    # F

    .line 440
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mOldDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 441
    return-void

    .line 443
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getBackgroundColor(F)I

    move-result v0

    .line 444
    .local v0, "backgroundColor":I
    invoke-direct {p0, p1}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getFillColor(F)I

    move-result v1

    .line 445
    .local v1, "fillColor":I
    iput v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIconTint:I

    .line 446
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 448
    iput v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mChargeColor:I

    .line 451
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 452
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 456
    invoke-virtual {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->invalidateSelf()V

    .line 457
    iput p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mOldDarkIntensity:F

    .line 458
    return-void
.end method

.method public setIconPlace(Z)V
    .locals 0
    .param p1, "statusBar"    # Z

    .line 750
    iput-boolean p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInStatusBar:Z

    .line 751
    return-void
.end method

.method public startListening()V
    .locals 4

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mListening:Z

    .line 256
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_battery_percent"

    .line 257
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSettingObserver:Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;

    .line 256
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 258
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->updateShowPercent()V

    .line 259
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

    invoke-interface {v0, p0}, Lcom/oneplus/aod/battery/BatteryController;->addStateChangedCallback(Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;)V

    .line 260
    return-void
.end method

.method public stopListening()V
    .locals 2

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mListening:Z

    .line 264
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSettingObserver:Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 265
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

    invoke-interface {v0, p0}, Lcom/oneplus/aod/battery/BatteryController;->removeStateChangedCallback(Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;)V

    .line 266
    return-void
.end method
