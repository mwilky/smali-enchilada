.class Landroid/widget/TimePickerSpinnerDelegate$1;
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
    .param p1, "this$0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .line 91
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 2
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .line 93
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->access$000(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 94
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    const/16 v0, 0xc

    const/16 v1, 0xb

    if-ne p2, v1, :cond_0

    if-eq p3, v0, :cond_1

    :cond_0
    if-ne p2, v0, :cond_2

    if-ne p3, v1, :cond_2

    .line 97
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->access$100(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->access$102(Landroid/widget/TimePickerSpinnerDelegate;Z)Z

    .line 98
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->access$200(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 101
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->access$300(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 102
    return-void
.end method
