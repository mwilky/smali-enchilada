.class Lcom/oneplus/lib/widget/DayPickerView;
.super Landroid/view/ViewGroup;
.source "DayPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;
    }
.end annotation


# static fields
.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DATE_FORMATTER:Ljava/text/DateFormat;

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_LAYOUT:I

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

.field private mContext:Landroid/content/Context;

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private final mNextButton:Landroid/widget/ImageButton;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnPageChangedListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

.field private final mPrevButton:Landroid/widget/ImageButton;

.field private final mSelectedDay:Ljava/util/Calendar;

.field private mTempCalendar:Ljava/util/Calendar;

.field private final mViewPager:Lcom/oneplus/lib/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Lcom/oneplus/commonctrl/R$layout;->op_day_picker_content_material:I

    sput v0, Lcom/oneplus/lib/widget/DayPickerView;->DEFAULT_LAYOUT:I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/lib/widget/DayPickerView;->DATE_FORMATTER:Ljava/text/DateFormat;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010098

    aput v2, v0, v1

    sput-object v0, Lcom/oneplus/lib/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035d

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/lib/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    new-instance v2, Lcom/oneplus/lib/widget/DayPickerView$2;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/widget/DayPickerView$2;-><init>(Lcom/oneplus/lib/widget/DayPickerView;)V

    iput-object v2, v0, Lcom/oneplus/lib/widget/DayPickerView;->mOnPageChangedListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    new-instance v2, Lcom/oneplus/lib/widget/DayPickerView$3;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/widget/DayPickerView$3;-><init>(Lcom/oneplus/lib/widget/DayPickerView;)V

    iput-object v2, v0, Lcom/oneplus/lib/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, v0, Lcom/oneplus/lib/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView:[I

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_android_firstDayOfWeek:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    sget v7, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_android_minDate:I

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_android_maxDate:I

    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_monthTextAppearance:I

    sget v10, Lcom/oneplus/commonctrl/R$style;->TextAppearance_Material_Widget_Calendar_Month:I

    invoke-virtual {v2, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    sget v10, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_weekDayTextAppearance:I

    sget v11, Lcom/oneplus/commonctrl/R$style;->TextAppearance_Material_Widget_Calendar_DayOfWeek:I

    invoke-virtual {v2, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    sget v11, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_dateTextAppearance:I

    sget v12, Lcom/oneplus/commonctrl/R$style;->TextAppearance_Material_Widget_Calendar_Day:I

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    sget v12, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_daySelectorColor:I

    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v13, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    sget v14, Lcom/oneplus/commonctrl/R$layout;->op_date_picker_month_item_material:I

    sget v15, Lcom/oneplus/commonctrl/R$id;->month_view:I

    invoke-direct {v13, v1, v14, v15}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v13, v0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    iget-object v13, v0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v13, v9}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setMonthTextAppearance(I)V

    iget-object v13, v0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v13, v10}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    iget-object v13, v0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v13, v11}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    iget-object v13, v0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v13, v12}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    sget v14, Lcom/oneplus/lib/widget/DayPickerView;->DEFAULT_LAYOUT:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v16

    if-lez v16, :cond_0

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DayPickerView;->addView(Landroid/view/View;)V

    nop

    move-object/from16 v1, p1

    goto :goto_0

    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$id;->prev:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v15, v0, Lcom/oneplus/lib/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/oneplus/commonctrl/R$id;->next:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    iget-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    iget-object v15, v0, Lcom/oneplus/lib/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/oneplus/commonctrl/R$id;->day_picker_view_pager:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/ViewPager;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/lib/widget/ViewPager;

    iget-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/lib/widget/ViewPager;

    iget-object v15, v0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v1, v15}, Lcom/oneplus/lib/widget/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/lib/widget/ViewPager;

    iget-object v15, v0, Lcom/oneplus/lib/widget/DayPickerView;->mOnPageChangedListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v15}, Lcom/oneplus/lib/widget/ViewPager;->setOnPageChangeListener(Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;)V

    if-eqz v9, :cond_2

    iget-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    move-object/from16 v17, v2

    sget-object v2, Lcom/oneplus/lib/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v15, v2, v3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v3, v0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_2
    move-object/from16 v17, v2

    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/oneplus/lib/widget/DayPickerView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x76c

    const/4 v3, 0x1

    const/4 v15, 0x0

    invoke-virtual {v1, v2, v15, v3}, Ljava/util/Calendar;->set(III)V

    :cond_3
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v8, v1}, Lcom/oneplus/lib/widget/DayPickerView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v15

    if-nez v15, :cond_4

    const/16 v15, 0x834

    const/16 v4, 0xb

    const/16 v5, 0x1f

    invoke-virtual {v1, v15, v4, v5}, Ljava/util/Calendar;->set(III)V

    :cond_4
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v15, v4, v2

    if-ltz v15, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v20, v2

    move-wide/from16 v22, v4

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    invoke-static/range {v18 .. v23}, Lcom/oneplus/lib/util/MathUtils;->constrain(JJJ)J

    move-result-wide v7

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/DayPickerView;->setFirstDayOfWeek(I)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/lib/widget/DayPickerView;->setMinDate(J)V

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/lib/widget/DayPickerView;->setMaxDate(J)V

    const/4 v15, 0x0

    invoke-virtual {v0, v7, v8, v15}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(JZ)V

    iget-object v15, v0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    move-object/from16 v26, v1

    new-instance v1, Lcom/oneplus/lib/widget/DayPickerView$1;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/widget/DayPickerView$1;-><init>(Lcom/oneplus/lib/widget/DayPickerView;)V

    invoke-virtual {v15, v1}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setOnDaySelectedListener(Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V

    return-void

    :cond_5
    move-object/from16 v26, v1

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v7, "maxDate must be >= minDate"

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/DayPickerView;)Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/DayPickerView;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/DayPickerView;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/DayPickerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/DayPickerView;->updateButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/DayPickerView;)Lcom/oneplus/lib/widget/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/lib/widget/ViewPager;

    return-object v0
.end method

.method private getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v2, v0

    const/16 v0, 0xc

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    return v2
.end method

.method private getPositionFromDay(J)I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/DayPickerView;->getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/DayPickerView;->getTempCalendarForTime(J)Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/DayPickerView;->getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v2

    return v2
.end method

.method private getTempCalendarForTime(J)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/oneplus/lib/widget/DayPickerView;->DATE_FORMATTER:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "SearchView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not in format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "MM/dd/yyyy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :goto_0
    return v0
.end method

.method private setDate(JZZ)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/DayPickerView;->getTempCalendarForTime(J)Ljava/util/Calendar;

    if-nez p4, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/DayPickerView;->getPositionFromDay(J)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/lib/widget/ViewPager;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-eq v1, v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/lib/widget/ViewPager;

    invoke-virtual {v2, v1, p3}, Lcom/oneplus/lib/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    iget-object v3, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setSelectedDay(Ljava/util/Calendar;)V

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
    iget-object v3, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    const/4 v4, 0x4

    if-eqz v2, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

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

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/DayPickerView;->getPositionFromDay(J)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/lib/widget/ViewPager;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2, p3}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getBoundsForDate(Ljava/util/Calendar;Landroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method public getDate()J
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDayOfWeekTextAppearance()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getDayOfWeekTextAppearance()I

    move-result v0

    return v0
.end method

.method public getDayTextAppearance()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getDayTextAppearance()I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMostVisiblePosition()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/lib/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 19

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    :goto_0
    sub-int v5, p4, p2

    sub-int v6, p5, p3

    iget-object v7, v0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/lib/widget/ViewPager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8, v5, v6}, Lcom/oneplus/lib/widget/ViewPager;->layout(IIII)V

    iget-object v7, v0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/lib/widget/ViewPager;

    invoke-virtual {v7, v8}, Lcom/oneplus/lib/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/SimpleMonthView;->getMonthHeight()I

    move-result v8

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/SimpleMonthView;->getCellWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingTop()I

    move-result v12

    sub-int v13, v8, v11

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingLeft()I

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

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingTop()I

    move-result v14

    sub-int v15, v8, v3

    div-int/lit8 v15, v15, 0x2

    move-object/from16 v16, v1

    add-int v1, v14, v15

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/SimpleMonthView;->getPaddingRight()I

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

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/lib/widget/ViewPager;

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/widget/DayPickerView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ViewPager;->getMeasuredWidthAndState()I

    move-result v1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ViewPager;->getMeasuredHeightAndState()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/widget/DayPickerView;->setMeasuredDimension(II)V

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ViewPager;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ViewPager;->getMeasuredHeight()I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v7, p0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6, v5}, Landroid/widget/ImageButton;->measure(II)V

    iget-object v7, p0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6, v5}, Landroid/widget/ImageButton;->measure(II)V

    return-void
.end method

.method public onRangeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(JZZ)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/lib/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/DayPickerView;->updateButtonVisibility(I)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerView;->requestLayout()V

    return-void
.end method

.method public setDate(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(JZ)V

    return-void
.end method

.method public setDate(JZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(JZZ)V

    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerView;->onRangeChanged()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerView;->onRangeChanged()V

    return-void
.end method

.method public setOnDaySelectedListener(Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    return-void
.end method

.method public setPosition(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/lib/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
