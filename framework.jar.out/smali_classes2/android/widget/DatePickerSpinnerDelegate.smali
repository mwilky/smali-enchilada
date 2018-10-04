.class Landroid/widget/DatePickerSpinnerDelegate;
.super Landroid/widget/DatePicker$AbstractDatePickerDelegate;
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

.field private final mDaySpinner:Landroid/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private mMaxDate:Landroid/icu/util/Calendar;

.field private mMinDate:Landroid/icu/util/Calendar;

.field private final mMonthSpinner:Landroid/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Landroid/icu/util/Calendar;

.field private final mYearSpinner:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p2}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    move-object/from16 v3, p1

    iput-object v3, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    sget-object v4, Lcom/android/internal/R$styleable;->DatePicker:[I

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v8, 0x6

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    const/4 v9, 0x7

    invoke-virtual {v4, v9, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    const/16 v10, 0x76c

    invoke-virtual {v4, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/4 v11, 0x2

    const/16 v12, 0x834

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    const/4 v13, 0x4

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x5

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v14, 0x14

    const v11, 0x1090050

    invoke-virtual {v4, v14, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const-string v14, "layout_inflater"

    invoke-virtual {v1, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v14, v11, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    new-instance v2, Landroid/widget/DatePickerSpinnerDelegate$1;

    invoke-direct {v2, v0}, Landroid/widget/DatePickerSpinnerDelegate$1;-><init>(Landroid/widget/DatePickerSpinnerDelegate;)V

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const v3, 0x102037b

    invoke-virtual {v1, v3}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const v3, 0x10201ea

    invoke-virtual {v1, v3}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CalendarView;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    new-instance v3, Landroid/widget/DatePickerSpinnerDelegate$2;

    invoke-direct {v3, v0}, Landroid/widget/DatePickerSpinnerDelegate$2;-><init>(Landroid/widget/DatePickerSpinnerDelegate;)V

    invoke-virtual {v1, v3}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const v3, 0x102021f

    invoke-virtual {v1, v3}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v4

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    const v3, 0x102034b

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const v4, 0x102031a

    invoke-virtual {v1, v4}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget v4, v0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v4, v0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v3, 0x102034b

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const v3, 0x10204cb

    invoke-virtual {v1, v3}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    const v3, 0x102034b

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v8}, Landroid/widget/DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    invoke-virtual {v0, v9}, Landroid/widget/DatePickerSpinnerDelegate;->setCalendarViewShown(Z)V

    :goto_0
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clear()V

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-direct {v0, v13, v1}, Landroid/widget/DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v10, v4, v3}, Landroid/icu/util/Calendar;->set(III)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v10, v4, v3}, Landroid/icu/util/Calendar;->set(III)V

    :cond_2
    :goto_1
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/widget/DatePickerSpinnerDelegate;->setMinDate(J)V

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clear()V

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x1f

    const/16 v4, 0xb

    if-nez v1, :cond_3

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-direct {v0, v15, v1}, Landroid/widget/DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v12, v4, v3}, Landroid/icu/util/Calendar;->set(III)V

    goto :goto_2

    :cond_3
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v12, v4, v3}, Landroid/icu/util/Calendar;->set(III)V

    :cond_4
    :goto_2
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/widget/DatePickerSpinnerDelegate;->setMaxDate(J)V

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    move-object/from16 v19, v2

    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/DatePickerSpinnerDelegate;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePickerSpinnerDelegate;->reorderSpinners()V

    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePickerSpinnerDelegate;->setContentDescriptions()V

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/DatePicker;->setImportantForAccessibility(I)V

    :cond_5
    return-void
.end method

.method static synthetic access$000(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/DatePickerSpinnerDelegate;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->notifyDateChanged()V

    return-void
.end method

.method private getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .locals 3

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-object v2
.end method

.method private isNewDate(III)Z
    .locals 3

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

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

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    :cond_1
    return-void
.end method

.method private parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V
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

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "yyyyMMMdd"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

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

    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    nop

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setContentDescriptions()V
    .locals 4

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    const v1, 0x10202ae

    const v2, 0x10401a6

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    const v2, 0x1020224

    const v3, 0x10401a2

    invoke-direct {p0, v0, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v3, 0x10401a7

    invoke-direct {p0, v0, v1, v3}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v3, 0x10401a3

    invoke-direct {p0, v0, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    const v3, 0x10401a8

    invoke-direct {p0, v0, v1, v3}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10401a4

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    return-void
.end method

.method private setDate(III)V
    .locals 3

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/util/Calendar;->set(III)V

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->resetAutofilledValue()V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .locals 2

    add-int/lit8 v0, p2, -0x1

    if-ge p3, v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    const v1, 0x102034b

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateCalendarView()V
    .locals 4

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/CalendarView;->setDate(JZZ)V

    return-void
.end method

.method private updateInputState()V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSpinners()V
    .locals 7

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v6}, Landroid/icu/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :goto_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v0, v1, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    :cond_2
    return-void
.end method

.method private usingNumericMonths()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

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

.method public getDayOfMonth()I
    .locals 2

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()Landroid/icu/util/Calendar;
    .locals 3

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method public getMinDate()Landroid/icu/util/Calendar;
    .locals 3

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method public getMonth()I
    .locals 2

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    iput-object p4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    instance-of v0, p1, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 10

    new-instance v9, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMinDate()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMaxDate()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJ)V

    return-object v9
.end method

.method public setCalendarViewShown(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

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

    invoke-super {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

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

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    iput-boolean p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 3

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

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

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->notifyDateChanged()V

    return-void
.end method
