.class Lcom/oneplus/lib/app/DatePickerDialog$1;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/DatePickerDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/DatePickerDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/DatePickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/DatePickerDialog$1;->this$0:Lcom/oneplus/lib/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/app/DatePickerDialog$1;->this$0:Lcom/oneplus/lib/app/DatePickerDialog;

    invoke-static {v0}, Lcom/oneplus/lib/app/DatePickerDialog;->access$000(Lcom/oneplus/lib/app/DatePickerDialog;)Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/DatePickerDialog$1;->this$0:Lcom/oneplus/lib/app/DatePickerDialog;

    invoke-static {v0}, Lcom/oneplus/lib/app/DatePickerDialog;->access$100(Lcom/oneplus/lib/app/DatePickerDialog;)Lcom/oneplus/lib/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/DatePickerDialog$1;->this$0:Lcom/oneplus/lib/app/DatePickerDialog;

    invoke-static {v0}, Lcom/oneplus/lib/app/DatePickerDialog;->access$100(Lcom/oneplus/lib/app/DatePickerDialog;)Lcom/oneplus/lib/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker;->isYearPickerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/DatePickerDialog$1;->this$0:Lcom/oneplus/lib/app/DatePickerDialog;

    invoke-static {v0}, Lcom/oneplus/lib/app/DatePickerDialog;->access$100(Lcom/oneplus/lib/app/DatePickerDialog;)Lcom/oneplus/lib/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker;->setCurrentYear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/DatePickerDialog$1;->this$0:Lcom/oneplus/lib/app/DatePickerDialog;

    invoke-static {v0}, Lcom/oneplus/lib/app/DatePickerDialog;->access$100(Lcom/oneplus/lib/app/DatePickerDialog;)Lcom/oneplus/lib/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker;->clearFocus()V

    iget-object v0, p0, Lcom/oneplus/lib/app/DatePickerDialog$1;->this$0:Lcom/oneplus/lib/app/DatePickerDialog;

    invoke-static {v0}, Lcom/oneplus/lib/app/DatePickerDialog;->access$000(Lcom/oneplus/lib/app/DatePickerDialog;)Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/DatePickerDialog$1;->this$0:Lcom/oneplus/lib/app/DatePickerDialog;

    invoke-static {v1}, Lcom/oneplus/lib/app/DatePickerDialog;->access$100(Lcom/oneplus/lib/app/DatePickerDialog;)Lcom/oneplus/lib/widget/DatePicker;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/DatePickerDialog$1;->this$0:Lcom/oneplus/lib/app/DatePickerDialog;

    invoke-static {v2}, Lcom/oneplus/lib/app/DatePickerDialog;->access$100(Lcom/oneplus/lib/app/DatePickerDialog;)Lcom/oneplus/lib/widget/DatePicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/app/DatePickerDialog$1;->this$0:Lcom/oneplus/lib/app/DatePickerDialog;

    invoke-static {v3}, Lcom/oneplus/lib/app/DatePickerDialog;->access$100(Lcom/oneplus/lib/app/DatePickerDialog;)Lcom/oneplus/lib/widget/DatePicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/app/DatePickerDialog$1;->this$0:Lcom/oneplus/lib/app/DatePickerDialog;

    invoke-static {v4}, Lcom/oneplus/lib/app/DatePickerDialog;->access$100(Lcom/oneplus/lib/app/DatePickerDialog;)Lcom/oneplus/lib/widget/DatePicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/oneplus/lib/widget/DatePicker;III)V

    iget-object v0, p0, Lcom/oneplus/lib/app/DatePickerDialog$1;->this$0:Lcom/oneplus/lib/app/DatePickerDialog;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/DatePickerDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
