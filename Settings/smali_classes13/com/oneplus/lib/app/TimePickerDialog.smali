.class public Lcom/oneplus/lib/app/TimePickerDialog;
.super Lcom/oneplus/lib/app/OPAlertDialog;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mInitialHourOfDay:I

.field private final mInitialMinute:I

.field private final mIs24HourView:Z

.field private final mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

.field private final mTimeSetListener:Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;

.field private mToggleModeSpace:Landroid/widget/Space;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 5

    invoke-static {p1, p2}, Lcom/oneplus/lib/app/TimePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimeSetListener:Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;

    iput p4, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mInitialHourOfDay:I

    iput p5, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mInitialMinute:I

    iput-boolean p6, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mIs24HourView:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/app/TimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_time_picker_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/TimePickerDialog;->setView(Landroid/view/View;)V

    const v3, 0x104000a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3, p0}, Lcom/oneplus/lib/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {p0, v4, v3, p0}, Lcom/oneplus/lib/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    sget v3, Lcom/oneplus/commonctrl/R$id;->timePicker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/TimePicker;

    iput-object v3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    iget-object v3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mIs24HourView:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    iget v4, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    iget v4, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mInitialMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v3, p0}, Lcom/oneplus/lib/widget/TimePicker;->setOnTimeChangedListener(Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;)V

    sget v3, Lcom/oneplus/commonctrl/R$id;->time_picker_space:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Space;

    iput-object v3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mToggleModeSpace:Landroid/widget/Space;

    iget-object v3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mToggleModeSpace:Landroid/widget/Space;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Space;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/app/TimePickerDialog;-><init>(Landroid/content/Context;ILcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/app/TimePickerDialog;)Lcom/oneplus/lib/widget/TimePicker;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    return-object v0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101049e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1

    :cond_0
    return p1
.end method


# virtual methods
.method public getTimePicker()Lcom/oneplus/lib/widget/TimePicker;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimeSetListener:Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimeSetListener:Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    iget-object v2, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/oneplus/lib/widget/TimePicker;II)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/lib/app/TimePickerDialog;->cancel()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/oneplus/lib/app/OPAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hour"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "minute"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hour"

    iget-object v2, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "minute"

    iget-object v2, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "is24hour"

    iget-object v2, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/TimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->show()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/TimePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/app/TimePickerDialog$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/app/TimePickerDialog$1;-><init>(Lcom/oneplus/lib/app/TimePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateTime(II)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method
