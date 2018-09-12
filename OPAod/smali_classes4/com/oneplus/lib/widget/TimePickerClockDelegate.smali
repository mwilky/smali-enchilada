.class Lcom/oneplus/lib/widget/TimePickerClockDelegate;
.super Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;,
        Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;,
        Lcom/oneplus/lib/widget/TimePickerClockDelegate$ChangeSource;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DELAY_COMMIT_MILLIS:J = 0x7d0L

.field private static final FROM_EXTERNAL_API:I = 0x0

.field private static final FROM_INPUT_PICKER:I = 0x2

.field private static final FROM_RADIAL_PICKER:I = 0x1

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final HOUR_INDEX:I = 0x0

.field private static final MINUTE_INDEX:I = 0x1

.field private static final PM:I = 0x1


# instance fields
.field private mAllowAutoAdvance:Z

.field private final mAmLabel:Landroid/widget/RadioButton;

.field private final mAmPmLayout:Landroid/view/View;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mCommitHour:Ljava/lang/Runnable;

.field private final mCommitMinute:Ljava/lang/Runnable;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private final mDigitEnteredListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

.field private mDuration:I

.field private final mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mHeaderOffset:I

.field private mHeaderPositionY:I

.field private mHourFormatShowLeadingZero:Z

.field private mHourFormatStartsAtZero:Z

.field private final mHourView:Lcom/oneplus/lib/widget/NumericTextView;

.field private final mImageSeparatorView:Landroid/view/View;

.field private mInputBlockPositionY:I

.field private mIs24Hour:Z

.field private mIsAmPmAtStart:Z

.field private mIsEnabled:Z

.field private mIsToggleTimeMode:Z

.field private mLastAnnouncedIsHour:Z

.field private mLastAnnouncedText:Ljava/lang/CharSequence;

.field private final mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

.field private final mOnValueSelectedListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

.field private final mOnValueTypedListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

.field private final mPmLabel:Landroid/widget/RadioButton;

.field private mRadialPickerModeEnabled:Z

.field private final mRadialTimePickerHeader:Landroid/widget/LinearLayout;

.field private final mRadialTimePickerModeButton:Landroid/widget/ImageButton;

.field private final mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

.field private mRadialTimeViewAlpha:F

.field private mRadialTimeViewScale:F

.field private final mSelectHours:Ljava/lang/String;

.field private final mSelectMinutes:Ljava/lang/String;

.field private final mSeparatorView:Landroid/widget/TextView;

.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTextInputPickerHeader:Landroid/view/View;

.field private final mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 63
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010098

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    .line 64
    new-array v0, v0, [I

    const v1, 0x1010033

    aput v1, v0, v2

    sput-object v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18
    .param p1, "delegator"    # Lcom/oneplus/lib/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 118
    move/from16 v4, p5

    invoke-direct/range {p0 .. p2}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;)V

    .line 80
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    .line 93
    iput-boolean v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsEnabled:Z

    .line 925
    new-instance v6, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v6, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 957
    new-instance v6, Lcom/oneplus/lib/widget/TimePickerClockDelegate$5;

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$5;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v6, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnValueTypedListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 975
    new-instance v6, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v6, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    .line 1011
    new-instance v6, Lcom/oneplus/lib/widget/TimePickerClockDelegate$7;

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$7;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v6, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    .line 1018
    new-instance v6, Lcom/oneplus/lib/widget/TimePickerClockDelegate$8;

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$8;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v6, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    .line 1025
    new-instance v6, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v6, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 1047
    new-instance v6, Lcom/oneplus/lib/widget/TimePickerClockDelegate$10;

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$10;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v6, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    .line 121
    iget-object v6, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/oneplus/commonctrl/R$styleable;->TimePicker:[I

    invoke-virtual {v6, v2, v7, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 123
    .local v6, "a":Landroid/content/res/TypedArray;
    iget-object v7, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 125
    .local v7, "inflater":Landroid/view/LayoutInflater;
    iget-object v8, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 127
    .local v8, "res":Landroid/content/res/Resources;
    sget v9, Lcom/oneplus/commonctrl/R$string;->select_hours:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    .line 128
    sget v9, Lcom/oneplus/commonctrl/R$string;->select_minutes:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    .line 130
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_internalLayout:I

    sget v10, Lcom/oneplus/commonctrl/R$layout;->op_time_picker_material:I

    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 132
    .local v9, "layoutResourceId":I
    move-object/from16 v10, p1

    invoke-virtual {v7, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 133
    .local v11, "mainView":Landroid/view/View;
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 134
    sget v13, Lcom/oneplus/commonctrl/R$id;->time_header:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    iput-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    .line 135
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    new-instance v14, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;)V

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    sget v13, Lcom/oneplus/commonctrl/R$id;->hours:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/oneplus/lib/widget/NumericTextView;

    iput-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    .line 138
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 140
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;)V

    .line 141
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    new-instance v14, Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;

    sget v15, Lcom/oneplus/commonctrl/R$string;->select_hours:I

    invoke-direct {v14, v1, v15}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 143
    sget v13, Lcom/oneplus/commonctrl/R$id;->separator:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    .line 144
    sget v13, Lcom/oneplus/commonctrl/R$id;->separator_shape:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iput-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mImageSeparatorView:Landroid/view/View;

    .line 145
    sget v13, Lcom/oneplus/commonctrl/R$id;->minutes:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/oneplus/lib/widget/NumericTextView;

    iput-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    .line 146
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 148
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;)V

    .line 149
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    new-instance v14, Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;

    sget v15, Lcom/oneplus/commonctrl/R$string;->select_minutes:I

    invoke-direct {v14, v1, v15}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 151
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    const/16 v14, 0x3b

    invoke-virtual {v13, v12, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setRange(II)V

    .line 152
    sget v13, Lcom/oneplus/commonctrl/R$id;->separator:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/view/View;->setActivated(Z)V

    .line 153
    sget v13, Lcom/oneplus/commonctrl/R$id;->separator:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 155
    sget v13, Lcom/oneplus/commonctrl/R$id;->ampm_layout:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iput-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    .line 156
    iget-object v13, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    new-instance v14, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    invoke-static/range {p2 .. p2}, Lcom/oneplus/lib/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v13

    .line 159
    .local v13, "amPmStrings":[Ljava/lang/String;
    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    sget v15, Lcom/oneplus/commonctrl/R$id;->am_label:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RadioButton;

    iput-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    .line 160
    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    aget-object v15, v13, v12

    invoke-static {v15}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    iget-object v15, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-static {v14}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 164
    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    sget v15, Lcom/oneplus/commonctrl/R$id;->pm_label:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RadioButton;

    iput-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    .line 165
    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    aget-object v15, v13, v5

    invoke-static {v15}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    iget-object v15, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v14, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-static {v14}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 172
    const/4 v14, 0x0

    .line 175
    .local v14, "headerTextColor":Landroid/content/res/ColorStateList;
    sget v15, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_android_headerTimeTextAppearance:I

    invoke-virtual {v6, v15, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 177
    .local v15, "timeHeaderTextAppearance":I
    if-eqz v15, :cond_0

    .line 178
    iget-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v16, v7

    sget-object v7, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .local v16, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v17, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7, v12, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 180
    .end local v8    # "res":Landroid/content/res/Resources;
    .local v5, "textAppearance":Landroid/content/res/TypedArray;
    .local v17, "res":Landroid/content/res/Resources;
    invoke-virtual {v5, v12}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 182
    .local v7, "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .end local v5    # "textAppearance":Landroid/content/res/TypedArray;
    .end local v7    # "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 185
    .end local v16    # "inflater":Landroid/view/LayoutInflater;
    .end local v17    # "res":Landroid/content/res/Resources;
    .local v7, "inflater":Landroid/view/LayoutInflater;
    .restart local v8    # "res":Landroid/content/res/Resources;
    :cond_0
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "res":Landroid/content/res/Resources;
    .restart local v16    # "inflater":Landroid/view/LayoutInflater;
    .restart local v17    # "res":Landroid/content/res/Resources;
    :goto_0
    if-nez v14, :cond_1

    .line 186
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_headerTextColor:I

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 189
    :cond_1
    sget v5, Lcom/oneplus/commonctrl/R$id;->input_header:I

    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    .line 191
    if-eqz v14, :cond_2

    .line 192
    iget-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v5, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 193
    iget-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 194
    iget-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v5, v14}, Lcom/oneplus/lib/widget/NumericTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 195
    iget-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v5, v14}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 196
    iget-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v5, v14}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 207
    :cond_2
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/oneplus/commonctrl/R$integer;->oneplus_contorl_time_part6:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    .line 210
    const/4 v5, 0x0

    iput v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewScale:F

    .line 211
    iput v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewAlpha:F

    .line 213
    sget v5, Lcom/oneplus/commonctrl/R$id;->radial_picker:I

    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/RadialTimePickerView;

    iput-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 214
    iget-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v5, v2, v3, v4}, Lcom/oneplus/lib/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 215
    iget-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    iget-object v7, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-virtual {v5, v7}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setOnValueSelectedListener(Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;)V

    .line 217
    sget v5, Lcom/oneplus/commonctrl/R$id;->input_mode:I

    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/TextInputTimePickerView;

    iput-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    .line 218
    iget-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    iget-object v7, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnValueTypedListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-virtual {v5, v7}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setListener(Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;)V

    .line 220
    sget v5, Lcom/oneplus/commonctrl/R$id;->toggle_mode:I

    .line 221
    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    .line 222
    iget-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHourFormat()V

    .line 238
    iget-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 239
    iget-object v5, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 240
    .local v5, "currentHour":I
    iget-object v7, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 241
    .local v7, "currentMinute":I
    iget-boolean v8, v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-direct {v0, v5, v7, v8, v12}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->initialize(IIZI)V

    .line 242
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 45
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->toggleRadialPickerMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/widget/TimePickerClockDelegate;IZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/widget/TimePickerClockDelegate;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I

    .line 45
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 45
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/lib/widget/TimePickerClockDelegate;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setMinuteInternal(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/lib/widget/TimePickerClockDelegate;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I

    .line 45
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setAmOrPm(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/NumericTextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 45
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 45
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/NumericTextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 45
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 45
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 45
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->tryVibrate()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/TextInputTimePickerView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 45
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oneplus/lib/widget/TimePickerClockDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;
    .param p1, "x1"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsToggleTimeMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/RadialTimePickerView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 45
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 45
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 45
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 45
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 45
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    return v0
.end method

.method static synthetic access$900(Lcom/oneplus/lib/widget/TimePickerClockDelegate;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setHourInternal(IIZ)V

    return-void
.end method

.method private animationInInputTimeField()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 281
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewScale:F

    .line 282
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewScale:F

    .line 283
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewAlpha:F

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    .line 285
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 286
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 287
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 288
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 289
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mInputBlockPositionY:I

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderPositionY:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    .line 290
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    .line 291
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$2;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$2;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 319
    return-void
.end method

.method private animationOutInputTimeField()V
    .locals 6

    .line 322
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    move-result-object v0

    .line 323
    .local v0, "inputBlock":Landroid/view/View;
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setAlpha(F)V

    .line 326
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 328
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->showLabels(Z)V

    .line 329
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 330
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 331
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 332
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 333
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v4, v2

    .line 334
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 335
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 336
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 337
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v2, v2

    .line 338
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    .line 339
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 365
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 367
    return-void
.end method

.method private static ensureMinimumTextWidth(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "v"    # Landroid/widget/TextView;

    .line 382
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 386
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 387
    .local v0, "minWidth":I
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 388
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 389
    return-void
.end method

.method private getCurrentItemShowing()I
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    return v0
.end method

.method private getLocalizedHour(I)I
    .locals 1
    .param p1, "hourOfDay"    # I

    .line 794
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-nez v0, :cond_0

    .line 796
    rem-int/lit8 p1, p1, 0xc

    .line 799
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 801
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    :goto_0
    move p1, v0

    .line 804
    :cond_2
    return p1
.end method

.method private initialize(IIZI)V
    .locals 0
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourView"    # Z
    .param p4, "index"    # I

    .line 496
    iput p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 497
    iput p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 498
    iput-boolean p3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 499
    invoke-direct {p0, p4}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateUI(I)V

    .line 500
    return-void
.end method

.method private static lastIndexOfAny(Ljava/lang/String;[C)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "any"    # [C

    .line 854
    array-length v0, p1

    .line 855
    .local v0, "lengthAny":I
    if-lez v0, :cond_2

    .line 856
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 857
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 858
    .local v2, "c":C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 859
    aget-char v4, p1, v3

    if-ne v2, v4, :cond_0

    .line 860
    return v1

    .line 858
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 856
    .end local v2    # "c":C
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 865
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private multiplyAlphaComponent(IF)I
    .locals 4
    .param p1, "color"    # I
    .param p2, "alphaMod"    # F

    .line 473
    const v0, 0xffffff

    and-int/2addr v0, p1

    .line 474
    .local v0, "srcRgb":I
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 475
    .local v1, "srcAlpha":I
    int-to-float v2, v1

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 476
    .local v2, "dstAlpha":I
    shl-int/lit8 v3, v2, 0x18

    or-int/2addr v3, v0

    return v3
.end method

.method static final obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .line 427
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    .line 427
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private onTimeChanged()V
    .locals 4

    .line 758
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 759
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    .line 765
    :cond_1
    return-void
.end method

.method private resetInputTimeTextAppearance(ILandroid/widget/TextView;)V
    .locals 1
    .param p1, "textAppearance"    # I
    .param p2, "targetTextView"    # Landroid/widget/TextView;

    .line 905
    invoke-static {}, Lcom/oneplus/lib/util/SystemUtils;->isAtLeastM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 910
    :goto_0
    return-void
.end method

.method private setAmOrPm(I)V
    .locals 4
    .param p1, "amOrPm"    # I

    .line 913
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    .line 915
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setAmOrPm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 917
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 918
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    .line 922
    :cond_0
    return-void
.end method

.method private setAmPmAtStart(Z)V
    .locals 3
    .param p1, "isAmPmAtStart"    # Z

    .line 541
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    if-eq v0, p1, :cond_1

    .line 542
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    .line 544
    if-eqz p1, :cond_0

    .line 545
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 546
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 550
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 555
    :cond_1
    :goto_0
    return-void
.end method

.method private setCurrentItemShowing(IZZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "animateCircle"    # Z
    .param p3, "announce"    # Z

    .line 881
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentItemShowing(IZ)V

    .line 883
    if-nez p1, :cond_0

    .line 884
    if-eqz p3, :cond_1

    .line 885
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 888
    :cond_0
    if-eqz p3, :cond_1

    .line 889
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 893
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/NumericTextView;->setActivated(Z)V

    .line 894
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    if-ne p1, v2, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumericTextView;->setActivated(Z)V

    .line 895
    if-nez p1, :cond_4

    .line 896
    sget v0, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Material_TimePicker_TimeLabel:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    .line 897
    sget v0, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Material_TimePicker_TimeLabelUnActivated:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    goto :goto_2

    .line 899
    :cond_4
    sget v0, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Material_TimePicker_TimeLabel:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    .line 900
    sget v0, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Material_TimePicker_TimeLabelUnActivated:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    .line 902
    :goto_2
    return-void
.end method

.method private setHourInternal(IIZ)V
    .locals 3
    .param p1, "hour"    # I
    .param p2, "source"    # I
    .param p3, "announce"    # Z

    .line 566
    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    if-ne v0, p1, :cond_0

    .line 567
    return-void

    .line 570
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 571
    invoke-direct {p0, p1, p3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    .line 572
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    .line 574
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    .line 575
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 576
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    const/16 v2, 0xc

    if-ge p1, v2, :cond_1

    const/4 v0, 0x0

    nop

    :cond_1
    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setAmOrPm(I)Z

    .line 578
    :cond_2
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    .line 579
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 582
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePicker;->invalidate()V

    .line 583
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->onTimeChanged()V

    .line 584
    return-void
.end method

.method private setInputAmPmAtStart(Z)V
    .locals 1
    .param p1, "isAmPmAtStart"    # Z

    .line 537
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setAmPmAtStart(Z)V

    .line 538
    return-void
.end method

.method private setMinuteInternal(II)V
    .locals 1
    .param p1, "minute"    # I
    .param p2, "source"    # I

    .line 612
    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    if-ne v0, p1, :cond_0

    .line 613
    return-void

    .line 616
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 617
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    .line 619
    if-eq p2, v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 622
    :cond_1
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    .line 623
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 626
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePicker;->invalidate()V

    .line 627
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->onTimeChanged()V

    .line 628
    return-void
.end method

.method private toggleRadialPickerMode()V
    .locals 7

    .line 245
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsToggleTimeMode:Z

    if-eqz v0, :cond_0

    .line 246
    return-void

    .line 248
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderPositionY:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 249
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 250
    .local v0, "headerLocation":[I
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 251
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    sget v3, Lcom/oneplus/commonctrl/R$id;->hours:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 252
    .local v2, "headerLocationY":I
    aget v3, v0, v1

    iput v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderPositionY:I

    .line 253
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    move-result-object v3

    .line 254
    .local v3, "inputBlock":Landroid/view/View;
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$id;->input_hour:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 255
    .local v4, "inputLocationY":I
    sub-int v5, v4, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iput v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderOffset:I

    .line 256
    iget v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderOffset:I

    if-nez v5, :cond_1

    .line 257
    iget-object v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderOffset:I

    .line 259
    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 260
    aget v5, v0, v1

    iput v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mInputBlockPositionY:I

    .line 262
    .end local v0    # "headerLocation":[I
    .end local v2    # "headerLocationY":I
    .end local v3    # "inputBlock":Landroid/view/View;
    .end local v4    # "inputLocationY":I
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    if-eqz v0, :cond_3

    .line 264
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->animationInInputTimeField()V

    .line 265
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->op_btn_clock_material:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    goto :goto_0

    .line 268
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->animationOutInputTimeField()V

    .line 269
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    sget v2, Lcom/oneplus/commonctrl/R$drawable;->op_btn_keyboard_key_material:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 270
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    .line 272
    :goto_0
    return-void
.end method

.method private tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isHour"    # Z

    .line 869
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 872
    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    .line 873
    iput-boolean p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    .line 875
    :cond_1
    return-void
.end method

.method private tryVibrate()V
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->performHapticFeedback(I)Z

    .line 769
    return-void
.end method

.method private updateAmPmLabelStates(I)V
    .locals 4
    .param p1, "amOrPm"    # I

    .line 772
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 773
    .local v2, "isAm":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 774
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 775
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 777
    if-ne p1, v1, :cond_1

    move v0, v1

    nop

    .line 778
    .local v0, "isPm":Z
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 779
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 780
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 781
    return-void
.end method

.method private updateHeaderAmPm()V
    .locals 4

    .line 524
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    const-string v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "dateTimePattern":Ljava/lang/String;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 530
    .local v1, "isAmPmAtStart":Z
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setAmPmAtStart(Z)V

    .line 531
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setInputAmPmAtStart(Z)V

    .line 532
    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    .line 534
    .end local v0    # "dateTimePattern":Ljava/lang/String;
    .end local v1    # "isAmPmAtStart":Z
    :goto_1
    return-void
.end method

.method private updateHeaderHour(IZ)V
    .locals 3
    .param p1, "hourOfDay"    # I
    .param p2, "announce"    # Z

    .line 808
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v0

    .line 809
    .local v0, "localizedHour":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/NumericTextView;->setValue(I)V

    .line 811
    if-eqz p2, :cond_0

    .line 812
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    .line 814
    :cond_0
    return-void
.end method

.method private updateHeaderMinute(IZ)V
    .locals 2
    .param p1, "minuteOfHour"    # I
    .param p2, "announce"    # Z

    .line 817
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumericTextView;->setValue(I)V

    .line 819
    if-eqz p2, :cond_0

    .line 820
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    .line 822
    :cond_0
    return-void
.end method

.method private updateHeaderSeparator()V
    .locals 5

    .line 833
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    .line 834
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    .line 833
    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    .line 838
    .local v1, "hourFormats":[C
    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->lastIndexOfAny(Ljava/lang/String;[C)I

    move-result v2

    .line 839
    .local v2, "hIndex":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 841
    const-string v3, ":"

    .local v3, "separatorText":Ljava/lang/String;
    goto :goto_1

    .line 847
    .end local v3    # "separatorText":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .line 850
    .restart local v3    # "separatorText":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->updateSeparator(Ljava/lang/String;)V

    .line 851
    return-void

    nop

    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
    .end array-data
.end method

.method private updateHourFormat()V
    .locals 10

    .line 398
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    .line 399
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    .line 398
    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 401
    .local v1, "lengthPattern":I
    const/4 v2, 0x0

    .line 402
    .local v2, "showLeadingZero":Z
    const/4 v3, 0x0

    .line 404
    .local v3, "hourFormat":C
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_1
    const/16 v6, 0x4b

    const/16 v7, 0x48

    if-ge v5, v1, :cond_3

    .line 405
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 406
    .local v8, "c":C
    if-eq v8, v7, :cond_2

    const/16 v9, 0x68

    if-eq v8, v9, :cond_2

    if-eq v8, v6, :cond_2

    const/16 v9, 0x6b

    if-ne v8, v9, :cond_1

    goto :goto_2

    .line 404
    .end local v8    # "c":C
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 407
    .restart local v8    # "c":C
    :cond_2
    :goto_2
    move v3, v8

    .line 408
    add-int/lit8 v9, v5, 0x1

    if-ge v9, v1, :cond_3

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_3

    .line 409
    const/4 v2, 0x1

    .line 415
    .end local v5    # "i":I
    .end local v8    # "c":C
    :cond_3
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    .line 416
    const/4 v5, 0x1

    if-eq v3, v6, :cond_5

    if-ne v3, v7, :cond_4

    goto :goto_3

    :cond_4
    goto :goto_4

    :cond_5
    :goto_3
    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    .line 419
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    xor-int/2addr v4, v5

    .line 420
    .local v4, "minHour":I
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v5, :cond_6

    const/16 v5, 0x17

    goto :goto_5

    :cond_6
    const/16 v5, 0xb

    :goto_5
    add-int/2addr v5, v4

    .line 421
    .local v5, "maxHour":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v6, v4, v5}, Lcom/oneplus/lib/widget/NumericTextView;->setRange(II)V

    .line 422
    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-boolean v7, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/widget/NumericTextView;->setShowLeadingZeroes(Z)V

    .line 424
    return-void
.end method

.method private updateRadialPicker(I)V
    .locals 4
    .param p1, "index"    # I

    .line 519
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->initialize(IIZ)V

    .line 520
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    .line 521
    return-void
.end method

.method private updateTextInputPicker()V
    .locals 6

    .line 514
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 515
    iget v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    .line 514
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->updateTextInputValues(IIIZZ)V

    .line 516
    return-void
.end method

.method private updateUI(I)V
    .locals 2
    .param p1, "index"    # I

    .line 503
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    .line 504
    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    .line 505
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderSeparator()V

    .line 506
    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    .line 507
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateRadialPicker(I)V

    .line 508
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 510
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePicker;->invalidate()V

    .line 511
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 704
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 705
    const/4 v0, 0x1

    return v0
.end method

.method public getAmView()Landroid/view/View;
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .line 684
    const/4 v0, -0x1

    return v0
.end method

.method public getHour()I
    .locals 3

    .line 591
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    .line 592
    .local v0, "currentHour":I
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    .line 593
    return v0

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getAmOrPm()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 597
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    return v1

    .line 599
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    return v1
.end method

.method public getHourView()Landroid/view/View;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    return v0
.end method

.method public getMinuteView()Landroid/view/View;
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    return-object v0
.end method

.method public getPmView()Landroid/view/View;
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public is24Hour()Z
    .locals 1

    .line 663
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 678
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 710
    const/4 v0, 0x1

    .line 711
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    .line 712
    or-int/lit16 v0, v0, 0x80

    goto :goto_0

    .line 714
    :cond_0
    or-int/lit8 v0, v0, 0x40

    .line 717
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 718
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 720
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 721
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 720
    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, "selectedTime":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v2

    if-nez v2, :cond_1

    .line 723
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    .line 724
    .local v2, "selectionMode":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 695
    instance-of v0, p1, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    .line 696
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    .line 697
    .local v0, "ss":Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    move-result v2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->is24HourMode()Z

    move-result v3

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getCurrentItemShowing()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->initialize(IIZI)V

    .line 698
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->invalidate()V

    .line 700
    .end local v0    # "ss":Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 7
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 689
    new-instance v6, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    .line 690
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->is24Hour()Z

    move-result v4

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getCurrentItemShowing()I

    move-result v5

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    .line 689
    return-object v6
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 668
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumericTextView;->setEnabled(Z)V

    .line 669
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumericTextView;->setEnabled(Z)V

    .line 670
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 671
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 672
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setEnabled(Z)V

    .line 673
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsEnabled:Z

    .line 674
    return-void
.end method

.method public setHour(I)V
    .locals 2
    .param p1, "hour"    # I

    .line 562
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setHourInternal(IIZ)V

    .line 563
    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 1
    .param p1, "is24Hour"    # Z

    .line 646
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setIs24Hour(Z)V

    .line 647
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eq v0, p1, :cond_0

    .line 648
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 649
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 651
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHourFormat()V

    .line 652
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateUI(I)V

    .line 654
    :cond_0
    return-void
.end method

.method public setMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .line 608
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setMinuteInternal(II)V

    .line 609
    return-void
.end method

.method public validateInput()Z
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->validateInput()Z

    move-result v0

    return v0
.end method
