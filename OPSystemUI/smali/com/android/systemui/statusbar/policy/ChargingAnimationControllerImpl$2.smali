.class Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ChargingAnimationControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$302(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->stopAnimation()V

    :cond_0
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStartedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->stopAnimation()V

    :cond_0
    return-void
.end method
