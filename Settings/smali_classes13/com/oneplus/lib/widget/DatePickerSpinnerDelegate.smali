.class Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;
.super Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerSpinnerDelegate.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final mCalendarView:Landroid/widget/CalendarView;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private final mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private final mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p2}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    sget-object v4, Lcom/oneplus/commonctrl/R$styleable;->DatePicker:[I

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    sget v8, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_android_spinnersShown:I

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    sget v9, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_android_calendarViewShown:I

    invoke-virtual {v4, v9, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    sget v10, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_android_startYear:I

    const/16 v11, 0x76c

    invoke-virtual {v4, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    sget v11, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_android_endYear:I

    const/16 v12, 0x834

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    sget v12, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_android_minDate:I

    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_android_maxDate:I

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget v14, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_legacyLayout:I

    sget v15, Lcom/oneplus/commonctrl/R$layout;->op_date_picker_legacy:I

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const-string v15, "layout_inflater"

    invoke-virtual {v1, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v15, v14, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    new-instance v2, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;-><init>(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    sget v3, Lcom/oneplus/commonctrl/R$id;->pickers:I

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    sget v3, Lcom/oneplus/commonctrl/R$id;->calendar_view:I

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CalendarView;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    new-instance v3, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$2;

    invoke-direct {v3, v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$2;-><init>(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V

    invoke-virtual {v1, v3}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    sget v3, Lcom/oneplus/commonctrl/R$id;->day:I

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {}, Lcom/oneplus/lib/widget/NumberPicker;->getTwoDigitFormatter()Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setFormatter(Lcom/oneplus/lib/widget/NumberPicker$Formatter;)V

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    move-object/from16 v17, v4

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/lib/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    sget v3, Lcom/oneplus/commonctrl/R$id;->numberpicker_input:I

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    sget v3, Lcom/oneplus/commonctrl/R$id;->month:I

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget v3, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/lib/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    sget v3, Lcom/oneplus/commonctrl/R$id;->numberpicker_input:I

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    sget v3, Lcom/oneplus/commonctrl/R$id;->year:I

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/lib/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    sget v3, Lcom/oneplus/commonctrl/R$id;->numberpicker_input:I

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v8}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    invoke-virtual {v0, v9}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setCalendarViewShown(Z)V

    :goto_0
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-direct {v0, v12, v1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v10, v4, v3}, Ljava/util/Calendar;->set(III)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, v10, v4, v3}, Ljava/util/Calendar;->set(III)V

    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setMinDate(J)V

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x1f

    const/16 v4, 0xb

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-direct {v0, v13, v1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, v11, v4, v3}, Ljava/util/Calendar;->set(III)V

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, v11, v4, v3}, Ljava/util/Calendar;->set(III)V

    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setMaxDate(J)V

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v18, v2

    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->init(IIILcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->reorderSpinners()V

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/DatePicker;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/DatePicker;->setImportantForAccessibility(I)V

    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setDate(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->notifyDateChanged()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v2
.end method

.method private isNewDate(III)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method private notifyDateChanged()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DatePicker;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/oneplus/lib/widget/DatePicker;III)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/oneplus/lib/widget/DatePicker;III)V

    :cond_1
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method private reorderSpinners()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyyMMMdd"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-char v4, v1, v3

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_2

    const/16 v5, 0x64

    if-eq v4, v5, :cond_1

    const/16 v5, 0x79

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0, v4, v2, v3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setImeOptions(Lcom/oneplus/lib/widget/NumberPicker;II)V

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0, v4, v2, v3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setImeOptions(Lcom/oneplus/lib/widget/NumberPicker;II)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0, v4, v2, v3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setImeOptions(Lcom/oneplus/lib/widget/NumberPicker;II)V

    nop

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setDate(III)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setImeOptions(Lcom/oneplus/lib/widget/NumberPicker;II)V
    .locals 2

    add-int/lit8 v0, p2, -0x1

    if-ge p3, v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    sget v1, Lcom/oneplus/commonctrl/R$id;->numberpicker_input:I

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method private updateCalendarView()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/CalendarView;->setDate(JZZ)V

    return-void
.end method

.method private updateInputState()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSpinners()V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getMinValue()I

    move-result v1

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/NumberPicker;->getMaxValue()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v0, v1, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v6, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    :cond_2
    return-void
.end method

.method private usingNumericMonths()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDateFormatOrder(Ljava/lang/String;)[C
    .locals 11

    const/4 v0, 0x3

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_c

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x4c

    const/16 v8, 0x79

    const/16 v9, 0x4d

    const/16 v10, 0x64

    if-eq v6, v10, :cond_7

    if-eq v6, v7, :cond_7

    if-eq v6, v9, :cond_7

    if-ne v6, v8, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v7, 0x47

    if-ne v6, v7, :cond_1

    goto/16 :goto_4

    :cond_1
    const/16 v7, 0x61

    if-lt v6, v7, :cond_2

    const/16 v7, 0x7a

    if-le v6, v7, :cond_3

    :cond_2
    const/16 v7, 0x41

    if-lt v6, v7, :cond_4

    const/16 v7, 0x5a

    if-le v6, v7, :cond_3

    goto :goto_1

    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad pattern character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, "\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    :goto_1
    const/16 v7, 0x27

    if-ne v6, v7, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_5

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad quoting in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_7
    :goto_2
    if-ne v6, v10, :cond_8

    if-nez v2, :cond_8

    add-int/lit8 v7, v1, 0x1

    aput-char v10, v0, v1

    const/4 v1, 0x1

    move v2, v1

    :goto_3
    move v1, v7

    goto :goto_4

    :cond_8
    if-eq v6, v7, :cond_9

    if-ne v6, v9, :cond_a

    :cond_9
    if-nez v3, :cond_a

    add-int/lit8 v7, v1, 0x1

    aput-char v9, v0, v1

    const/4 v1, 0x1

    move v3, v1

    goto :goto_3

    :cond_a
    if-ne v6, v8, :cond_b

    if-nez v4, :cond_b

    add-int/lit8 v7, v1, 0x1

    aput-char v8, v0, v1

    const/4 v1, 0x1

    move v4, v1

    goto :goto_3

    :cond_b
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_c
    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method public getMonth()I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setDate(III)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    iput-object p4, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public isYearPickerIsShow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    instance-of v0, p1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    move-result v1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    move-result v2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setDate(III)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 10

    new-instance v9, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getMinDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getMaxDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJ)V

    return-object v9
.end method

.method public setCalendarViewShown(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CalendarView;->setVisibility(I)V

    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v3, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    const-string v4, "%d"

    new-array v5, v1, [Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCurrentYear()V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->setDate(III)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->notifyDateChanged()V

    return-void
.end method
