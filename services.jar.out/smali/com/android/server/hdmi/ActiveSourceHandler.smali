.class final Lcom/android/server/hdmi/ActiveSourceHandler;
.super Ljava/lang/Object;
.source "ActiveSourceHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActiveSourceHandler"


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field private final mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object v0, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    return-void
.end method

.method static create(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/ActiveSourceHandler;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "ActiveSourceHandler"

    const-string v1, "Wrong arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/hdmi/ActiveSourceHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/ActiveSourceHandler;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-object v0
.end method

.method private final getSourceAddress()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    return v0
.end method

.method private invokeCallback(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActiveSourceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method process(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object v1, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startNewDeviceAction(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isProhibitMode()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v2

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    iget-object v5, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    :cond_2
    iget v5, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-virtual {v0, v5, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveInput(IZ)V

    invoke-direct {p0, v4}, Lcom/android/server/hdmi/ActiveSourceHandler;->invokeCallback(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v2

    iget v5, v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-direct {p0}, Lcom/android/server/hdmi/ActiveSourceHandler;->getSourceAddress()I

    move-result v6

    if-ne v5, v6, :cond_4

    iget v3, v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    iget v5, v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-static {v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    invoke-direct {p0, v4}, Lcom/android/server/hdmi/ActiveSourceHandler;->invokeCallback(I)V

    goto :goto_1

    :cond_4
    iget v4, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    iget v5, v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    iget-object v6, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v0, v4, v5, v3, v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    :goto_1
    return-void
.end method
