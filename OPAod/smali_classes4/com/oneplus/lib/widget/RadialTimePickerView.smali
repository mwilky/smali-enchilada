.class public Lcom/oneplus/lib/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;,
        Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;,
        Lcom/oneplus/lib/widget/RadialTimePickerView$PickerType;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final ANIM_DURATION_NORMAL:I = 0x1f4

.field private static final ANIM_DURATION_TOUCH:I = 0x3c

.field private static final COS_30:[F

.field private static final DEGREES_FOR_ONE_HOUR:I = 0x1e

.field private static final DEGREES_FOR_ONE_MINUTE:I = 0x6

.field public static final HOURS:I = 0x0

.field private static final HOURS_INNER:I = 0x2

.field private static final HOURS_IN_CIRCLE:I = 0xc

.field private static final HOURS_NUMBERS:[I

.field private static final HOURS_NUMBERS_24:[I

.field private static final MAX_SECOND_MINUTES_SHOWING_TIMES:I = 0x1

.field public static final MINUTES:I = 0x1

.field private static final MINUTES_IN_CIRCLE:I = 0x3c

.field private static final MINUTES_NUMBERS:[I

.field private static final MISSING_COLOR:I = -0xff01

.field private static final NUM_POSITIONS:I = 0xc

.field private static final PM:I = 0x1

.field private static final SECOND_MINUTES_NUMBERS:[I

.field private static final SECOND_MINUTES_NUMBERS_RANGE:I = 0x4

.field private static final SELECTOR_CIRCLE:I = 0x0

.field private static final SELECTOR_DOT:I = 0x1

.field private static final SELECTOR_LINE:I = 0x2

.field private static final SIN_30:[F

.field private static final SNAP_PREFER_30S_MAP:[I

.field private static final TAG:Ljava/lang/String; = "RadialTimePickerView"


# instance fields
.field private final HOURS_TO_MINUTES:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oneplus/lib/widget/RadialTimePickerView;",
            ">;"
        }
    .end annotation
.end field

.field private mAmOrPm:I

.field private mCenterDotRadius:I

.field mChangedDuringTouch:Z

.field private mCircleRadius:I

.field private mDisabledAlpha:F

.field private mHalfwayDist:I

.field private final mHours12Texts:[Ljava/lang/String;

.field private mHoursToMinutes:F

.field private mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

.field private final mInnerHours24Texts:[Ljava/lang/String;

.field private mInnerTextHours:[Ljava/lang/String;

.field private final mInnerTextX:[F

.field private final mInnerTextY:[F

.field private mInputEnabled:Z

.field private mIs24HourMode:Z

.field private mIsOnInnerCircle:Z

.field private mListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

.field private mMaxDistForOuterNumber:I

.field private mMinDistForInnerNumber:I

.field private mMinutesText:[Ljava/lang/String;

.field private final mMinutesTexts:[Ljava/lang/String;

.field private final mOuterHours24Texts:[Ljava/lang/String;

.field private mOuterTextHours:[Ljava/lang/String;

.field private final mOuterTextX:[[F

.field private final mOuterTextY:[[F

.field private final mPaint:[Landroid/graphics/Paint;

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintCenter:Landroid/graphics/Paint;

.field private final mPaintSelector:[Landroid/graphics/Paint;

.field private mSecondMinutesShowTimes:I

.field private final mSelectionDegrees:[I

.field private mSelectorColor:I

.field private mSelectorDotColor:I

.field private mSelectorDotRadius:I

.field private final mSelectorPath:Landroid/graphics/Path;

.field private mSelectorRadius:I

.field private mSelectorStroke:I

.field private mShowHours:Z

.field private final mTextColor:[Landroid/content/res/ColorStateList;

.field private final mTextInset:[I

.field private final mTextSize:[I

.field private final mTouchHelper:Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

.field private final mTypeface:Landroid/graphics/Typeface;

.field private mXCenter:I

.field private mYCenter:I

.field oval:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 85
    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oneplus/lib/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    .line 86
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/oneplus/lib/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    .line 87
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/oneplus/lib/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    .line 92
    const/4 v1, 0x4

    new-array v1, v1, [I

    sput-object v1, Lcom/oneplus/lib/widget/RadialTimePickerView;->SECOND_MINUTES_NUMBERS:[I

    .line 100
    const/16 v1, 0x169

    new-array v1, v1, [I

    sput-object v1, Lcom/oneplus/lib/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    .line 103
    new-array v1, v0, [F

    sput-object v1, Lcom/oneplus/lib/widget/RadialTimePickerView;->COS_30:[F

    .line 104
    new-array v1, v0, [F

    sput-object v1, Lcom/oneplus/lib/widget/RadialTimePickerView;->SIN_30:[F

    .line 111
    invoke-static {}, Lcom/oneplus/lib/widget/RadialTimePickerView;->preparePrefer30sMap()V

    .line 113
    const-wide v1, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 114
    .local v1, "increment":D
    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 115
    .local v3, "angle":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 116
    sget-object v6, Lcom/oneplus/lib/widget/RadialTimePickerView;->COS_30:[F

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v6, v5

    .line 117
    sget-object v6, Lcom/oneplus/lib/widget/RadialTimePickerView;->SIN_30:[F

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v6, v5

    .line 118
    const-wide v6, 0x3fe0c152382d7365L    # 0.5235987755982988

    add-double/2addr v3, v6

    .line 115
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "increment":D
    .end local v3    # "angle":D
    .end local v5    # "i":I
    :cond_0
    return-void

    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 324
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 327
    sget v0, Lcom/oneplus/commonctrl/R$attr;->timePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 328
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 332
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 336
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    new-instance v0, Lcom/oneplus/lib/widget/RadialTimePickerView$1;

    const-string v1, "hoursToMinutes"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView$1;-><init>(Lcom/oneplus/lib/widget/RadialTimePickerView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    .line 136
    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    .line 137
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    .line 138
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    .line 139
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    .line 141
    const/4 v1, 0x2

    new-array v2, v1, [Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 142
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    .line 143
    const/4 v2, 0x3

    new-array v3, v2, [Landroid/graphics/Paint;

    iput-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    .line 144
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    .line 148
    new-array v3, v2, [Landroid/content/res/ColorStateList;

    iput-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    .line 149
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    .line 150
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    .line 152
    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, F

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextX:[[F

    .line 153
    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, F

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextY:[[F

    .line 155
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextX:[F

    .line 156
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextY:[F

    .line 158
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 162
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    .line 202
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 810
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->oval:Landroid/graphics/RectF;

    .line 989
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 338
    invoke-virtual {p0, p2, p3, p4}, Lcom/oneplus/lib/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 341
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 342
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010033

    invoke-virtual {v5, v6, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 343
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    iput v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mDisabledAlpha:F

    .line 345
    const-string v5, "sans-serif"

    invoke-static {v5, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    .line 347
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v3

    .line 348
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 349
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v3

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 351
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v2

    .line 352
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 353
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v2

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 355
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 357
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v3

    .line 358
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 360
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v2

    .line 361
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 363
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v1

    .line 364
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 365
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 367
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 369
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 370
    .local v5, "res":Landroid/content/res/Resources;
    sget v6, Lcom/oneplus/commonctrl/R$dimen;->timepicker_selector_radius:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 371
    sget v6, Lcom/oneplus/commonctrl/R$dimen;->timepicker_selector_stroke:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorStroke:I

    .line 372
    sget v6, Lcom/oneplus/commonctrl/R$dimen;->timepicker_selector_dot_radius:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorDotRadius:I

    .line 373
    sget v6, Lcom/oneplus/commonctrl/R$dimen;->timepicker_center_dot_radius:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCenterDotRadius:I

    .line 375
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    sget v7, Lcom/oneplus/commonctrl/R$dimen;->timepicker_text_size_normal:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v3

    .line 376
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    sget v7, Lcom/oneplus/commonctrl/R$dimen;->timepicker_text_size_normal:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v2

    .line 377
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    sget v7, Lcom/oneplus/commonctrl/R$dimen;->timepicker_text_size_inner:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v1

    .line 379
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    sget v7, Lcom/oneplus/commonctrl/R$dimen;->timepicker_text_inset_normal:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v3

    .line 380
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    sget v7, Lcom/oneplus/commonctrl/R$dimen;->timepicker_text_inset_normal:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v2

    .line 381
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    sget v7, Lcom/oneplus/commonctrl/R$dimen;->timepicker_text_inset_inner:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v1

    .line 383
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    .line 384
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 385
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 386
    iput v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mAmOrPm:I

    .line 389
    new-instance v1, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Lcom/oneplus/lib/widget/RadialTimePickerView;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTouchHelper:Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 390
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTouchHelper:Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 392
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 393
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setImportantForAccessibility(I)V

    .line 396
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->initHoursAndMinutesText()V

    .line 397
    invoke-direct {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->initData()V

    .line 400
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 401
    .local v1, "calendar":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 402
    .local v6, "currentHour":I
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 404
    .local v0, "currentMinute":I
    invoke-direct {p0, v6, v3, v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 405
    invoke-direct {p0, v0, v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 407
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setHapticFeedbackEnabled(Z)V

    .line 408
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/RadialTimePickerView;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 61
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/lib/widget/RadialTimePickerView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;
    .param p1, "x1"    # F

    .line 61
    iput p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 61
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 61
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    return v0
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/widget/RadialTimePickerView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 61
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/lib/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 61
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorRadius:I

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/lib/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getDegreesForHour(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/lib/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getDegreesForMinute(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/oneplus/lib/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 61
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/lib/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 61
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 61
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/RadialTimePickerView;FFZ)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Z

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 61
    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/RadialTimePickerView;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/RadialTimePickerView;IZ)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 61
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method static synthetic access$900(Lcom/oneplus/lib/widget/RadialTimePickerView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result v0

    return v0
.end method

.method private animatePicker(ZJ)V
    .locals 5
    .param p1, "hoursToMinutes"    # Z
    .param p2, "duration"    # J

    .line 712
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 713
    .local v0, "target":F
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    .line 715
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 717
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 721
    :cond_1
    return-void

    .line 724
    :cond_2
    const-string v1, "HoursToMinutes"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 725
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 726
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 727
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 728
    return-void
.end method

.method private static calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V
    .locals 2
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "radius"    # F
    .param p2, "xCenter"    # F
    .param p3, "yCenter"    # F
    .param p4, "textSize"    # F
    .param p5, "x"    # [F
    .param p6, "y"    # [F

    .line 910
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 911
    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p3, v0

    .line 913
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 914
    sget-object v1, Lcom/oneplus/lib/widget/RadialTimePickerView;->COS_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p2, v1

    aput v1, p5, v0

    .line 915
    sget-object v1, Lcom/oneplus/lib/widget/RadialTimePickerView;->SIN_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p3, v1

    aput v1, p6, v0

    .line 913
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 917
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private calculatePositionsHours()V
    .locals 12

    .line 879
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 882
    .local v0, "numbersRadius":F
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v3, v1, v2

    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v1

    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v1

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    aget v1, v1, v2

    int-to-float v7, v1

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v8, v1, v2

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v9, v1, v2

    move v4, v0

    invoke-static/range {v3 .. v9}, Lcom/oneplus/lib/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 886
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_0

    .line 887
    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    sub-int/2addr v1, v3

    .line 888
    .local v1, "innerNumbersRadius":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v3, v2

    int-to-float v6, v1

    iget v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v7, v2

    iget v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v8, v2

    iget-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    aget v2, v2, v4

    int-to-float v9, v2

    iget-object v10, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v11, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextY:[F

    invoke-static/range {v5 .. v11}, Lcom/oneplus/lib/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 891
    .end local v1    # "innerNumbersRadius":I
    :cond_0
    return-void
.end method

.method private calculatePositionsMinutes()V
    .locals 10

    .line 895
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 898
    .local v0, "numbersRadius":F
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v3, v1, v2

    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v1

    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v1

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    aget v1, v1, v2

    int-to-float v7, v1

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v8, v1, v2

    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v9, v1, v2

    move v4, v0

    invoke-static/range {v3 .. v9}, Lcom/oneplus/lib/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 900
    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;F)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alphaMod"    # F

    .line 802
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 803
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 804
    return-void
.end method

.method private drawCircleBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 740
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 741
    return-void
.end method

.method private drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;
    .param p3, "alphaMod"    # F

    .line 744
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 745
    .local v0, "hoursAlpha":I
    if-lez v0, :cond_0

    .line 748
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 749
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 750
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 751
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 755
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 756
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 757
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 758
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 760
    :cond_0
    return-void
.end method

.method private drawHoursClipped(Landroid/graphics/Canvas;IZ)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "hoursAlpha"    # I
    .param p3, "showActivated"    # Z

    move-object/from16 v13, p0

    .line 764
    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v14, 0x0

    aget v0, v0, v14

    int-to-float v2, v0

    iget-object v3, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v14

    iget-object v5, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v6, v0, v14

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v7, v0, v14

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v0, v14

    const/4 v15, 0x1

    if-eqz p3, :cond_0

    iget-boolean v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-nez v0, :cond_0

    move v10, v15

    goto :goto_0

    :cond_0
    move v10, v14

    :goto_0
    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v0, v14

    move-object v0, v13

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 769
    iget-boolean v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_2

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 770
    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v1

    iget-object v5, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    iget-object v6, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v7, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextY:[F

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v0, v14

    if-eqz p3, :cond_1

    iget-boolean v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v0, :cond_1

    move v10, v15

    goto :goto_1

    :cond_1
    move v10, v14

    :goto_1
    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v0, v14

    move-object v0, v13

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 774
    :cond_2
    return-void
.end method

.method private drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;
    .param p3, "alphaMod"    # F

    .line 777
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    mul-float/2addr v1, p3

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 778
    .local v0, "minutesAlpha":I
    if-lez v0, :cond_0

    .line 781
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 782
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 783
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 784
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 788
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 789
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 790
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 791
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 793
    :cond_0
    return-void
.end method

.method private drawMinutesClipped(Landroid/graphics/Canvas;IZ)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "minutesAlpha"    # I
    .param p3, "showActivated"    # Z

    move-object v13, p0

    .line 796
    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v1

    iget-object v5, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v6, v0, v1

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v7, v0, v1

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v0, v1

    iget-object v0, v13, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v0, v1

    move-object v0, v13

    move-object v1, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 799
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 37
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 814
    move-object/from16 v8, p2

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v10, v1

    .line 815
    .local v10, "hoursIndex":I
    iget-object v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    aget v11, v1, v10

    .line 816
    .local v11, "hoursInset":I
    iget-object v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v3, v10, 0x2

    aget v12, v1, v3

    .line 817
    .local v12, "hoursAngleDeg":I
    iget-object v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v3, v10, 0x2

    aget v1, v1, v3

    rem-int/lit8 v1, v1, 0x1e

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v13, v1

    .line 819
    .local v13, "hoursDotScale":F
    const/4 v14, 0x1

    .line 820
    .local v14, "minutesIndex":I
    iget-object v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v15, 0x1

    aget v6, v1, v15

    .line 821
    .local v6, "minutesInset":I
    iget-object v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v5, v1, v15

    .line 822
    .local v5, "minutesAngleDeg":I
    iget-object v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v1, v1, v15

    rem-int/lit8 v1, v1, 0x1e

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 825
    .local v3, "minutesDotScale":F
    :goto_2
    iget v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 826
    .local v1, "selRadius":I
    iget v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v2, v2

    int-to-float v15, v11

    int-to-float v4, v6

    iget v9, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 827
    invoke-static {v15, v4, v9}, Lcom/oneplus/lib/util/MathUtils;->lerp(FFF)F

    move-result v4

    sub-float v9, v2, v4

    .line 828
    .local v9, "selLength":F
    int-to-float v2, v12

    int-to-float v4, v5

    iget v15, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 829
    invoke-static {v2, v4, v15}, Lcom/oneplus/lib/util/MathUtils;->lerpDeg(FFF)F

    move-result v2

    move/from16 v19, v5

    float-to-double v4, v2

    .end local v5    # "minutesAngleDeg":I
    .local v19, "minutesAngleDeg":I
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 830
    .local v4, "selAngleRad":D
    iget v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    move/from16 v20, v10

    move/from16 v21, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .end local v10    # "hoursIndex":I
    .end local v11    # "hoursInset":I
    .local v20, "hoursIndex":I
    .local v21, "hoursInset":I
    double-to-float v10, v10

    mul-float/2addr v10, v9

    add-float/2addr v10, v2

    .line 831
    .local v10, "selCenterX":F
    iget v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v2, v2

    move/from16 v22, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .end local v12    # "hoursAngleDeg":I
    .local v22, "hoursAngleDeg":I
    double-to-float v11, v11

    mul-float/2addr v11, v9

    sub-float v11, v2, v11

    .line 834
    .local v11, "selCenterY":F
    iget-object v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v12, 0x0

    aget-object v15, v2, v12

    .line 835
    .local v15, "paint":Landroid/graphics/Paint;
    iget v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 836
    int-to-float v2, v1

    invoke-virtual {v7, v10, v11, v2, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 839
    if-eqz v8, :cond_3

    .line 840
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->reset()V

    .line 841
    int-to-float v2, v1

    sget-object v12, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v10, v11, v2, v12}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 845
    :cond_3
    iget v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    invoke-static {v13, v3, v2}, Lcom/oneplus/lib/util/MathUtils;->lerp(FFF)F

    move-result v12

    .line 846
    .local v12, "dotScale":F
    const/4 v2, 0x0

    cmpl-float v2, v12, v2

    if-lez v2, :cond_4

    .line 847
    iget-object v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/16 v17, 0x1

    aget-object v2, v2, v17

    .line 848
    .local v2, "dotPaint":Landroid/graphics/Paint;
    move/from16 v23, v3

    iget v3, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorDotColor:I

    .end local v3    # "minutesDotScale":F
    .local v23, "minutesDotScale":F
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 849
    iget v3, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorDotRadius:I

    int-to-float v3, v3

    mul-float/2addr v3, v12

    invoke-virtual {v7, v10, v11, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .end local v2    # "dotPaint":Landroid/graphics/Paint;
    goto :goto_3

    .line 854
    .end local v23    # "minutesDotScale":F
    .restart local v3    # "minutesDotScale":F
    :cond_4
    move/from16 v23, v3

    .end local v3    # "minutesDotScale":F
    .restart local v23    # "minutesDotScale":F
    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    .line 855
    .local v24, "sin":D
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    .line 856
    .local v26, "cos":D
    int-to-float v2, v1

    sub-float v3, v9, v2

    .line 857
    .local v3, "lineLength":F
    iget v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v28, v1

    iget v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCenterDotRadius:I

    .end local v1    # "selRadius":I
    .local v28, "selRadius":I
    move-wide/from16 v29, v4

    int-to-double v4, v1

    .end local v4    # "selAngleRad":D
    .local v29, "selAngleRad":D
    mul-double v4, v4, v24

    double-to-int v1, v4

    add-int v18, v2, v1

    .line 858
    .local v18, "centerX":I
    iget v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    iget v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-double v4, v2

    mul-double v4, v4, v26

    double-to-int v2, v4

    sub-int v31, v1, v2

    .line 859
    .local v31, "centerY":I
    float-to-double v1, v3

    mul-double v1, v1, v24

    double-to-int v1, v1

    add-int v1, v18, v1

    int-to-float v5, v1

    .line 860
    .local v5, "linePointX":F
    float-to-double v1, v3

    mul-double v1, v1, v26

    double-to-int v1, v1

    sub-int v1, v31, v1

    int-to-float v4, v1

    .line 863
    .local v4, "linePointY":F
    iget-object v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    .line 864
    .local v2, "linePaint":Landroid/graphics/Paint;
    iget v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 865
    iget v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorStroke:I

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 866
    iget v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v1, v1

    move/from16 v32, v1

    iget v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    move/from16 v16, v28

    move/from16 v28, v32

    move/from16 v32, v1

    move-object v1, v7

    .end local v28    # "selRadius":I
    .local v16, "selRadius":I
    move-object/from16 v33, v2

    move/from16 v2, v28

    .end local v2    # "linePaint":Landroid/graphics/Paint;
    .local v33, "linePaint":Landroid/graphics/Paint;
    move/from16 v28, v3

    move/from16 v3, v32

    .end local v3    # "lineLength":F
    .local v28, "lineLength":F
    move/from16 v32, v4

    move v4, v5

    .end local v4    # "linePointY":F
    .local v32, "linePointY":F
    move/from16 v34, v5

    move/from16 v5, v32

    .end local v5    # "linePointX":F
    .local v34, "linePointX":F
    move/from16 v35, v6

    move-object/from16 v6, v33

    .end local v6    # "minutesInset":I
    .local v35, "minutesInset":I
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 868
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    if-nez v1, :cond_5

    .line 869
    const v1, -0x777778

    move-object/from16 v6, v33

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 870
    .end local v33    # "linePaint":Landroid/graphics/Paint;
    .local v6, "linePaint":Landroid/graphics/Paint;
    iget-object v1, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->oval:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextX:[[F

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v4, 0x9

    aget v2, v2, v4

    iget-object v4, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v4, v4, v3

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v5, v5, v3

    const/16 v17, 0x3

    aget v5, v5, v17

    move-object/from16 v36, v6

    iget-object v6, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextX:[[F

    .end local v6    # "linePaint":Landroid/graphics/Paint;
    .local v36, "linePaint":Landroid/graphics/Paint;
    aget-object v3, v6, v3

    const/4 v6, 0x6

    aget v3, v3, v6

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 872
    iget-object v2, v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->oval:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getDegreesForMinute(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2d

    int-to-float v3, v1

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x1

    move-object v1, v7

    move-object/from16 v17, v36

    move-object/from16 v6, v17

    .end local v36    # "linePaint":Landroid/graphics/Paint;
    .local v17, "linePaint":Landroid/graphics/Paint;
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_4

    .line 875
    .end local v17    # "linePaint":Landroid/graphics/Paint;
    .restart local v33    # "linePaint":Landroid/graphics/Paint;
    :cond_5
    move-object/from16 v17, v33

    .end local v33    # "linePaint":Landroid/graphics/Paint;
    .restart local v17    # "linePaint":Landroid/graphics/Paint;
    :goto_4
    return-void
.end method

.method private drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "textColor"    # Landroid/content/res/ColorStateList;
    .param p5, "texts"    # [Ljava/lang/String;
    .param p6, "textX"    # [F
    .param p7, "textY"    # [F
    .param p8, "paint"    # Landroid/graphics/Paint;
    .param p9, "alpha"    # I
    .param p10, "showActivated"    # Z
    .param p11, "activatedDegrees"    # I
    .param p12, "activatedOnly"    # Z

    move-object/from16 v0, p8

    .line 925
    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 926
    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 929
    move/from16 v3, p11

    int-to-float v4, v3

    const/high16 v5, 0x41f00000    # 30.0f

    div-float/2addr v4, v5

    .line 930
    .local v4, "activatedIndex":F
    float-to-int v5, v4

    .line 931
    .local v5, "activatedFloor":I
    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/16 v7, 0xc

    rem-int/2addr v6, v7

    .line 933
    .local v6, "activatedCeil":I
    const/4 v8, 0x0

    move v9, v8

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_4

    .line 934
    if-eq v5, v9, :cond_1

    if-ne v6, v9, :cond_0

    goto :goto_1

    :cond_0
    move v10, v8

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v10, 0x1

    .line 935
    .local v10, "activated":Z
    :goto_2
    if-eqz p12, :cond_2

    if-nez v10, :cond_2

    .line 936
    nop

    .line 933
    move-object v7, p0

    move-object/from16 v13, p4

    move/from16 v8, p9

    move v14, v4

    move-object/from16 v4, p1

    goto :goto_4

    .line 939
    :cond_2
    const/16 v11, 0x8

    .line 940
    if-eqz p10, :cond_3

    if-eqz v10, :cond_3

    const/16 v12, 0x20

    goto :goto_3

    :cond_3
    move v12, v8

    :goto_3
    or-int/2addr v11, v12

    .line 941
    .local v11, "stateMask":I
    invoke-static {v11}, Lcom/oneplus/lib/widget/util/ViewUtils;->getViewState(I)[I

    move-result-object v12

    move-object/from16 v13, p4

    invoke-virtual {v13, v12, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v12

    .line 942
    .local v12, "color":I
    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 943
    move-object v7, p0

    move/from16 v8, p9

    invoke-direct {v7, v12, v8}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 945
    aget-object v2, p5, v9

    aget v1, p6, v9

    aget v3, p7, v9

    move v14, v4

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 933
    .end local v4    # "activatedIndex":F
    .end local v10    # "activated":Z
    .end local v11    # "stateMask":I
    .end local v12    # "color":I
    .local v14, "activatedIndex":F
    :goto_4
    add-int/lit8 v9, v9, 0x1

    move v4, v14

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p11

    const/16 v7, 0xc

    const/4 v8, 0x0

    goto :goto_0

    .line 947
    .end local v9    # "i":I
    .end local v14    # "activatedIndex":F
    .restart local v4    # "activatedIndex":F
    :cond_4
    move-object v7, p0

    move-object/from16 v13, p4

    move/from16 v8, p9

    move v14, v4

    move-object/from16 v4, p1

    .end local v4    # "activatedIndex":F
    .restart local v14    # "activatedIndex":F
    return-void
.end method

.method private getDegreesForHour(I)I
    .locals 2
    .param p1, "hour"    # I

    .line 554
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/16 v1, 0xc

    if-eqz v0, :cond_0

    .line 555
    if-lt p1, v1, :cond_1

    .line 556
    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    .line 558
    :cond_0
    if-ne p1, v1, :cond_1

    .line 559
    const/4 p1, 0x0

    .line 561
    :cond_1
    :goto_0
    mul-int/lit8 v0, p1, 0x1e

    return v0
.end method

.method private getDegreesForMinute(I)I
    .locals 1
    .param p1, "minute"    # I

    .line 595
    mul-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getDegreesFromXY(FFZ)I
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "constrainOutside"    # Z

    .line 953
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    .line 954
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 955
    .local v0, "innerBound":I
    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .local v1, "outerBound":I
    goto :goto_0

    .line 957
    .end local v0    # "innerBound":I
    .end local v1    # "outerBound":I
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    xor-int/lit8 v0, v0, 0x1

    .line 958
    .local v0, "index":I
    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    .line 959
    .local v1, "center":I
    iget v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int v2, v1, v2

    .line 960
    .local v2, "innerBound":I
    iget v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorRadius:I

    add-int/2addr v1, v3

    .end local v0    # "index":I
    .end local v1    # "center":I
    move v0, v2

    .line 963
    .end local v2    # "innerBound":I
    .local v0, "innerBound":I
    .local v1, "outerBound":I
    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    float-to-double v2, v2

    .line 964
    .local v2, "dX":D
    iget v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    float-to-double v4, v4

    .line 965
    .local v4, "dY":D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 966
    .local v6, "distFromCenter":D
    int-to-double v8, v0

    cmpg-double v8, v6, v8

    if-ltz v8, :cond_3

    if-eqz p3, :cond_1

    int-to-double v8, v1

    cmpl-double v8, v6, v8

    if-lez v8, :cond_1

    goto :goto_1

    .line 971
    :cond_1
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v8, v8

    .line 972
    .local v8, "degrees":I
    if-gez v8, :cond_2

    .line 973
    add-int/lit16 v9, v8, 0x168

    return v9

    .line 975
    :cond_2
    return v8

    .line 967
    .end local v8    # "degrees":I
    :cond_3
    :goto_1
    const/4 v8, -0x1

    return v8
.end method

.method private getHourForDegrees(IZ)I
    .locals 3
    .param p1, "degrees"    # I
    .param p2, "innerCircle"    # Z

    .line 532
    div-int/lit8 v0, p1, 0x1e

    rem-int/lit8 v0, v0, 0xc

    .line 533
    .local v0, "hour":I
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_1

    .line 536
    if-nez p2, :cond_0

    if-nez v0, :cond_0

    .line 538
    const/16 v0, 0xc

    goto :goto_0

    .line 539
    :cond_0
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 541
    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    .line 543
    :cond_1
    iget v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mAmOrPm:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 544
    add-int/lit8 v0, v0, 0xc

    .line 546
    :cond_2
    :goto_0
    return v0
.end method

.method private getInnerCircleForHour(I)Z
    .locals 1
    .param p1, "hour"    # I

    .line 568
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getInnerCircleFromXY(FF)Z
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 980
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_1

    .line 981
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-double v2, v0

    .line 982
    .local v2, "dX":D
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    float-to-double v4, v0

    .line 983
    .local v4, "dY":D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 984
    .local v6, "distFromCenter":D
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHalfwayDist:I

    int-to-double v8, v0

    cmpg-double v0, v6, v8

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 986
    .end local v2    # "dX":D
    .end local v4    # "dY":D
    .end local v6    # "distFromCenter":D
    :cond_1
    return v1
.end method

.method private getMinuteForDegrees(I)I
    .locals 1
    .param p1, "degrees"    # I

    .line 591
    div-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getMultipliedAlpha(II)I
    .locals 6
    .param p1, "argb"    # I
    .param p2, "alpha"    # I

    .line 807
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private handleTouchInput(FFZZ)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "forceSelection"    # Z
    .param p4, "autoAdvance"    # Z

    .line 1033
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result v0

    .line 1034
    .local v0, "isOnInnerCircle":Z
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v2

    .line 1035
    .local v2, "degrees":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1036
    return v1

    .line 1040
    :cond_0
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    const-wide/16 v4, 0x3c

    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/lib/widget/RadialTimePickerView;->animatePicker(ZJ)V

    .line 1046
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 1047
    invoke-static {v2, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v3

    rem-int/lit16 v3, v3, 0x168

    .line 1048
    .local v3, "snapDegrees":I
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-ne v5, v0, :cond_2

    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v5, v5, v1

    if-eq v5, v3, :cond_1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    .line 1050
    .local v5, "valueChanged":Z
    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 1051
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v3, v6, v1

    .line 1052
    const/4 v6, 0x0

    .line 1053
    .local v6, "type":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v3

    .line 1054
    .local v3, "newValue":I
    goto :goto_3

    .line 1055
    .end local v3    # "newValue":I
    .end local v5    # "valueChanged":Z
    .end local v6    # "type":I
    :cond_3
    invoke-static {v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->snapPrefer30s(I)I

    move-result v3

    rem-int/lit16 v3, v3, 0x168

    .line 1056
    .local v3, "snapDegrees":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v5, v5, v4

    if-eq v5, v3, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v1

    .line 1057
    .restart local v5    # "valueChanged":Z
    :goto_2
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v3, v6, v4

    .line 1058
    const/4 v6, 0x1

    .line 1059
    .restart local v6    # "type":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v3

    .line 1062
    .local v3, "newValue":I
    :goto_3
    if-nez v5, :cond_6

    if-nez p3, :cond_6

    if-eqz p4, :cond_5

    goto :goto_4

    .line 1076
    :cond_5
    return v1

    .line 1064
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v1, :cond_7

    .line 1065
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v1, v6, v3, p4}, Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 1069
    :cond_7
    if-nez v5, :cond_8

    if-eqz p3, :cond_9

    .line 1070
    :cond_8
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->performHapticFeedback(I)Z

    .line 1071
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->invalidate()V

    .line 1073
    :cond_9
    return v4
.end method

.method private initData()V
    .locals 1

    .line 640
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 642
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    goto :goto_0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 645
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    .line 648
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    .line 649
    return-void
.end method

.method private initHoursAndMinutesText()V
    .locals 7

    .line 631
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    .line 632
    iget-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Lcom/oneplus/lib/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 633
    iget-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    const-string v3, "%02d"

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Lcom/oneplus/lib/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 634
    iget-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    const-string v3, "%d"

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Lcom/oneplus/lib/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 635
    iget-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    const-string v3, "%02d"

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/oneplus/lib/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private isVisible()Z
    .locals 1

    .line 992
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static preparePrefer30sMap()V
    .locals 5

    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "snappedOutputDegrees":I
    const/4 v1, 0x1

    .line 254
    .local v1, "count":I
    const/16 v2, 0x8

    .line 256
    .local v2, "expectedCount":I
    const/4 v3, 0x0

    .local v3, "degrees":I
    :goto_0
    const/16 v4, 0x169

    if-ge v3, v4, :cond_3

    .line 258
    sget-object v4, Lcom/oneplus/lib/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aput v0, v4, v3

    .line 261
    if-ne v1, v2, :cond_2

    .line 262
    add-int/lit8 v0, v0, 0x6

    .line 263
    const/16 v4, 0x168

    if-ne v0, v4, :cond_0

    .line 264
    const/4 v2, 0x7

    goto :goto_1

    .line 265
    :cond_0
    rem-int/lit8 v4, v0, 0x1e

    if-nez v4, :cond_1

    .line 266
    const/16 v2, 0xe

    goto :goto_1

    .line 268
    :cond_1
    const/4 v2, 0x4

    .line 270
    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    .line 272
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 256
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    .end local v3    # "degrees":I
    :cond_3
    return-void
.end method

.method private setCurrentHourInternal(IZZ)V
    .locals 5
    .param p1, "hour"    # I
    .param p2, "callback"    # Z
    .param p3, "autoAdvance"    # Z

    .line 501
    rem-int/lit8 v0, p1, 0xc

    mul-int/lit8 v0, v0, 0x1e

    .line 502
    .local v0, "degrees":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 505
    if-eqz p1, :cond_1

    rem-int/lit8 v1, p1, 0x18

    const/16 v3, 0xc

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 506
    .local v1, "amOrPm":I
    :goto_1
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result v3

    .line 507
    .local v3, "isOnInnerCircle":Z
    iget v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mAmOrPm:I

    if-ne v4, v1, :cond_2

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eq v4, v3, :cond_3

    .line 508
    :cond_2
    iput v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mAmOrPm:I

    .line 509
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 511
    invoke-direct {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->initData()V

    .line 512
    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTouchHelper:Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 515
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->invalidate()V

    .line 517
    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v4, :cond_4

    .line 518
    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v4, v2, p1, p3}, Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 520
    :cond_4
    return-void
.end method

.method private setCurrentMinuteInternal(IZ)V
    .locals 3
    .param p1, "minute"    # I
    .param p2, "callback"    # Z

    .line 576
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x6

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 578
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->invalidate()V

    .line 580
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v2, p1, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 583
    :cond_0
    return-void
.end method

.method private showPicker(ZZ)V
    .locals 2
    .param p1, "hours"    # Z
    .param p2, "animate"    # Z

    .line 689
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    if-ne v0, p1, :cond_0

    .line 690
    return-void

    .line 693
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    .line 695
    if-eqz p2, :cond_1

    .line 696
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->animatePicker(ZJ)V

    goto :goto_1

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 700
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 701
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 703
    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 706
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->initData()V

    .line 707
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->invalidate()V

    .line 708
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTouchHelper:Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 709
    return-void
.end method

.method private static snapOnly30s(II)I
    .locals 5
    .param p0, "degrees"    # I
    .param p1, "forceHigherOrLower"    # I

    .line 301
    const/16 v0, 0x1e

    .line 302
    .local v0, "stepSize":I
    div-int/lit8 v1, p0, 0x1e

    mul-int/lit8 v1, v1, 0x1e

    .line 303
    .local v1, "floor":I
    add-int/lit8 v2, v1, 0x1e

    .line 304
    .local v2, "ceiling":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 305
    move p0, v2

    goto :goto_0

    .line 306
    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    .line 307
    if-ne p0, v1, :cond_1

    .line 308
    add-int/lit8 v1, v1, -0x1e

    .line 310
    :cond_1
    move p0, v1

    goto :goto_0

    .line 312
    :cond_2
    sub-int v3, p0, v1

    sub-int v4, v2, p0

    if-ge v3, v4, :cond_3

    .line 313
    move p0, v1

    goto :goto_0

    .line 315
    :cond_3
    move p0, v2

    .line 318
    :goto_0
    return p0
.end method

.method private static snapPrefer30s(I)I
    .locals 1
    .param p0, "degrees"    # I

    .line 285
    sget-object v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    if-nez v0, :cond_0

    .line 286
    const/4 v0, -0x1

    return v0

    .line 288
    :cond_0
    sget-object v0, Lcom/oneplus/lib/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aget v0, v0, p0

    return v0
.end method


# virtual methods
.method applyAttributes(Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 411
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 412
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->TimePicker:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 415
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_numbersTextColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 417
    .local v2, "numbersTextColor":Landroid/content/res/ColorStateList;
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_numbersInnerTextColor:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 419
    .local v3, "numbersInnerTextColor":Landroid/content/res/ColorStateList;
    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const v5, -0xff01

    if-nez v2, :cond_0

    .line 420
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 421
    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v6, 0x2

    if-nez v3, :cond_1

    .line 422
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v3

    :goto_1
    aput-object v8, v4, v6

    .line 423
    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v8, v8, v7

    aput-object v8, v4, v6

    .line 426
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_android_numbersSelectorColor:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 429
    .local v4, "selectorColors":Landroid/content/res/ColorStateList;
    const/16 v6, 0x28

    if-eqz v4, :cond_2

    .line 430
    invoke-static {v6}, Lcom/oneplus/lib/widget/util/ViewUtils;->getViewState(I)[I

    move-result-object v5

    .line 432
    .local v5, "stateSetEnabledActivated":[I
    invoke-virtual {v4, v5, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    .line 434
    .local v5, "selectorActivatedColor":I
    goto :goto_2

    .line 435
    .end local v5    # "selectorActivatedColor":I
    :cond_2
    nop

    .line 438
    .restart local v5    # "selectorActivatedColor":I
    :goto_2
    iget-object v8, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 440
    invoke-static {v6}, Lcom/oneplus/lib/widget/util/ViewUtils;->getViewState(I)[I

    move-result-object v6

    .line 443
    .local v6, "stateSetActivated":[I
    iput v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorColor:I

    .line 444
    iget-object v8, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v8, v8, v7

    invoke-virtual {v8, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    iput v7, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorDotColor:I

    .line 446
    iget-object v7, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    sget v8, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_android_numbersBackgroundColor:I

    .line 447
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/oneplus/commonctrl/R$color;->timepicker_default_numbers_background_color_material:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 446
    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 450
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1082
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTouchHelper:Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    const/4 v0, 0x1

    return v0

    .line 1085
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getAmOrPm()I
    .locals 1

    .line 618
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method public getCurrentItemShowing()I
    .locals 1

    .line 476
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mShowHours:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCurrentMinute()I
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method public getHoursToMinutes()F
    .locals 1

    .line 736
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    return v0
.end method

.method public initialize(IIZ)V
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourMode"    # Z

    .line 453
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eq v0, p3, :cond_0

    .line 454
    iput-boolean p3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 455
    invoke-direct {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->initData()V

    .line 458
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 459
    invoke-direct {p0, p2, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 460
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 677
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInputEnabled:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mDisabledAlpha:F

    .line 679
    .local v0, "alphaMod":F
    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    .line 681
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    .line 682
    .local v1, "selectorPath":Landroid/graphics/Path;
    invoke-direct {p0, p1, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 683
    invoke-direct {p0, p1, v1, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    .line 684
    invoke-direct {p0, p1, v1, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    .line 685
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;F)V

    .line 686
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 654
    if-nez p1, :cond_0

    .line 655
    return-void

    .line 658
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    .line 659
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    .line 660
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getPaddingRight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 661
    .local v0, "maxPaddingHorizontal":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getPaddingBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 662
    .local v2, "maxPaddingVertical":I
    iget v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mXCenter:I

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mYCenter:I

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    .line 665
    iget v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    aget v4, v4, v1

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 666
    iget v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mSelectorRadius:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .line 667
    iget v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    aget v4, v4, v5

    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTextInset:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    div-int/2addr v4, v1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHalfwayDist:I

    .line 669
    invoke-direct {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->calculatePositionsHours()V

    .line 670
    invoke-direct {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->calculatePositionsMinutes()V

    .line 672
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTouchHelper:Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 673
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 1095
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    const/4 v0, 0x0

    return-object v0

    .line 1098
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    .line 1099
    .local v0, "degrees":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1100
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 1101
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1

    .line 1104
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 997
    invoke-direct {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 998
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1000
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInputEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1001
    return v1

    .line 1004
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1005
    .local v0, "action":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_5

    .line 1008
    :cond_2
    const/4 v2, 0x0

    .line 1009
    .local v2, "forceSelection":Z
    const/4 v3, 0x0

    .line 1011
    .local v3, "autoAdvance":Z
    if-nez v0, :cond_3

    .line 1013
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    goto :goto_0

    .line 1014
    :cond_3
    if-ne v0, v1, :cond_4

    .line 1015
    const/4 v3, 0x1

    .line 1019
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    if-nez v4, :cond_4

    .line 1020
    const/4 v2, 0x1

    .line 1024
    :cond_4
    :goto_0
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 1025
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 1024
    invoke-direct {p0, v5, v6, v2, v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->handleTouchInput(FFZZ)Z

    move-result v5

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 1028
    .end local v2    # "forceSelection":Z
    .end local v3    # "autoAdvance":Z
    :cond_5
    return v1
.end method

.method public setAmOrPm(I)Z
    .locals 1
    .param p1, "amOrPm"    # I

    .line 607
    iget v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mAmOrPm:I

    if-eq v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mAmOrPm:I

    .line 612
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->invalidate()V

    .line 613
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mTouchHelper:Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 614
    const/4 v0, 0x1

    return v0

    .line 608
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCurrentHour(I)V
    .locals 2
    .param p1, "hour"    # I

    .line 489
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 490
    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "animate"    # Z

    .line 463
    packed-switch p1, :pswitch_data_0

    .line 471
    const-string v0, "RadialTimePickerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClockView does not support showing item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->showMinutes(Z)V

    .line 469
    goto :goto_0

    .line 465
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->showHours(Z)V

    .line 466
    nop

    .line 473
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .line 572
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 573
    return-void
.end method

.method public setHoursToMinutes(F)V
    .locals 0
    .param p1, "value"    # F

    .line 731
    iput p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 732
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->invalidate()V

    .line 733
    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0
    .param p1, "inputEnabled"    # Z

    .line 1089
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 1090
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->invalidate()V

    .line 1091
    return-void
.end method

.method public setOnValueSelectedListener(Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 480
    iput-object p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView;->mListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 481
    return-void
.end method

.method public showHours(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 622
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->showPicker(ZZ)V

    .line 623
    return-void
.end method

.method public showMinutes(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 626
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->showPicker(ZZ)V

    .line 627
    return-void
.end method
