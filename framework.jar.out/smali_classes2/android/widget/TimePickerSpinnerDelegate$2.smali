.class Landroid/widget/TimePickerSpinnerDelegate$2;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePickerSpinnerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 5

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->access$000(Landroid/widget/TimePickerSpinnerDelegate;)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->access$400(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->access$400(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ne p2, v1, :cond_1

    if-ne p3, v0, :cond_1

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v2}, Landroid/widget/TimePickerSpinnerDelegate;->access$500(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v3}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v4, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v4}, Landroid/widget/TimePickerSpinnerDelegate;->access$100(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Landroid/widget/TimePickerSpinnerDelegate;->access$102(Landroid/widget/TimePickerSpinnerDelegate;Z)Z

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->access$200(Landroid/widget/TimePickerSpinnerDelegate;)V

    :cond_0
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->access$500(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_3

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v2}, Landroid/widget/TimePickerSpinnerDelegate;->access$500(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v3}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v4, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v4}, Landroid/widget/TimePickerSpinnerDelegate;->access$100(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Landroid/widget/TimePickerSpinnerDelegate;->access$102(Landroid/widget/TimePickerSpinnerDelegate;Z)Z

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->access$200(Landroid/widget/TimePickerSpinnerDelegate;)V

    :cond_2
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->access$500(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    :cond_3
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v2}, Landroid/widget/TimePickerSpinnerDelegate;->access$300(Landroid/widget/TimePickerSpinnerDelegate;)V

    return-void
.end method
