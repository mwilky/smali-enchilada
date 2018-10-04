.class public Landroid/widget/TextInputTimePickerView;
.super Landroid/widget/RelativeLayout;
.source "TextInputTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextInputTimePickerView$OnValueTypedListener;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field public static final AMPM:I = 0x2

.field public static final HOURS:I = 0x0

.field public static final MINUTES:I = 0x1

.field private static final PM:I = 0x1


# instance fields
.field private final mAmPmSpinner:Landroid/widget/Spinner;

.field private final mErrorLabel:Landroid/widget/TextView;

.field private mErrorShowing:Z

.field private final mHourEditText:Landroid/widget/EditText;

.field private mHourFormatStartsAtZero:Z

.field private final mHourLabel:Landroid/widget/TextView;

.field private final mInputSeparatorView:Landroid/widget/TextView;

.field private mIs24Hour:Z

.field private mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

.field private final mMinuteEditText:Landroid/widget/EditText;

.field private final mMinuteLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x1090113

    invoke-static {p1, v0, p0}, Landroid/widget/TextInputTimePickerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x10202b7

    invoke-virtual {p0, v0}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    const v0, 0x10202b8

    invoke-virtual {p0, v0}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    const v0, 0x10202ba

    invoke-virtual {p0, v0}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TextInputTimePickerView;->mInputSeparatorView:Landroid/widget/TextView;

    const v0, 0x10202d4

    invoke-virtual {p0, v0}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TextInputTimePickerView;->mErrorLabel:Landroid/widget/TextView;

    const v0, 0x10202d5

    invoke-virtual {p0, v0}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    const v0, 0x10202d6

    invoke-virtual {p0, v0}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    new-instance v1, Landroid/widget/TextInputTimePickerView$1;

    invoke-direct {v1, p0}, Landroid/widget/TextInputTimePickerView$1;-><init>(Landroid/widget/TextInputTimePickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    new-instance v1, Landroid/widget/TextInputTimePickerView$2;

    invoke-direct {v1, p0}, Landroid/widget/TextInputTimePickerView$2;-><init>(Landroid/widget/TextInputTimePickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x10201aa

    invoke-virtual {p0, v0}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    invoke-static {p1}, Landroid/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-direct {v1, p1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v2, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    new-instance v3, Landroid/widget/TextInputTimePickerView$3;

    invoke-direct {v3, p0}, Landroid/widget/TextInputTimePickerView$3;-><init>(Landroid/widget/TextInputTimePickerView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/TextInputTimePickerView;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextInputTimePickerView;->parseAndSetHourInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/widget/TextInputTimePickerView;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextInputTimePickerView;->parseAndSetMinuteInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/widget/TextInputTimePickerView;)Landroid/widget/TextInputTimePickerView$OnValueTypedListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    return-object v0
.end method

.method private getHourOfDayFromLocalizedHour(I)I
    .locals 3

    move v0, p1

    iget-boolean v1, p0, Landroid/widget/TextInputTimePickerView;->mIs24Hour:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    if-nez v1, :cond_2

    const/16 v1, 0x18

    if-ne p1, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    if-nez v1, :cond_1

    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0xc

    :cond_2
    :goto_0
    return v0
.end method

.method private isValidLocalizedHour(I)Z
    .locals 3

    iget-boolean v0, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/widget/TextInputTimePickerView;->mIs24Hour:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_0

    :cond_0
    const/16 v2, 0xb

    :goto_0
    add-int/2addr v2, v0

    if-lt p1, v0, :cond_1

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private parseAndSetHourInternal(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/TextInputTimePickerView;->isValidLocalizedHour(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    xor-int/2addr v2, v3

    iget-boolean v3, p0, Landroid/widget/TextInputTimePickerView;->mIs24Hour:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x17

    goto :goto_0

    :cond_0
    const/16 v3, 0xb

    add-int/2addr v3, v2

    :goto_0
    iget-object v4, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/widget/TextInputTimePickerView;->getHourOfDayFromLocalizedHour(I)I

    move-result v5

    invoke-interface {v4, v0, v5}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    return v0

    :cond_1
    iget-object v2, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-direct {p0, v1}, Landroid/widget/TextInputTimePickerView;->getHourOfDayFromLocalizedHour(I)I

    move-result v4

    invoke-interface {v2, v0, v4}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v1

    return v0
.end method

.method private parseAndSetMinuteInternal(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3b

    const/4 v3, 0x1

    if-ltz v1, :cond_1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-interface {v2, v3, v1}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    return v3

    :cond_1
    :goto_0
    iget-object v4, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    invoke-interface {v4, v3, v2}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private setError(Z)V
    .locals 4

    iput-boolean p1, p0, Landroid/widget/TextInputTimePickerView;->mErrorShowing:Z

    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mErrorLabel:Landroid/widget/TextView;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method setHourFormat(I)V
    .locals 5

    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setImeHintLocales(Landroid/os/LocaleList;)V

    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setImeHintLocales(Landroid/os/LocaleList;)V

    return-void
.end method

.method setListener(Landroid/widget/TextInputTimePickerView$OnValueTypedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    return-void
.end method

.method updateSeparator(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mInputSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateTextInputValues(IIIZZ)V
    .locals 8

    const-string v0, "%d"

    const-string v1, "%02d"

    iput-boolean p4, p0, Landroid/widget/TextInputTimePickerView;->mIs24Hour:Z

    iput-boolean p5, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    iget-object v2, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    const/4 v2, 0x1

    if-nez p3, :cond_1

    iget-object v4, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_1
    iget-object v4, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    const-string v5, "%d"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    const-string v5, "%02d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Landroid/widget/TextInputTimePickerView;->mErrorShowing:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextInputTimePickerView;->validateInput()Z

    :cond_2
    return-void
.end method

.method validateInput()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/TextInputTimePickerView;->parseAndSetHourInternal(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/TextInputTimePickerView;->parseAndSetMinuteInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-direct {p0, v1}, Landroid/widget/TextInputTimePickerView;->setError(Z)V

    return v0
.end method
