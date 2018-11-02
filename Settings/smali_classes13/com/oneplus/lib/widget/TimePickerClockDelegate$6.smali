.class Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/oneplus/lib/widget/NumericTextView;IZZ)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1500(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/NumericTextView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1600(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/NumericTextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1700(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/NumericTextView;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1700(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/NumericTextView;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1800(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    nop

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/NumericTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v0, v2, v3}, Lcom/oneplus/lib/widget/NumericTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_2
    return-void

    :cond_4
    return-void
.end method
