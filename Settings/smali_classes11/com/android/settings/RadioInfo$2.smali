.class Lcom/android/settings/RadioInfo$2;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$802(Lcom/android/settings/RadioInfo;Z)Z

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$900(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$200(Lcom/android/settings/RadioInfo;)V

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$400(Lcom/android/settings/RadioInfo;I)V

    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$1000(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$1102(Lcom/android/settings/RadioInfo;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v1, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1100(Lcom/android/settings/RadioInfo;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$1200(Lcom/android/settings/RadioInfo;Ljava/util/List;)V

    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$500(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V

    return-void
.end method

.method public onDataActivity(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$300(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionRealTimeInfoChanged: dcRtInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$1000(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$1300(Lcom/android/settings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$100(Lcom/android/settings/RadioInfo;)V

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$200(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$602(Lcom/android/settings/RadioInfo;Z)Z

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$700(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onPhysicalChannelConfigurationChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$1800(Lcom/android/settings/RadioInfo;Ljava/util/List;)V

    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$200(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged: ServiceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$1000(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$1500(Lcom/android/settings/RadioInfo;Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$1600(Lcom/android/settings/RadioInfo;)V

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$200(Lcom/android/settings/RadioInfo;)V

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$1700(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthChanged: SignalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$1000(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$1400(Lcom/android/settings/RadioInfo;Landroid/telephony/SignalStrength;)V

    return-void
.end method
