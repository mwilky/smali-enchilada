.class Landroid/widget/SimpleMonthView;
.super Landroid/view/View;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleMonthView$OnDayClickListener;,
        Landroid/widget/SimpleMonthView$MonthViewTouchHelper;
    }
.end annotation


# static fields
.field private static final DAYS_IN_WEEK:I = 0x7

.field private static final DEFAULT_SELECTED_DAY:I = -0x1

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final MAX_WEEKS_IN_MONTH:I = 0x6

.field private static final MONTH_YEAR_FORMAT:Ljava/lang/String; = "MMMMy"

.field private static final SELECTED_HIGHLIGHT_ALPHA:I = 0xb0


# instance fields
.field private mActivatedDay:I

.field private final mCalendar:Landroid/icu/util/Calendar;

.field private mCellWidth:I

.field private final mDayFormatter:Ljava/text/NumberFormat;

.field private mDayHeight:I

.field private final mDayHighlightPaint:Landroid/graphics/Paint;

.field private final mDayHighlightSelectorPaint:Landroid/graphics/Paint;

.field private mDayOfWeekHeight:I

.field private final mDayOfWeekLabels:[Ljava/lang/String;

.field private final mDayOfWeekPaint:Landroid/text/TextPaint;

.field private mDayOfWeekStart:I

.field private final mDayPaint:Landroid/text/TextPaint;

.field private final mDaySelectorPaint:Landroid/graphics/Paint;

.field private mDaySelectorRadius:I

.field private mDayTextColor:Landroid/content/res/ColorStateList;

.field private mDaysInMonth:I

.field private final mDesiredCellWidth:I

.field private final mDesiredDayHeight:I

.field private final mDesiredDayOfWeekHeight:I

.field private final mDesiredDaySelectorRadius:I

.field private final mDesiredMonthHeight:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mHighlightedDay:I

.field private mIsTouchHighlighted:Z

.field private final mLocale:Ljava/util/Locale;

.field private mMonth:I

.field private mMonthHeight:I

.field private final mMonthPaint:Landroid/text/TextPaint;

.field private mMonthYearLabel:Ljava/lang/String;

.field private mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mPaddedHeight:I

.field private mPaddedWidth:I

.field private mPreviouslyHighlightedDay:I

.field private mToday:I

.field private final mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

.field private mWeekStart:I

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mToday:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    iput v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    const/16 v2, 0x1f

    iput v2, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050062

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    const v2, 0x105005d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    const v2, 0x105005c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    const v2, 0x1050061

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    const v2, 0x105005f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    new-instance v2, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v2, p0, p0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V

    iput-object v2, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, v2}, Landroid/widget/SimpleMonthView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0, v1}, Landroid/widget/SimpleMonthView;->setImportantForAccessibility(I)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateMonthYearLabel()V

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    invoke-direct {p0, v0}, Landroid/widget/SimpleMonthView;->initPaints(Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/SimpleMonthView;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/widget/SimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/SimpleMonthView;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/widget/SimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/SimpleMonthView;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/widget/SimpleMonthView;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/SimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/SimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/SimpleMonthView;)Ljava/text/NumberFormat;
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    return-object v0
.end method

.method private applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;
    .locals 5

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->TextAppearance:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    nop

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v4, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    iget v3, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v4, v0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    iget v5, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v3

    const/4 v8, 0x1

    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    :goto_0
    iget v10, v0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt v8, v10, :cond_b

    mul-int v10, v5, v9

    div-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v11

    if-eqz v11, :cond_0

    iget v11, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int/2addr v11, v10

    goto :goto_1

    :cond_0
    move v11, v10

    :goto_1
    const/4 v12, 0x0

    invoke-direct {v0, v8}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_1

    or-int/lit8 v12, v12, 0x8

    :cond_1
    iget v14, v0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    const/16 v16, 0x1

    if-ne v14, v8, :cond_2

    move/from16 v14, v16

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    iget v15, v0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-ne v15, v8, :cond_3

    move/from16 v15, v16

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    if-eqz v14, :cond_5

    or-int/lit8 v12, v12, 0x20

    if-eqz v15, :cond_4

    move/from16 v17, v3

    iget-object v3, v0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    goto :goto_4

    :cond_4
    move/from16 v17, v3

    iget-object v3, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    :goto_4
    move/from16 v18, v5

    int-to-float v5, v11

    move/from16 v19, v10

    int-to-float v10, v7

    move/from16 v20, v12

    iget v12, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    int-to-float v12, v12

    invoke-virtual {v1, v5, v10, v12, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    nop

    move/from16 v12, v20

    goto :goto_6

    :cond_5
    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v10

    if-eqz v15, :cond_7

    or-int/lit8 v12, v12, 0x10

    if-eqz v13, :cond_6

    int-to-float v3, v11

    int-to-float v5, v7

    iget v10, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    int-to-float v10, v10

    move/from16 v21, v12

    iget-object v12, v0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v10, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_6
    move/from16 v21, v12

    :goto_5
    move/from16 v12, v21

    :cond_7
    :goto_6
    iget v3, v0, Landroid/widget/SimpleMonthView;->mToday:I

    if-ne v3, v8, :cond_8

    goto :goto_7

    :cond_8
    const/16 v16, 0x0

    :goto_7
    move/from16 v3, v16

    if-eqz v3, :cond_9

    if-nez v14, :cond_9

    iget-object v5, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    move/from16 v22, v3

    goto :goto_8

    :cond_9
    invoke-static {v12}, Landroid/util/StateSet;->get(I)[I

    move-result-object v5

    iget-object v10, v0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    move/from16 v22, v3

    const/4 v3, 0x0

    invoke-virtual {v10, v5, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    :goto_8
    move v3, v5

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v5, v0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    move/from16 v24, v12

    move/from16 v23, v13

    int-to-long v12, v8

    invoke-virtual {v5, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    int-to-float v10, v11

    int-to-float v12, v7

    sub-float/2addr v12, v6

    invoke-virtual {v1, v5, v10, v12, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x7

    if-ne v9, v5, :cond_a

    const/4 v5, 0x0

    add-int/2addr v7, v4

    move v9, v5

    :cond_a
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v17

    move/from16 v5, v18

    goto/16 :goto_0

    :cond_b
    move/from16 v17, v3

    move/from16 v18, v5

    return-void
.end method

.method private drawDaysOfWeek(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v1

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x7

    if-ge v6, v7, :cond_1

    mul-int v7, v3, v6

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int/2addr v8, v7

    goto :goto_1

    :cond_0
    move v8, v7

    :goto_1
    iget-object v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    aget-object v9, v9, v6

    int-to-float v10, v8

    int-to-float v11, v5

    sub-float/2addr v11, v4

    invoke-virtual {p1, v9, v10, v11, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawMonth(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v1

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private ensureFocusedDay()V
    .locals 2

    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    return-void

    :cond_1
    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    return-void

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    return-void
.end method

.method private findClosestColumn(Landroid/graphics/Rect;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget v2, p0, Landroid/widget/SimpleMonthView;->mPaddingLeft:I

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    div-int v2, v0, v2

    const/4 v3, 0x6

    invoke-static {v2, v1, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    rsub-int/lit8 v2, v1, 0x7

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    return v2
.end method

.method private findClosestRow(Landroid/graphics/Rect;)I
    .locals 11

    if-nez p1, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v4, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v3

    int-to-float v7, v0

    int-to-float v8, v6

    sub-float/2addr v8, v5

    sub-float/2addr v7, v8

    float-to-int v0, v7

    int-to-float v7, v0

    int-to-float v8, v4

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v8

    iget v9, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    add-int/2addr v8, v9

    div-int/lit8 v9, v8, 0x7

    rem-int/lit8 v10, v8, 0x7

    if-nez v10, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    move v10, v1

    :goto_0
    sub-int/2addr v9, v10

    invoke-static {v7, v1, v9}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1
.end method

.method private findDayOffset()I
    .locals 3

    iget v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x7

    return v1

    :cond_0
    return v0
.end method

.method private getDayAtLocation(II)I
    .locals 10

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, -0x1

    if-ltz v0, :cond_5

    iget v2, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    if-lt v0, v2, :cond_0

    goto :goto_2

    :cond_0
    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v3

    sub-int v3, p2, v3

    if-lt v3, v2, :cond_4

    iget v4, p0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    if-lt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int/2addr v4, v0

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    sub-int v5, v3, v2

    iget v6, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    div-int/2addr v5, v6

    mul-int/lit8 v6, v4, 0x7

    iget v7, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    div-int/2addr v6, v7

    mul-int/lit8 v7, v5, 0x7

    add-int/2addr v7, v6

    add-int/lit8 v8, v7, 0x1

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-direct {p0, v8}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v9

    if-nez v9, :cond_3

    return v1

    :cond_3
    return v8

    :cond_4
    :goto_1
    return v1

    :cond_5
    :goto_2
    return v1
.end method

.method private static getDaysInMonth(II)I
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x1e

    return v0

    :pswitch_1
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    :goto_0
    return v0

    :pswitch_2
    const/16 v0, 0x1f

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initPaints(Landroid/content/res/Resources;)V
    .locals 10

    const v0, 0x10401ab

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x10401a1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x10401a2

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x1050063

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x105005e

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x1050060

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    int-to-float v8, v3

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v8, 0x0

    invoke-static {v0, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    int-to-float v9, v4

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-static {v1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-static {v2, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private isDayEnabled(I)Z
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFirstDayOfWeek(I)Z
    .locals 3

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    add-int v1, v0, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isLastDayOfWeek(I)Z
    .locals 2

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    add-int v1, v0, p1

    rem-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isValidDayOfMonth(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidMonth(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moveOneDay(Z)Z
    .locals 4

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v2}, Landroid/widget/SimpleMonthView;->isLastDayOfWeek(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge v2, v3, :cond_1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v2}, Landroid/widget/SimpleMonthView;->isFirstDayOfWeek(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-le v2, v1, :cond_1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private onDayClicked(I)Z
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iget v1, p0, Landroid/widget/SimpleMonthView;->mYear:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/icu/util/Calendar;->set(III)V

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-interface {v1, p0, v0}, Landroid/widget/SimpleMonthView$OnDayClickListener;->onDayClick(Landroid/widget/SimpleMonthView;Landroid/icu/util/Calendar;)V

    :cond_1
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private sameDay(ILandroid/icu/util/Calendar;)Z
    .locals 3

    iget v0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateDayOfWeekLabels()V
    .locals 5

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    iget v4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    rem-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget-object v2, v0, v4

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateMonthYearLabel()V
    .locals 3

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    const-string v1, "MMMMy"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public getBoundsForDay(ILandroid/graphics/Rect;)Z
    .locals 10

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v1, v0, 0x7

    iget v2, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    mul-int/2addr v4, v2

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v3

    mul-int v4, v1, v2

    add-int/2addr v3, v4

    :goto_0
    div-int/lit8 v4, v0, 0x7

    iget v5, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    iget v6, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v7, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v6

    mul-int v8, v4, v5

    add-int/2addr v7, v8

    add-int v8, v3, v2

    add-int v9, v7, v5

    invoke-virtual {p2, v3, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v8, 0x1

    return v8
.end method

.method public getCellWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getMonthHeight()I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    return v0
.end method

.method public getMonthYearLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v1

    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawMonth(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDaysOfWeek(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 6

    if-eqz p1, :cond_7

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-eq p2, v1, :cond_6

    const/16 v1, 0x21

    if-eq p2, v1, :cond_4

    const/16 v1, 0x42

    if-eq p2, v1, :cond_2

    const/16 v1, 0x82

    if-eq p2, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v1

    sub-int v3, v1, v0

    add-int/2addr v3, v2

    if-ge v3, v2, :cond_1

    add-int/lit8 v2, v3, 0x7

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_3

    :cond_2
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    mul-int/lit8 v3, v1, 0x7

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    :goto_1
    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_3

    :cond_4
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v1

    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    add-int/2addr v3, v0

    const/4 v4, 0x7

    div-int/2addr v3, v4

    sub-int v5, v1, v0

    mul-int/2addr v4, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    iget v2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-le v5, v2, :cond_5

    add-int/lit8 v2, v5, -0x7

    goto :goto_2

    :cond_5
    move v2, v5

    :goto_2
    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_3

    :cond_6
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v1

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    mul-int/lit8 v3, v1, 0x7

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    nop

    :goto_3
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method protected onFocusLost()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    :cond_0
    invoke-super {p0}, Landroid/view/View;->onFocusLost()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iget v4, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_7

    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-le v1, v2, :cond_7

    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :pswitch_4
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    return v3

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v4, p0

    :cond_4
    invoke-virtual {v4, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eq v4, p0, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, v2, :cond_4

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    return v3

    :cond_6
    nop

    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return v3

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 20

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int v4, p4, p2

    sub-int v5, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingBottom()I

    move-result v9

    sub-int v10, v4, v8

    sub-int v11, v5, v9

    sub-int v12, v10, v6

    sub-int v13, v11, v7

    iget v1, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    if-eq v12, v1, :cond_2

    iget v1, v0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    if-ne v13, v1, :cond_1

    move/from16 v19, v4

    goto :goto_0

    :cond_1
    iput v12, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    iput v13, v0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v7

    sub-int/2addr v1, v9

    int-to-float v2, v13

    int-to-float v3, v1

    div-float/2addr v2, v3

    iget v3, v0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    move v14, v1

    iget v1, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    div-int/lit8 v1, v1, 0x7

    iput v3, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    move v15, v3

    iget v3, v0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    iget v3, v0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    iput v1, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    div-int/lit8 v3, v1, 0x2

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v16

    add-int v3, v3, v16

    move/from16 v17, v1

    iget v1, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v9

    move/from16 v18, v2

    iget v2, v0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    move/from16 v19, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    iget-object v2, v0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v2}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    return-void

    :cond_2
    move/from16 v19, v4

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget v0, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    mul-int/lit8 v0, v0, 0x6

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    mul-int/lit8 v1, v1, 0x7

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1, p1}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    move-result v2

    invoke-static {v0, p2}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/SimpleMonthView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-direct {p0, v0, v1}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x3ea

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v3

    return-object v3
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->requestLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v0, v1}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    :pswitch_1
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iput-boolean v4, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0, v1}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v5

    iput-boolean v3, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    iget v6, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-eq v6, v5, :cond_0

    iput v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iput v5, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    :cond_0
    if-nez v2, :cond_1

    if-gez v5, :cond_1

    return v4

    :cond_1
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method setDayHighlightColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    nop

    const/16 v0, 0x18

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    sget-object v0, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    nop

    const/16 v0, 0x28

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method setDayTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    invoke-static {p1}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    :goto_0
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method setMonthParams(IIIIII)V
    .locals 5

    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    invoke-static {p2}, Landroid/widget/SimpleMonthView;->isValidMonth(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    :cond_0
    iput p3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mYear:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    invoke-static {p4}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    :goto_0
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mToday:I

    iget v1, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-static {v1, v3}, Landroid/widget/SimpleMonthView;->getDaysInMonth(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge v1, v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3, v0}, Landroid/widget/SimpleMonthView;->sameDay(ILandroid/icu/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v3, p0, Landroid/widget/SimpleMonthView;->mToday:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p5, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    iget v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p6, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateMonthYearLabel()V

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method public setMonthTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    sget-object v0, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method public setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    return-void
.end method

.method public setSelectedDay(I)V
    .locals 1

    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method
