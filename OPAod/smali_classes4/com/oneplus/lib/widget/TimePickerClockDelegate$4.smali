.class Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;


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
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 925
    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueSelected(IIZ)V
    .locals 6
    .param p1, "pickerType"    # I
    .param p2, "newValue"    # I
    .param p3, "autoAdvance"    # Z

    .line 928
    const/4 v0, 0x0

    .line 929
    .local v0, "valueChanged":Z
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 944
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 945
    const/4 v0, 0x1

    .line 947
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v2, p2, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1300(Lcom/oneplus/lib/widget/TimePickerClockDelegate;II)V

    goto :goto_2

    .line 931
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 932
    const/4 v0, 0x1

    .line 934
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$800(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 935
    .local v2, "isTransition":Z
    :goto_0
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    if-nez v2, :cond_3

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    invoke-static {v4, p2, v1, v5}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$900(Lcom/oneplus/lib/widget/TimePickerClockDelegate;IIZ)V

    .line 936
    if-eqz v2, :cond_4

    .line 937
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v4, v1, v1, v3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1000(Lcom/oneplus/lib/widget/TimePickerClockDelegate;IZZ)V

    .line 939
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v1, p2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1100(Lcom/oneplus/lib/widget/TimePickerClockDelegate;I)I

    move-result v1

    .line 940
    .local v1, "localizedHour":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    iget-object v3, v3, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v5}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1200(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 941
    .end local v1    # "localizedHour":I
    nop

    .line 951
    .end local v2    # "isTransition":Z
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    iget-object v1, v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 952
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    iget-object v1, v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    iget-object v2, v2, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    .line 954
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
