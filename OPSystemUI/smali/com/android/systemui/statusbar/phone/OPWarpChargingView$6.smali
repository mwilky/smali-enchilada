.class Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;
.super Ljava/lang/Object;
.source "OPWarpChargingView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->getWarpFastChargeAnimation()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->setVisibility(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$100(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$100(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$000(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$200(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$200(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    move-result-object v1

    const/16 v2, 0x67

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/ChargingAnimationController;->animationEnd(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->relaseAsset()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$302(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$100(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$100(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$200(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$200(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    move-result-object v1

    const/16 v2, 0x67

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/ChargingAnimationController;->animationStart(I)V

    :cond_0
    return-void
.end method
