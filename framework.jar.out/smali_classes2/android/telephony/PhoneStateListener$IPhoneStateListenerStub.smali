.class Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;
.super Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPhoneStateListenerStub"
.end annotation


# instance fields
.field private mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/telephony/PhoneStateListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private send(IIILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnomalyStatusChange([I)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x200000

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onCallForwardingIndicatorChanged(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onCarrierNetworkChange(Z)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x10000

    invoke-direct {p0, v2, v1, v1, v0}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x400

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onCellLocationChanged(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/util/Permission;

    invoke-direct {v2, v0}, Landroid/util/Permission;-><init>(Landroid/content/Context;)V

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/util/Permission;->requestPermissionAuto(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v0

    const/16 v2, 0x10

    invoke-direct {p0, v2, v1, v1, v0}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onDataActivationStateChanged(I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x40000

    invoke-direct {p0, v2, v1, v1, v0}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onDataActivity(I)V
    .locals 3

    const/16 v0, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onImsCapabilityStatusChange([Z)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onOemHookRawEvent([B)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x8000

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onOtaspChanged(I)V
    .locals 3

    const/16 v0, 0x200

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onPhysicalChannelConfigurationChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x100000

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x800

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1000

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x100

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onUserMobileDataStateChanged(Z)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x80000

    invoke-direct {p0, v2, v1, v1, v0}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x4000

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onVoiceActivationStateChanged(I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x20000

    invoke-direct {p0, v2, v1, v1, v0}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method
