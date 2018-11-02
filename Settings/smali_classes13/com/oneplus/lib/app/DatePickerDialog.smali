.class public Lcom/oneplus/lib/app/DatePickerDialog;
.super Lcom/oneplus/lib/app/OPAlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

.field private mDateSetListener:Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;

.field private final mValidationCallback:Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/lib/app/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/lib/app/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/lib/app/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V
    .locals 5

    invoke-static {p1, p2}, Lcom/oneplus/lib/app/DatePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/oneplus/lib/app/DatePickerDialog$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/DatePickerDialog$2;-><init>(Lcom/oneplus/lib/app/DatePickerDialog;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mValidationCallback:Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_date_picker_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/DatePickerDialog;->setView(Landroid/view/View;)V

    const v3, 0x104000a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3, p0}, Lcom/oneplus/lib/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {p0, v4, v3, p0}, Lcom/oneplus/lib/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    move-result p5

    const/4 v3, 0x2

    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    move-result p6

    const/4 v3, 0x5

    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    move-result p7

    :cond_0
    sget v3, Lcom/oneplus/commonctrl/R$id;->datePicker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/DatePicker;

    iput-object v3, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    iget-object v3, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v3, p5, p6, p7, p0}, Lcom/oneplus/lib/widget/DatePicker;->init(IIILcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V

    iget-object v3, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    iget-object v4, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mValidationCallback:Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/DatePicker;->setValidationCallback(Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;)V

    iput-object p3, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDateSetListener:Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/lib/app/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/app/DatePickerDialog;)Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDateSetListener:Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/app/DatePickerDialog;)Lcom/oneplus/lib/widget/DatePicker;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    return-object v0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10104ac

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1

    :cond_0
    return p1
.end method


# virtual methods
.method public getDatePicker()Lcom/oneplus/lib/widget/DatePicker;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDateSetListener:Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker;->clearFocus()V

    iget-object v0, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDateSetListener:Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    iget-object v2, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/oneplus/lib/widget/DatePicker;III)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/lib/app/DatePickerDialog;->cancel()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDateChanged(Lcom/oneplus/lib/widget/DatePicker;III)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v0, p2, p3, p4, p0}, Lcom/oneplus/lib/widget/DatePicker;->init(IIILcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/oneplus/lib/app/OPAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "month"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "day"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v3, v0, v1, v2, p0}, Lcom/oneplus/lib/widget/DatePicker;->init(IIILcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "year"

    iget-object v2, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "month"

    iget-object v2, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "day"

    iget-object v2, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setOnDateSetListener(Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDateSetListener:Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->show()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/DatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/app/DatePickerDialog$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/app/DatePickerDialog$1;-><init>(Lcom/oneplus/lib/app/DatePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/DatePickerDialog;->mDatePicker:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/widget/DatePicker;->updateDate(III)V

    return-void
.end method
