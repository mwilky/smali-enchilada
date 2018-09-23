.class Lcom/oneplus/lib/widget/TimePickerClockDelegate$2;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/TimePickerClockDelegate;->animationInInputTimeField()V
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

    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$400(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/RadialTimePickerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$500(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$200(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/TextInputTimePickerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$302(Lcom/oneplus/lib/widget/TimePickerClockDelegate;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$200(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/TextInputTimePickerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->showInputBlock(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$200(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/TextInputTimePickerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->showLabels(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$302(Lcom/oneplus/lib/widget/TimePickerClockDelegate;Z)Z

    return-void
.end method
