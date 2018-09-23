.class Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;
.super Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;
.source "OffloadHardwareInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TetheringOffloadCallback"
.end annotation


# instance fields
.field public final controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

.field public final handler:Landroid/os/Handler;

.field public final log:Landroid/net/util/SharedLog;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;Landroid/net/util/SharedLog;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    iput-object p3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->log:Landroid/net/util/SharedLog;

    return-void
.end method

.method public static synthetic lambda$onEvent$0(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->log:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported OffloadCallbackEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;->onStoppedLimitReached()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;->onSupportAvailable()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;->onStoppedUnsupported()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;->onStoppedError()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;->onStarted()V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$updateTimeout$1(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    iget v1, p1, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->proto:I

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->access$100(I)I

    move-result v1

    iget-object v2, p1, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->src:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    iget-object v2, v2, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->addr:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->src:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    iget-short v3, v3, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->port:S

    invoke-static {v3}, Lcom/android/internal/util/BitUtils;->uint16(S)I

    move-result v3

    iget-object v4, p1, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->dst:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    iget-object v4, v4, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->addr:Ljava/lang/String;

    iget-object v5, p1, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->dst:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    iget-short v5, v5, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->port:S

    invoke-static {v5}, Lcom/android/internal/util/BitUtils;->uint16(S)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;->onNatTimeoutUpdate(ILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$TetheringOffloadCallback$nv6rlSkSWXyiDHH-quQiDc8IaU0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$TetheringOffloadCallback$nv6rlSkSWXyiDHH-quQiDc8IaU0;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateTimeout(Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$TetheringOffloadCallback$iUwkHUaFse6usZpm7pExz3WDNoQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$TetheringOffloadCallback$iUwkHUaFse6usZpm7pExz3WDNoQ;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
