.class Landroid/widget/DayPickerView;
.super Landroid/view/ViewGroup;
.source "DayPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DayPickerView$OnDaySelectedListener;
    }
.end annotation


# static fields
.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_LAYOUT:I = 0x1090055

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAdapter:Landroid/widget/DayPickerPagerAdapter;

.field private final mMaxDate:Landroid/icu/util/Calendar;

.field private final mMinDate:Landroid/icu/util/Calendar;

.field private final mNextButton:Landroid/widget/ImageButton;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private final mPrevButton:Landroid/widget/ImageButton;

.field private final mSelectedDay:Landroid/icu/util/Calendar;

.field private mTempCalendar:Landroid/icu/util/Calendar;

.field private final mViewPager:Lcom/android/internal/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010098

    aput v2, v0, v1

    sput-object v0, Landroid/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    new-instance v2, Landroid/widget/DayPickerView$2;

    invoke-direct {v2, v0}, Landroid/widget/DayPickerView$2;-><init>(Landroid/widget/DayPickerView;)V

    iput-object v2, v0, Landroid/widget/DayPickerView;->mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    new-instance v2, Landroid/widget/DayPickerView$3;

    invoke-direct {v2, v0}, Landroid/widget/DayPickerView$3;-><init>(Landroid/widget/DayPickerView;)V

    iput-object v2, v0, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, v0, Landroid/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    sget-object v2, Lcom/android/internal/R$styleable;->CalendarView:[I

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    nop

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v6

    iget-object v6, v6, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    const v11, 0x10303a1

    invoke-virtual {v2, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    const/16 v11, 0xb

    const v12, 0x10303a0

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    const/16 v13, 0xc

    const v14, 0x103039f

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    const/16 v14, 0xf

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v15, Landroid/widget/DayPickerPagerAdapter;

    const v11, 0x1090053

    const v7, 0x102031c

    invoke-direct {v15, v1, v11, v7}, Landroid/widget/DayPickerPagerAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v15, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    iget-object v7, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v7, v10}, Landroid/widget/DayPickerPagerAdapter;->setMonthTextAppearance(I)V

    iget-object v7, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v7, v12}, Landroid/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    iget-object v7, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v7, v13}, Landroid/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    iget-object v7, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v7, v14}, Landroid/widget/DayPickerPagerAdapter;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v11, 0x1090055

    const/4 v15, 0x0

    invoke-virtual {v7, v11, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v16

    if-lez v16, :cond_0

    invoke-virtual {v11, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v11, v15}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v0, v1}, Landroid/widget/DayPickerView;->addView(Landroid/view/View;)V

    nop

    move-object/from16 v1, p1

    const/4 v15, 0x0

    goto :goto_0

    :cond_0
    const v1, 0x102038f

    invoke-virtual {v0, v1}, Landroid/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v1, v0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v15, v0, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x102032b

    invoke-virtual {v0, v1}, Landroid/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    iget-object v1, v0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    iget-object v15, v0, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x1020221

    invoke-virtual {v0, v1}, Landroid/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager;

    iput-object v1, v0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    iget-object v1, v0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    iget-object v15, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v1, v15}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    iget-object v1, v0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    iget-object v15, v0, Landroid/widget/DayPickerView;->mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v15}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    if-eqz v10, :cond_2

    iget-object v1, v0, Landroid/widget/DayPickerView;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    move-object/from16 v17, v2

    sget-object v2, Landroid/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v15, v2, v3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v3, v0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_2
    move-object/from16 v17, v2

    :goto_1
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x76c

    const/4 v3, 0x1

    const/4 v15, 0x0

    invoke-virtual {v1, v2, v15, v3}, Landroid/icu/util/Calendar;->set(III)V

    :cond_3
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v9, v1}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result v15

    if-nez v15, :cond_4

    const/16 v15, 0x834

    const/16 v4, 0x1f

    const/16 v5, 0xb

    invoke-virtual {v1, v15, v5, v4}, Landroid/icu/util/Calendar;->set(III)V

    :cond_4
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v15, v4, v2

    if-ltz v15, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v20, v2

    move-wide/from16 v22, v4

    move-object/from16 v25, v7

    move-object/from16 v24, v8

    invoke-static/range {v18 .. v23}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v7

    invoke-virtual {v0, v6}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/DayPickerView;->setMinDate(J)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    const/4 v15, 0x0

    invoke-virtual {v0, v7, v8, v15}, Landroid/widget/DayPickerView;->setDate(JZ)V

    iget-object v15, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    move-object/from16 v26, v1

    new-instance v1, Landroid/widget/DayPickerView$1;

    invoke-direct {v1, v0}, Landroid/widget/DayPickerView$1;-><init>(Landroid/widget/DayPickerView;)V

    invoke-virtual {v15, v1}, Landroid/widget/DayPickerPagerAdapter;->setOnDaySelectedListener(Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V

    return-void

    :cond_5
    move-object/from16 v26, v1

    move-object/from16 v25, v7

    move-object/from16 v24, v8

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "maxDate must be >= minDate"

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Landroid/widget/DayPickerView;)Landroid/widget/DayPickerView$OnDaySelectedListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/DayPickerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/DayPickerView;->updateButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    return-object v0
.end method

.method private getDiffMonths(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v2, v0

    const/16 v0, 0xc

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    return v2
.end method

.method private getPositionFromDay(J)I
    .locals 3

    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, v1}, Landroid/widget/DayPickerView;->getDiffMonths(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getTempCalendarForTime(J)Landroid/icu/util/Calendar;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/widget/DayPickerView;->getDiffMonths(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    return v2
.end method

.method private getTempCalendarForTime(J)Landroid/icu/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    :cond_0
    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method private setDate(JZZ)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getTempCalendarForTime(J)Landroid/icu/util/Calendar;

    if-nez p4, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v1, p0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {v1, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getPositionFromDay(J)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v2}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-eq v1, v2, :cond_4

    iget-object v2, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v2, v1, p3}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_4
    iget-object v2, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    iget-object v3, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v3}, Landroid/widget/DayPickerPagerAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    return-void
.end method

.method private updateButtonVisibility(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v3}, Landroid/widget/DayPickerPagerAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object v3, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    const/4 v4, 0x4

    if-eqz v2, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v3, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getBoundsForDate(JLandroid/graphics/Rect;)Z
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getPositionFromDay(J)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    iget-object v2, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2, p3}, Landroid/widget/DayPickerPagerAdapter;->getBoundsForDate(Landroid/icu/util/Calendar;Landroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method public getDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDayOfWeekTextAppearance()I
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getDayOfWeekTextAppearance()I

    move-result v0

    return v0
.end method

.method public getDayTextAppearance()I
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getDayTextAppearance()I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMostVisiblePosition()I
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    :goto_0
    sub-int v5, p4, p2

    sub-int v6, p5, p3

    iget-object v7, v0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8, v5, v6}, Lcom/android/internal/widget/ViewPager;->layout(IIII)V

    iget-object v7, v0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SimpleMonthView;

    invoke-virtual {v7}, Landroid/widget/SimpleMonthView;->getMonthHeight()I

    move-result v8

    invoke-virtual {v7}, Landroid/widget/SimpleMonthView;->getCellWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v7}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v12

    sub-int v13, v8, v11

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    invoke-virtual {v7}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v13

    sub-int v14, v9, v10

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    add-int v0, v13, v10

    add-int v3, v12, v11

    invoke-virtual {v1, v13, v12, v0, v3}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v7}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v14

    sub-int v15, v8, v3

    div-int/lit8 v15, v15, 0x2

    move-object/from16 v16, v1

    add-int v1, v14, v15

    invoke-virtual {v7}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result v14

    sub-int v14, v5, v14

    sub-int v15, v9, v0

    div-int/lit8 v15, v15, 0x2

    sub-int v4, v14, v15

    move/from16 v17, v5

    sub-int v5, v4, v0

    move/from16 v18, v0

    add-int v0, v1, v3

    invoke-virtual {v2, v5, v1, v4, v0}, Landroid/widget/ImageButton;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/DayPickerView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidthAndState()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeightAndState()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/DayPickerView;->setMeasuredDimension(II)V

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeight()I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v7, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6, v5}, Landroid/widget/ImageButton;->measure(II)V

    iget-object v7, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6, v5}, Landroid/widget/ImageButton;->measure(II)V

    return-void
.end method

.method public onRangeChanged()V
    .locals 3

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/DayPickerPagerAdapter;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    iget-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/DayPickerView;->updateButtonVisibility(I)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->requestLayout()V

    return-void
.end method

.method public setDate(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/DayPickerView;->setDate(JZ)V

    return-void
.end method

.method public setDate(JZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->onRangeChanged()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->onRangeChanged()V

    return-void
.end method

.method public setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DayPickerView;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    return-void
.end method

.method public setPosition(I)V
    .locals 2

    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
