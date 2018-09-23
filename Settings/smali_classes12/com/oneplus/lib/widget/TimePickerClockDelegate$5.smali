.class Lcom/oneplus/lib/widget/TimePickerClockDelegate$5;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;


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

    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$5;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(II)V
    .locals 3

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$5;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0, p2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1400(Lcom/oneplus/lib/widget/TimePickerClockDelegate;I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$5;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v1, p2, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1300(Lcom/oneplus/lib/widget/TimePickerClockDelegate;II)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$5;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    const/4 v2, 0x0

    invoke-static {v1, p2, v0, v2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$900(Lcom/oneplus/lib/widget/TimePickerClockDelegate;IIZ)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
