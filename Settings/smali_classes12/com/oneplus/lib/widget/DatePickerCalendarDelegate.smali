.class Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;
.super Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerCalendarDelegate.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final UNINITIALIZED:I = -0x1

.field private static final USE_LOCALE:I = 0x0

.field private static final VIEW_MONTH_DAY:I = 0x0

.field private static final VIEW_YEAR:I = 0x1


# instance fields
.field private mAnimator:Landroid/widget/ViewAnimator;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCurrentView:I

.field private mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

.field private mFirstDayOfWeek:I

.field private mHeaderMonthDay:Landroid/widget/TextView;

.field private mHeaderYear:Landroid/widget/TextView;

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private mMonthDayFormat:Ljava/text/SimpleDateFormat;

.field private final mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnHeaderClickListener:Landroid/view/View$OnClickListener;

.field private final mOnYearSelectedListener:Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private final mTempDate:Ljava/util/Calendar;

.field private mYearFormat:Ljava/text/SimpleDateFormat;

.field private mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 45
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010098

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    .line 47
    new-array v0, v0, [I

    const v1, 0x1010033

    aput v1, v0, v2

    sput-object v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->ATTRS_DISABLED_ALPHA:[I

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17
    .param p1, "delegator"    # Lcom/oneplus/lib/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    move-object/from16 v0, p0

    .line 79
    invoke-direct/range {p0 .. p2}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;)V

    .line 69
    const/4 v1, -0x1

    iput v1, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 75
    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 180
    new-instance v2, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;-><init>(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V

    iput-object v2, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    .line 202
    new-instance v2, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;-><init>(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V

    iput-object v2, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

    .line 231
    new-instance v2, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$3;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$3;-><init>(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V

    iput-object v2, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 81
    iget-object v2, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 82
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 83
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    .line 84
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    .line 85
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 87
    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    const/4 v4, 0x1

    const/16 v5, 0x76c

    invoke-virtual {v3, v5, v1, v4}, Ljava/util/Calendar;->set(III)V

    .line 88
    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    const/16 v5, 0x834

    const/16 v6, 0xb

    const/16 v7, 0x1f

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    .line 90
    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 91
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v5, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/oneplus/commonctrl/R$styleable;->DatePicker:[I

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual {v5, v7, v6, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 93
    .local v5, "a":Landroid/content/res/TypedArray;
    iget-object v6, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v6, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 95
    .local v6, "inflater":Landroid/view/LayoutInflater;
    sget v10, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_internalLayout:I

    sget v11, Lcom/oneplus/commonctrl/R$layout;->op_date_picker_material:I

    invoke-virtual {v5, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 99
    .local v10, "layoutResourceId":I
    iget-object v11, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v6, v10, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    .line 100
    iget-object v11, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->setSaveFromParentEnabled(Z)V

    .line 101
    iget-object v11, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    iget-object v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11, v12}, Lcom/oneplus/lib/widget/DatePicker;->addView(Landroid/view/View;)V

    .line 104
    iget-object v11, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    sget v12, Lcom/oneplus/commonctrl/R$id;->date_picker_header:I

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 105
    .local v11, "header":Landroid/view/ViewGroup;
    sget v12, Lcom/oneplus/commonctrl/R$id;->date_picker_header_year:I

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 106
    iget-object v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    iget-object v13, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget v12, Lcom/oneplus/commonctrl/R$id;->date_picker_header_date:I

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 108
    iget-object v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    iget-object v13, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const/4 v12, 0x0

    .line 116
    .local v12, "headerTextColor":Landroid/content/res/ColorStateList;
    sget v13, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_android_headerMonthTextAppearance:I

    invoke-virtual {v5, v13, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 118
    .local v13, "monthHeaderTextAppearance":I
    if-eqz v13, :cond_0

    .line 119
    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    sget-object v4, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    invoke-virtual {v14, v15, v4, v1, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 121
    .local v4, "textAppearance":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 122
    .local v14, "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    .end local v4    # "textAppearance":Landroid/content/res/TypedArray;
    .end local v14    # "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    :cond_0
    if-nez v12, :cond_1

    .line 126
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_headerTextColor:I

    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 129
    :cond_1
    if-eqz v12, :cond_2

    .line 130
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 131
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 139
    :cond_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    sget v14, Lcom/oneplus/commonctrl/R$id;->animator:I

    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ViewAnimator;

    iput-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    .line 145
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    sget v14, Lcom/oneplus/commonctrl/R$id;->date_picker_day_picker:I

    invoke-virtual {v4, v14}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/DayPickerView;

    iput-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    .line 146
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    invoke-virtual {v4, v14}, Lcom/oneplus/lib/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 147
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lcom/oneplus/lib/widget/DayPickerView;->setMinDate(J)V

    .line 148
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lcom/oneplus/lib/widget/DayPickerView;->setMaxDate(J)V

    .line 149
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(J)V

    .line 150
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    invoke-virtual {v4, v14}, Lcom/oneplus/lib/widget/DayPickerView;->setOnDaySelectedListener(Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;)V

    .line 153
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    sget v14, Lcom/oneplus/commonctrl/R$id;->date_picker_year_picker:I

    invoke-virtual {v4, v14}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/YearPickerView;

    iput-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    .line 154
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object v15, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v4, v14, v15}, Lcom/oneplus/lib/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 155
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/oneplus/lib/widget/YearPickerView;->setYear(I)V

    .line 156
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

    invoke-virtual {v4, v14}, Lcom/oneplus/lib/widget/YearPickerView;->setOnYearSelectedListener(Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;)V

    .line 159
    sget v4, Lcom/oneplus/commonctrl/R$string;->select_day:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    .line 160
    sget v4, Lcom/oneplus/commonctrl/R$string;->select_year:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    .line 164
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    .line 166
    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;
    .param p1, "x1"    # I

    .line 33
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    .line 33
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    .line 33
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->tryVibrate()V

    return-void
.end method

.method public static getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .line 547
    packed-switch p0, :pswitch_data_0

    .line 564
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :pswitch_0
    const/16 v0, 0x1e

    return v0

    .line 562
    :pswitch_1
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    :goto_0
    return v0

    .line 555
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

.method private multiplyAlphaComponent(IF)I
    .locals 4
    .param p1, "color"    # I
    .param p2, "alphaMod"    # F

    .line 171
    const v0, 0xffffff

    and-int/2addr v0, p1

    .line 172
    .local v0, "srcRgb":I
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 173
    .local v1, "srcAlpha":I
    int-to-float v2, v1

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 174
    .local v2, "dstAlpha":I
    shl-int/lit8 v3, v2, 0x18

    or-int/2addr v3, v0

    return v3
.end method

.method private onCurrentDateChanged(Z)V
    .locals 4
    .param p1, "announce"    # Z

    .line 263
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 266
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "year":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "monthDay":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    if-eqz p1, :cond_1

    .line 277
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->getFormattedCurrentDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 279
    :cond_1
    return-void
.end method

.method private onDateChanged(ZZ)V
    .locals 5
    .param p1, "fromUser"    # Z
    .param p2, "callbackToClient"    # Z

    .line 347
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 349
    .local v0, "year":I
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-eqz v1, :cond_2

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 352
    .local v1, "monthOfYear":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 353
    .local v2, "dayOfMonth":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_1

    .line 354
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-interface {v3, v4, v0, v1, v2}, Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/oneplus/lib/widget/DatePicker;III)V

    .line 356
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_2

    .line 357
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-interface {v3, v4, v0, v1, v2}, Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/oneplus/lib/widget/DatePicker;III)V

    .line 361
    .end local v1    # "monthOfYear":I
    .end local v2    # "dayOfMonth":I
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(J)V

    .line 362
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/YearPickerView;->setYear(I)V

    .line 364
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 366
    if-eqz p1, :cond_3

    .line 367
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->tryVibrate()V

    .line 369
    :cond_3
    return-void
.end method

.method private setCurrentView(I)V
    .locals 5
    .param p1, "viewIndex"    # I

    .line 282
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 298
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 299
    .local v2, "year":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/YearPickerView;->setYear(I)V

    .line 311
    iget v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v3, p1, :cond_0

    .line 312
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 313
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 314
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 315
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 316
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 317
    iput p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .end local v2    # "year":I
    goto :goto_0

    .line 284
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(J)V

    .line 286
    iget v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v2, p1, :cond_1

    .line 287
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 288
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 289
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 290
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 291
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 292
    iput p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 296
    nop

    .line 323
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private tryVibrate()V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DatePicker;->performHapticFeedback(I)Z

    .line 570
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 538
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 539
    const/4 v0, 0x1

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 543
    const-class v0, Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 2

    .line 461
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by calendar-mode DatePicker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    if-eqz v0, :cond_0

    .line 440
    iget v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    return v0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonth()I
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public getYear()I
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "callBack"    # Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    .line 328
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 329
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 330
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 334
    iput-object p4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    .line 335
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isYearPickerIsShow()Z
    .locals 2

    .line 191
    iget v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 486
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 487
    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 246
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 247
    .local v0, "headerYear":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 250
    return-void

    .line 254
    :cond_0
    const-string v1, "EMMMd"

    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "datePattern":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    .line 256
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "y"

    invoke-direct {v2, v3, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    .line 259
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 260
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 511
    instance-of v0, p1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    if-eqz v0, :cond_1

    .line 512
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 515
    .local v0, "ss":Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    move-result v2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    move-result v3

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 516
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getMinDate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 517
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getMaxDate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 519
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 521
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getCurrentView()I

    move-result v1

    .line 522
    .local v1, "currentView":I
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 524
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPosition()I

    move-result v2

    .line 525
    .local v2, "listPosition":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 526
    if-nez v1, :cond_0

    .line 527
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/DayPickerView;->setPosition(I)V

    goto :goto_0

    .line 528
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 529
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPositionOffset()I

    .line 534
    .end local v0    # "ss":Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    .end local v1    # "currentView":I
    .end local v2    # "listPosition":I
    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 19
    .param p1, "superState"    # Landroid/os/Parcelable;

    move-object/from16 v0, p0

    .line 491
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 492
    .local v1, "year":I
    iget-object v2, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 493
    .local v2, "month":I
    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 495
    .local v15, "day":I
    const/4 v3, -0x1

    .line 496
    .local v3, "listPosition":I
    const/16 v16, -0x1

    .line 498
    .local v16, "listPositionOffset":I
    iget v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-nez v4, :cond_0

    .line 499
    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/DayPickerView;->getMostVisiblePosition()I

    move-result v3

    .line 505
    .end local v3    # "listPosition":I
    .local v17, "listPosition":I
    :goto_0
    move/from16 v17, v3

    goto :goto_1

    .line 500
    .end local v17    # "listPosition":I
    .restart local v3    # "listPosition":I
    :cond_0
    iget v4, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    goto :goto_0

    .line 505
    .end local v3    # "listPosition":I
    .restart local v17    # "listPosition":I
    :goto_1
    new-instance v18, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 506
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    iget v12, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    move-object/from16 v3, v18

    move-object/from16 v4, p1

    move v5, v1

    move v6, v2

    move v7, v15

    move/from16 v13, v17

    move/from16 v14, v16

    invoke-direct/range {v3 .. v14}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    .line 505
    return-object v18
.end method

.method public setCalendarViewShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .line 467
    return-void
.end method

.method public setCurrentYear()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/YearPickerView;->setCurrentYear()V

    .line 197
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 447
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 448
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/DayPickerView;->setEnabled(Z)V

    .line 449
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/YearPickerView;->setEnabled(Z)V

    .line 450
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 451
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 452
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    .line 432
    iput p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 434
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 435
    return-void
.end method

.method public setMaxDate(J)V
    .locals 4
    .param p1, "maxDate"    # J

    .line 410
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 411
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    .line 412
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 414
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 421
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/DayPickerView;->setMaxDate(J)V

    .line 422
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 423
    return-void
.end method

.method public setMinDate(J)V
    .locals 4
    .param p1, "minDate"    # J

    .line 388
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 389
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    .line 390
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 392
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 399
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/DayPickerView;->setMinDate(J)V

    .line 400
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 401
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .line 477
    return-void
.end method

.method public updateDate(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 339
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 340
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 341
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 344
    return-void
.end method
