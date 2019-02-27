.class abstract Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/DatePicker$DatePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractDatePickerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    }
.end annotation


# instance fields
.field protected mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field private mAutofilledValue:J

.field protected mContext:Landroid/content/Context;

.field protected mCurrentDate:Landroid/icu/util/Calendar;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mDelegator:Landroid/widget/DatePicker;

.field protected mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field protected mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;


# direct methods
.method public constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;)V
    .locals 1
    .param p1, "delegator"    # Landroid/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 597
    iput-object p2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 599
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 600
    return-void
.end method


# virtual methods
.method public final autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 6
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 626
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    move-result-wide v0

    .line 633
    .local v0, "time":J
    iget-object v2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v2

    .line 634
    .local v2, "cal":Landroid/icu/util/Calendar;
    invoke-virtual {v2, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 635
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 636
    invoke-virtual {v2, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    .line 635
    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->updateDate(III)V

    .line 640
    iput-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mAutofilledValue:J

    .line 641
    return-void

    .line 627
    .end local v0    # "time":J
    .end local v2    # "cal":Landroid/icu/util/Calendar;
    :cond_1
    :goto_0
    invoke-static {}, Landroid/widget/DatePicker;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " could not be autofilled into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void
.end method

.method public final getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 4

    .line 645
    iget-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mAutofilledValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 646
    iget-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mAutofilledValue:J

    goto :goto_0

    .line 647
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 648
    .local v0, "time":J
    :goto_0
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object v2

    return-object v2
.end method

.method protected getFormattedCurrentDate()Ljava/lang/String;
    .locals 4

    .line 675
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x16

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .line 667
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 671
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->getFormattedCurrentDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    return-void
.end method

.method protected onValidationChanged(Z)V
    .locals 1
    .param p1, "valid"    # Z

    .line 660
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$ValidationCallback;->onValidationChanged(Z)V

    .line 663
    :cond_0
    return-void
.end method

.method protected resetAutofilledValue()V
    .locals 2

    .line 656
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mAutofilledValue:J

    .line 657
    return-void
.end method

.method public setAutoFillChangeListener(Landroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "callback"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .line 616
    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 617
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 603
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 605
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    .line 607
    :cond_0
    return-void
.end method

.method public setOnDateChangedListener(Landroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "callback"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .line 611
    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 612
    return-void
.end method

.method public setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/widget/DatePicker$ValidationCallback;

    .line 621
    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    .line 622
    return-void
.end method
