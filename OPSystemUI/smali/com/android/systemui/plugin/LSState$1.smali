.class Lcom/android/systemui/plugin/LSState$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LSState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/LSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/LSState;


# direct methods
.method constructor <init>(Lcom/android/systemui/plugin/LSState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v0, v0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/systemui/plugin/BaseCtrl;->onFinishedGoingToSleep(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v0, v0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/systemui/plugin/BaseCtrl;->onKeyguardBouncerChanged(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v0, v0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/systemui/plugin/BaseCtrl;->onKeyguardVisibilityChanged(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/LSState;->access$102(Lcom/android/systemui/plugin/LSState;Z)Z

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v0, v0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->onScreenTurnedOff()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/LSState;->access$102(Lcom/android/systemui/plugin/LSState;Z)Z

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v0, v0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/systemui/plugin/BaseCtrl;->onStartedGoingToSleep(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/LSState;->access$102(Lcom/android/systemui/plugin/LSState;Z)Z

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v0, v0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->onStartedWakingUp()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
