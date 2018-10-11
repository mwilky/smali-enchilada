.class Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;
.super Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerSpinnerDelegate.java"


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDivider:Landroid/widget/TextView;

.field private mHourFormat:C

.field private final mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private final mTempCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p2}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/oneplus/commonctrl/R$styleable;->TimePicker:[I

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual {v4, v6, v5, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_legacyLayout:I

    sget v9, Lcom/oneplus/commonctrl/R$layout;->op_time_picker_legacy_material:I

    invoke-virtual {v4, v5, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v9, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    iget-object v10, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v9, v5, v10, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    sget v12, Lcom/oneplus/commonctrl/R$id;->hour:I

    invoke-virtual {v1, v12}, Lcom/oneplus/lib/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    new-instance v13, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$1;

    invoke-direct {v13, v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$1;-><init>(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v12, v13}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    sget v13, Lcom/oneplus/commonctrl/R$id;->numberpicker_input:I

    invoke-virtual {v12, v13}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    sget v14, Lcom/oneplus/commonctrl/R$id;->divider:I

    invoke-virtual {v12, v14}, Lcom/oneplus/lib/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v12, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setDividerText()V

    :cond_0
    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    sget v14, Lcom/oneplus/commonctrl/R$id;->minute:I

    invoke-virtual {v12, v14}, Lcom/oneplus/lib/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v12, v11}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v14, 0x3b

    invoke-virtual {v12, v14}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v12, v14, v15}, Lcom/oneplus/lib/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {}, Lcom/oneplus/lib/widget/NumberPicker;->getTwoDigitFormatter()Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/oneplus/lib/widget/NumberPicker;->setFormatter(Lcom/oneplus/lib/widget/NumberPicker$Formatter;)V

    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    new-instance v14, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;

    invoke-direct {v14, v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;-><init>(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v12, v14}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    sget v14, Lcom/oneplus/commonctrl/R$id;->numberpicker_input:I

    invoke-virtual {v12, v14}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-static/range {p2 .. p2}, Lcom/oneplus/lib/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    iget-object v12, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    sget v13, Lcom/oneplus/commonctrl/R$id;->amPm:I

    invoke-virtual {v12, v13}, Lcom/oneplus/lib/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    instance-of v13, v12, Landroid/widget/Button;

    const/4 v14, 0x0

    if-eqz v13, :cond_1

    iput-object v14, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v14, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    move-object v13, v12

    check-cast v13, Landroid/widget/Button;

    iput-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    new-instance v14, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$3;

    invoke-direct {v14, v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$3;-><init>(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iput-object v14, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    move-object v13, v12

    check-cast v13, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v13, v11}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v13, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    new-instance v14, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$4;

    invoke-direct {v14, v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$4;-><init>(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumberPicker;->setOnValueChangedListener(Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    sget v14, Lcom/oneplus/commonctrl/R$id;->numberpicker_input:I

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    iput-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v14, 0x6

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->isAmPmAtStart()Z

    move-result v13

    if-eqz v13, :cond_2

    sget v13, Lcom/oneplus/commonctrl/R$id;->timePickerLayout:I

    invoke-virtual {v1, v13}, Lcom/oneplus/lib/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v13, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    nop

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v14}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    if-eq v15, v2, :cond_2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateMinuteControl()V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    iget-object v2, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    iget-object v2, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v13, 0xb

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setHour(I)V

    iget-object v2, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v13, 0xc

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setMinute(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v11}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setEnabled(Z)V

    :cond_3
    iget-object v2, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/TimePicker;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lcom/oneplus/lib/widget/TimePicker;->setImportantForAccessibility(I)V

    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    return v0
.end method

.method static synthetic access$102(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    return-object v0
.end method

.method private getHourFormatData()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mLocale:Ljava/util/Locale;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    const/4 v3, 0x0

    nop

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x48

    if-eq v4, v5, :cond_2

    const/16 v5, 0x68

    if-eq v4, v5, :cond_2

    const/16 v5, 0x4b

    if-eq v4, v5, :cond_2

    const/16 v5, 0x6b

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iput-char v4, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    add-int/lit8 v5, v2, 0x1

    if-ge v5, v1, :cond_3

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_3

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    :cond_3
    return-void
.end method

.method private isAmPmAtStart()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mLocale:Ljava/util/Locale;

    const-string v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private onTimeChanged()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    :cond_1
    return-void
.end method

.method private setCurrentHour(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xc

    if-lt p1, v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    if-le p1, v0, :cond_2

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    if-nez p1, :cond_2

    const/16 p1, 0xc

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    :cond_4
    return-void
.end method

.method private setDividerText()V
    .locals 6

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v0, :cond_0

    const-string v0, "Hm"

    goto :goto_0

    :cond_0
    const-string v0, "hm"

    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/16 v4, 0x68

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    :cond_1
    if-ne v2, v3, :cond_2

    const-string v3, ":"

    :goto_1
    goto :goto_2

    :cond_2
    const/16 v4, 0x6d

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private updateHourControl()V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-char v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v3, 0x6b

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_1
    iget-char v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v3, 0x4b

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/oneplus/lib/widget/NumberPicker;->getTwoDigitFormatter()Lcom/oneplus/lib/widget/NumberPicker$Formatter;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setFormatter(Lcom/oneplus/lib/widget/NumberPicker$Formatter;)V

    return-void
.end method

.method private updateInputState()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateMinuteControl()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getAmView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v1, :cond_1

    rem-int/lit8 v1, v0, 0xc

    return v1

    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    return v1
.end method

.method public getHourView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v0

    return v0
.end method

.method public getMinuteView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method public getPmView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method public is24Hour()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x80

    goto :goto_0

    :cond_0
    or-int/lit8 v0, v0, 0x40

    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setHour(I)V

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setMinute(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 4

    new-instance v0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZ)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setHour(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHour()I

    move-result v0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateMinuteControl()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    return-void
.end method

.method public setMinute(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->getMinute()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method public validateInput()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
