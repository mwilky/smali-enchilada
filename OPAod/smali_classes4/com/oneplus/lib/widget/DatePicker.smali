.class public Lcom/oneplus/lib/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;,
        Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;,
        Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;,
        Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;,
        Lcom/oneplus/lib/widget/DatePicker$DatePickerMode;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MODE_CALENDAR:I = 0x2

.field public static final MODE_SPINNER:I = 0x1


# instance fields
.field private final mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

.field private final mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const-class v0, Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 122
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 130
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 134
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 136
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_dialogMode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 137
    .local v1, "isDialogMode":Z
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_android_datePickerMode:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 138
    .local v3, "requestedMode":I
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_android_firstDayOfWeek:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 139
    .local v2, "firstDayOfWeek":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/oneplus/commonctrl/R$integer;->date_picker_mode:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/oneplus/lib/widget/DatePicker;->mMode:I

    goto :goto_0

    .line 146
    :cond_0
    iput v3, p0, Lcom/oneplus/lib/widget/DatePicker;->mMode:I

    .line 149
    :goto_0
    iget v5, p0, Lcom/oneplus/lib/widget/DatePicker;->mMode:I

    if-eq v5, v4, :cond_1

    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/DatePicker;->createSpinnerUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    goto :goto_1

    .line 151
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/DatePicker;->createCalendarUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    .line 152
    nop

    .line 159
    :goto_1
    if-eqz v2, :cond_2

    .line 160
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/DatePicker;->setFirstDayOfWeek(I)V

    .line 164
    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    new-instance v5, Lcom/oneplus/lib/widget/DatePicker$1;

    invoke-direct {v5, p0}, Lcom/oneplus/lib/widget/DatePicker$1;-><init>(Lcom/oneplus/lib/widget/DatePicker;)V

    invoke-interface {v4, v5}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->setAutoFillChangeListener(Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V

    .line 174
    return-void
.end method

.method private createCalendarUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 183
    new-instance v6, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;-><init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v6
.end method

.method private createSpinnerUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 178
    new-instance v6, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;-><init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v6
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 3
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 751
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 752
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 753
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 754
    sget-object v0, Lcom/oneplus/lib/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " could not be autofilled into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-void

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->updateDate(J)V

    .line 760
    :cond_2
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 473
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 474
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 339
    const-class v0, Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutofillType()I
    .locals 1

    .line 764
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 2

    .line 769
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 770
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->getDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 773
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->getCalendarView()Landroid/widget/CalendarView;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->getCalendarViewShown()Z

    move-result v0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->getMaxDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->getMinDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mMode:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->getMonth()I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->getSpinnersShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->getYear()I

    move-result v0

    return v0
.end method

.method public init(IIILcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    .line 210
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->init(IIILcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V

    .line 211
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isYearPickerShowing()Z
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->isYearPickerIsShow()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 344
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 345
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 346
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 484
    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    .line 485
    .local v0, "ss":Landroid/view/View$BaseSavedState;
    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 486
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v1, v0}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 487
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 478
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 479
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v1, v0}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v1

    return-object v1
.end method

.method public setCalendarViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->setCalendarViewShown(Z)V

    .line 438
    return-void
.end method

.method public setCurrentYear()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->setCurrentYear()V

    .line 335
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 317
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 318
    return-void

    .line 320
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 321
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->setEnabled(Z)V

    .line 322
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2
    .param p1, "firstDayOfWeek"    # I

    .line 364
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->setFirstDayOfWeek(I)V

    .line 368
    return-void

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxDate(J)V
    .locals 1
    .param p1, "maxDate"    # J

    .line 302
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->setMaxDate(J)V

    .line 303
    return-void
.end method

.method public setMinDate(J)V
    .locals 1
    .param p1, "minDate"    # J

    .line 277
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->setMinDate(J)V

    .line 278
    return-void
.end method

.method public setOnDateChangedListener(Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V
    .locals 1
    .param p1, "onDateChangedListener"    # Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    .line 220
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->setOnDateChangedListener(Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V

    .line 221
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 1
    .param p1, "shown"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->setSpinnersShown(Z)V

    .line 469
    return-void
.end method

.method public setValidationCallback(Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;

    .line 312
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->setValidationCallback(Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;)V

    .line 313
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 231
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker;->mDelegate:Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;->updateDate(III)V

    .line 232
    return-void
.end method
