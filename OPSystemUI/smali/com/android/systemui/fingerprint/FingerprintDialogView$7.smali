.class Lcom/android/systemui/fingerprint/FingerprintDialogView$7;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FingerprintDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/FingerprintDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 798
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFacelockStateChanged(I)V
    .locals 3
    .param p1, "type"    # I

    .line 844
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFacelockStateChanged(I)V

    .line 845
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFacelockStateChanged: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 847
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v1, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1402(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 848
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 850
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1500(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1500(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1600(Lcom/android/systemui/fingerprint/FingerprintDialogView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    goto :goto_0

    .line 854
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isScreenOffUnlock()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 855
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 857
    :cond_2
    :goto_0
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 874
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthenticated(I)V

    .line 875
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintAuthenticated, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1702(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 877
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->stopAnimation()V

    .line 878
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 879
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 880
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 881
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1800(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->hideFingerprintDialog()V

    .line 882
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    .line 810
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    .line 811
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    .line 812
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .line 834
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 836
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1202(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 837
    if-nez p1, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)V

    .line 840
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 801
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    .line 802
    const-string v0, "FingerprintDialogView"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$802(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 804
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    .line 805
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/CircleImageView;->setAlpha(F)V

    .line 806
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .line 825
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 826
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$802(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 828
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 829
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 830
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 816
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    .line 817
    const-string v0, "FingerprintDialogView"

    const-string v1, "onStartedWakingUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/CircleImageView;->setAlpha(F)V

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 820
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 821
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 861
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    .line 863
    const/4 v0, 0x1

    .line 864
    .local v0, "allowed":Z
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, v1, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v1, :cond_0

    .line 865
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, v1, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    .line 867
    :cond_0
    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStrongAuthStateChanged, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 869
    :cond_1
    return-void
.end method
