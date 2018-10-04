.class public Landroid/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;,
        Landroid/widget/RadialTimePickerView$OnValueSelectedListener;,
        Landroid/widget/RadialTimePickerView$PickerType;
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

.field public static final MINUTES:I = 0x1

.field private static final MINUTES_IN_CIRCLE:I = 0x3c

.field private static final MINUTES_NUMBERS:[I

.field private static final MISSING_COLOR:I = -0xff01

.field private static final NUM_POSITIONS:I = 0xc

.field private static final PM:I = 0x1

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
            "Landroid/widget/RadialTimePickerView;",
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

.field private mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

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

.field private final mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

.field private final mTypeface:Landroid/graphics/Typeface;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    const/16 v1, 0x169

    new-array v1, v1, [I

    sput-object v1, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    new-array v1, v0, [F

    sput-object v1, Landroid/widget/RadialTimePickerView;->COS_30:[F

    new-array v1, v0, [F

    sput-object v1, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    invoke-static {}, Landroid/widget/RadialTimePickerView;->preparePrefer30sMap()V

    const-wide v1, 0x3fe0c152382d7365L    # 0.5235987755982988

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    sget-object v6, Landroid/widget/RadialTimePickerView;->COS_30:[F

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v6, v5

    sget-object v6, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v6, v5

    const-wide v6, 0x3fe0c152382d7365L    # 0.5235987755982988

    add-double/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/RadialTimePickerView$1;

    const-string v1, "hoursToMinutes"

    invoke-direct {v0, p0, v1}, Landroid/widget/RadialTimePickerView$1;-><init>(Landroid/widget/RadialTimePickerView;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/graphics/Paint;

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/graphics/Paint;

    iput-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    new-array v3, v2, [Landroid/content/res/ColorStateList;

    iput-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    new-array v3, v2, [I

    iput-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, F

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, F

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    new-array v2, v0, [F

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    new-array v2, v0, [F

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010033

    invoke-virtual {v5, v6, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    iput v5, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    const-string/jumbo v5, "sans-serif"

    invoke-static {v5, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v3

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v3

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v2

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v2

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v3

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v2

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v1

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10501c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    const v6, 0x10501ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    const v6, 0x10501c8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    const v6, 0x10501c0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const v7, 0x10501cf

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v6, v3

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v2

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const v7, 0x10501ce

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v1

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const v7, 0x10501cd

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v6, v3

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v2

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const v7, 0x10501cc

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v1

    iput-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    iput v3, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    new-instance v1, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-direct {v1, p0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Landroid/widget/RadialTimePickerView;)V

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {p0, v1}, Landroid/widget/RadialTimePickerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/RadialTimePickerView;->setImportantForAccessibility(I)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initHoursAndMinutesText()V

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v6, 0xb

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v6, v3, v3}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    invoke-direct {p0, v0, v3}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    invoke-virtual {p0, v2}, Landroid/widget/RadialTimePickerView;->setHapticFeedbackEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/RadialTimePickerView;)F
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    return v0
.end method

.method static synthetic access$002(Landroid/widget/RadialTimePickerView;F)F
    .locals 0

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    return p1
.end method

.method static synthetic access$100(Landroid/widget/RadialTimePickerView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/RadialTimePickerView;)I
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/RadialTimePickerView;)[I
    .locals 1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/RadialTimePickerView;)I
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/RadialTimePickerView;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForHour(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/RadialTimePickerView;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForMinute(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/RadialTimePickerView;)I
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/RadialTimePickerView;)I
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RadialTimePickerView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/RadialTimePickerView;FFZ)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(II)I
    .locals 1

    invoke-static {p0, p1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/widget/RadialTimePickerView;FF)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/RadialTimePickerView;IZ)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/RadialTimePickerView;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/widget/RadialTimePickerView;)I
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/RadialTimePickerView;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result v0

    return v0
.end method

.method private animatePicker(ZJ)V
    .locals 5

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private static calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V
    .locals 2

    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p3, v0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    sget-object v1, Landroid/widget/RadialTimePickerView;->COS_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p2, v1

    aput v1, p5, v0

    sget-object v1, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p3, v1

    aput v1, p6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculatePositionsHours()V
    .locals 12

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v3, v1, v2

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v1

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v1, v1, v2

    int-to-float v7, v1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v8, v1, v2

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v9, v1, v2

    move v4, v0

    invoke-static/range {v3 .. v9}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v3, v2

    int-to-float v6, v1

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v7, v2

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v8, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v2, v2, v4

    int-to-float v9, v2

    iget-object v10, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v11, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    invoke-static/range {v5 .. v11}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    :cond_0
    return-void
.end method

.method private calculatePositionsMinutes()V
    .locals 10

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v3, v1, v2

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v1

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v1, v1, v2

    int-to-float v7, v1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v8, v1, v2

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v9, v1, v2

    move v4, v0

    invoke-static/range {v3 .. v9}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;F)V
    .locals 4

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCircleBackground(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 3

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    if-lez v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Landroid/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private drawHoursClipped(Landroid/graphics/Canvas;IZ)V
    .locals 16

    move-object/from16 v13, p0

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v14, 0x0

    aget v0, v0, v14

    int-to-float v2, v0

    iget-object v3, v13, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v14

    iget-object v5, v13, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v6, v0, v14

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v7, v0, v14

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v0, v14

    const/4 v15, 0x1

    if-eqz p3, :cond_0

    iget-boolean v0, v13, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-nez v0, :cond_0

    move v10, v15

    goto :goto_0

    :cond_0
    move v10, v14

    :goto_0
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v0, v14

    move-object v0, v13

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    iget-boolean v0, v13, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_2

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, v13, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v1

    iget-object v5, v13, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    iget-object v6, v13, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v7, v13, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v0, v14

    if-eqz p3, :cond_1

    iget-boolean v0, v13, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v0, :cond_1

    move v10, v15

    goto :goto_1

    :cond_1
    move v10, v14

    :goto_1
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v0, v14

    move-object v0, v13

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    :cond_2
    return-void
.end method

.method private drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 3

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    mul-float/2addr v1, p3

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    if-lez v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Landroid/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private drawMinutesClipped(Landroid/graphics/Canvas;IZ)V
    .locals 14

    move-object v13, p0

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, v13, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v1

    iget-object v5, v13, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v6, v0, v1

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v7, v0, v1

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v0, v1

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v0, v1

    move-object v0, v13

    move-object v1, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-boolean v1, v0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v9, v1

    iget-object v1, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v10, v1, v9

    iget-object v1, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v4, v9, 0x2

    aget v11, v1, v4

    iget-object v1, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v4, v9, 0x2

    aget v1, v1, v4

    rem-int/lit8 v1, v1, 0x1e

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v12, v1

    const/4 v13, 0x1

    iget-object v1, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v6, 0x1

    aget v14, v1, v6

    iget-object v1, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v15, v1, v6

    iget-object v1, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v1, v1, v6

    rem-int/lit8 v1, v1, 0x1e

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iget v1, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    iget v3, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v3, v3

    int-to-float v6, v10

    int-to-float v5, v14

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    invoke-static {v6, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    sub-float v20, v3, v2

    int-to-float v2, v11

    int-to-float v3, v15

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    invoke-static {v2, v3, v5}, Landroid/util/MathUtils;->lerpDeg(FFF)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    move/from16 v21, v9

    move/from16 v22, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v3, v9

    mul-float v3, v3, v20

    add-float v9, v2, v3

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v2, v2

    move/from16 v23, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v3, v10

    mul-float v3, v3, v20

    sub-float v10, v2, v3

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v3, 0x0

    aget-object v11, v2, v3

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v1

    invoke-virtual {v7, v9, v10, v2, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v8, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->reset()V

    int-to-float v2, v1

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v9, v10, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_3
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    invoke-static {v12, v4, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v19

    const/4 v2, 0x0

    cmpl-float v2, v19, v2

    if-lez v2, :cond_4

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v3, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    int-to-float v3, v3

    mul-float v3, v3, v19

    invoke-virtual {v7, v9, v10, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    int-to-float v2, v1

    sub-float v3, v20, v2

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v26, v1

    iget v1, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    move/from16 v27, v4

    move-wide/from16 v28, v5

    int-to-double v4, v1

    mul-double v4, v4, v17

    double-to-int v1, v4

    add-int v30, v2, v1

    iget v1, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-double v4, v2

    mul-double v4, v4, v24

    double-to-int v2, v4

    sub-int v31, v1, v2

    float-to-double v1, v3

    mul-double v1, v1, v17

    double-to-int v1, v1

    add-int v1, v30, v1

    int-to-float v6, v1

    float-to-double v1, v3

    mul-double v1, v1, v24

    double-to-int v1, v1

    sub-int v1, v31, v1

    int-to-float v5, v1

    iget-object v1, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v2, 0x2

    aget-object v4, v1, v2

    iget v1, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v1

    iget v1, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    move/from16 v16, v26

    move/from16 v26, v1

    move-object v1, v7

    move/from16 v32, v3

    move/from16 v3, v26

    move/from16 v26, v27

    move-object/from16 v27, v4

    move v4, v6

    move/from16 v33, v5

    move/from16 v34, v6

    move-object/from16 v6, v27

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V
    .locals 15

    move-object/from16 v0, p8

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move/from16 v3, p11

    int-to-float v4, v3

    const/high16 v5, 0x41f00000    # 30.0f

    div-float/2addr v4, v5

    float-to-int v5, v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/16 v7, 0xc

    rem-int/2addr v6, v7

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_4

    if-eq v5, v9, :cond_1

    if-ne v6, v9, :cond_0

    goto :goto_1

    :cond_0
    move v10, v8

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v10, 0x1

    :goto_2
    if-eqz p12, :cond_2

    if-nez v10, :cond_2

    nop

    move-object v7, p0

    move-object/from16 v13, p4

    move/from16 v8, p9

    move v14, v4

    move-object/from16 v4, p1

    goto :goto_4

    :cond_2
    const/16 v11, 0x8

    if-eqz p10, :cond_3

    if-eqz v10, :cond_3

    const/16 v12, 0x20

    goto :goto_3

    :cond_3
    move v12, v8

    :goto_3
    or-int/2addr v11, v12

    invoke-static {v11}, Landroid/util/StateSet;->get(I)[I

    move-result-object v12

    move-object/from16 v13, p4

    invoke-virtual {v13, v12, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    move-object v7, p0

    move/from16 v8, p9

    invoke-direct {v7, v12, v8}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    aget-object v2, p5, v9

    aget v1, p6, v9

    aget v3, p7, v9

    move v14, v4

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    move v4, v14

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p11

    const/16 v7, 0xc

    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    move-object v7, p0

    move-object/from16 v13, p4

    move/from16 v8, p9

    move v14, v4

    move-object/from16 v4, p1

    return-void
.end method

.method private getDegreesForHour(I)I
    .locals 2

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/16 v1, 0xc

    if-eqz v0, :cond_0

    if-lt p1, v1, :cond_1

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    mul-int/lit8 v0, p1, 0x1e

    return v0
.end method

.method private getDegreesForMinute(I)I
    .locals 1

    mul-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getDegreesFromXY(FFZ)I
    .locals 12

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int v2, v1, v2

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    add-int/2addr v1, v3

    move v0, v2

    :goto_0
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    float-to-double v2, v2

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    float-to-double v4, v4

    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    int-to-double v8, v0

    cmpg-double v8, v6, v8

    if-ltz v8, :cond_3

    if-eqz p3, :cond_1

    int-to-double v8, v1

    cmpl-double v8, v6, v8

    if-lez v8, :cond_1

    goto :goto_1

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

    if-gez v8, :cond_2

    add-int/lit16 v9, v8, 0x168

    return v9

    :cond_2
    return v8

    :cond_3
    :goto_1
    const/4 v8, -0x1

    return v8
.end method

.method private getHourForDegrees(IZ)I
    .locals 3

    div-int/lit8 v0, p1, 0x1e

    rem-int/lit8 v0, v0, 0xc

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    if-nez v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0xc

    :cond_2
    :goto_0
    return v0
.end method

.method private getInnerCircleForHour(I)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

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

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-double v2, v0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    float-to-double v4, v0

    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    int-to-double v8, v0

    cmpg-double v0, v6, v8

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private getMinuteForDegrees(I)I
    .locals 1

    div-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getMultipliedAlpha(II)I
    .locals 6

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

    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const-wide/16 v4, 0x3c

    invoke-direct {p0, v3, v4, v5}, Landroid/widget/RadialTimePickerView;->animatePicker(ZJ)V

    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-static {v2, v1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v3

    rem-int/lit16 v3, v3, 0x168

    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-ne v5, v0, :cond_2

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v5, v5, v1

    if-eq v5, v3, :cond_1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    :goto_1
    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v3, v6, v1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v3

    goto :goto_3

    :cond_3
    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->snapPrefer30s(I)I

    move-result v3

    rem-int/lit16 v3, v3, 0x168

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v5, v5, v4

    if-eq v5, v3, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v1

    :goto_2
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v3, v6, v4

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v3

    :goto_3
    if-nez v5, :cond_6

    if-nez p3, :cond_6

    if-eqz p4, :cond_5

    goto :goto_4

    :cond_5
    return v1

    :cond_6
    :goto_4
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v1, v6, v3, p4}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_7
    if-nez v5, :cond_8

    if-eqz p3, :cond_9

    :cond_8
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/RadialTimePickerView;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    :cond_9
    return v4
.end method

.method private initData()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    return-void
.end method

.method private initHoursAndMinutesText()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    const-string v3, "%02d"

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    const-string v3, "%d"

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    const-string v3, "%02d"

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static preparePrefer30sMap()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x169

    if-ge v3, v4, :cond_3

    sget-object v4, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aput v0, v4, v3

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x6

    const/16 v4, 0x168

    if-ne v0, v4, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :cond_0
    rem-int/lit8 v4, v0, 0x1e

    if-nez v4, :cond_1

    const/16 v2, 0xe

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setCurrentHourInternal(IZZ)V
    .locals 5

    rem-int/lit8 v0, p1, 0xc

    mul-int/lit8 v0, v0, 0x1e

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v2, 0x0

    aput v0, v1, v2

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

    :goto_1
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result v3

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-ne v4, v1, :cond_2

    iget-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eq v4, v3, :cond_3

    :cond_2
    iput v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    if-eqz p2, :cond_4

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v4, v2, p1, p3}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_4
    return-void
.end method

.method private setCurrentMinuteInternal(IZ)V
    .locals 3

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x6

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v2, p1, v1}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_0
    return-void
.end method

.method private showPicker(ZZ)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->animatePicker(ZJ)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    :goto_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    return-void
.end method

.method private static snapOnly30s(II)I
    .locals 5

    const/16 v0, 0x1e

    div-int/lit8 v1, p0, 0x1e

    mul-int/lit8 v1, v1, 0x1e

    add-int/lit8 v2, v1, 0x1e

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    if-ne p0, v1, :cond_1

    add-int/lit8 v1, v1, -0x1e

    :cond_1
    move p0, v1

    goto :goto_0

    :cond_2
    sub-int v3, p0, v1

    sub-int v4, v2, p0

    if-ge v3, v4, :cond_3

    move p0, v1

    goto :goto_0

    :cond_3
    move p0, v2

    :goto_0
    return p0
.end method

.method private static snapPrefer30s(I)I
    .locals 1

    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aget v0, v0, p0

    return v0
.end method


# virtual methods
.method applyAttributes(Landroid/util/AttributeSet;II)V
    .locals 10

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->TimePicker:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const v5, -0xff01

    if-nez v2, :cond_0

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    const/4 v7, 0x0

    aput-object v6, v4, v7

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v6, 0x2

    if-nez v3, :cond_1

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v3

    :goto_1
    aput-object v8, v4, v6

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v6, 0x1

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v8, v8, v7

    aput-object v8, v4, v6

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const/16 v6, 0x28

    if-eqz v4, :cond_2

    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    goto :goto_2

    :cond_2
    nop

    :goto_2
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    move-result-object v6

    iput v5, p0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v8, v8, v7

    invoke-virtual {v8, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    iput v7, p0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    const/4 v8, 0x4

    const v9, 0x1060165

    invoke-virtual {v0, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getAmOrPm()I
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method public getCurrentItemShowing()I
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCurrentMinute()I
    .locals 2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method public initialize(IIZ)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eq v0, p3, :cond_0

    iput-boolean p3, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    invoke-direct {p0, p2, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    invoke-direct {p0, p1, v1}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RadialTimePickerView;->drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RadialTimePickerView;->drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v1

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v3

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    div-int/2addr v2, v1

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsHours()V

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsMinutes()V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_4

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    const/4 v3, 0x1

    iget-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    if-nez v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_0
    iget-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6, v2, v3}, Landroid/widget/RadialTimePickerView;->handleTouchInput(FFZZ)Z

    move-result v5

    or-int/2addr v4, v5

    iput-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    :cond_4
    return v1
.end method

.method public setAmOrPm(I)Z
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-eq v0, p1, :cond_1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCurrentHour(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 3

    packed-switch p1, :pswitch_data_0

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

    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showMinutes(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showHours(Z)V

    nop

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

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    return-void
.end method

.method public setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    return-void
.end method

.method public showHours(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView;->showPicker(ZZ)V

    return-void
.end method

.method public showMinutes(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView;->showPicker(ZZ)V

    return-void
.end method
