.class Landroid/widget/TimePickerClockDelegate$7;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10201a9

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const v1, 0x102029a

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x102030f

    if-eq v0, v1, :cond_1

    const v1, 0x1020384

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v3}, Landroid/widget/TimePickerClockDelegate;->access$800(Landroid/widget/TimePickerClockDelegate;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v3, v3, v3}, Landroid/widget/TimePickerClockDelegate;->access$400(Landroid/widget/TimePickerClockDelegate;IZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v2, v3, v3}, Landroid/widget/TimePickerClockDelegate;->access$400(Landroid/widget/TimePickerClockDelegate;IZZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v2}, Landroid/widget/TimePickerClockDelegate;->access$800(Landroid/widget/TimePickerClockDelegate;I)V

    nop

    :goto_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->access$1300(Landroid/widget/TimePickerClockDelegate;)V

    :cond_4
    return-void
.end method
