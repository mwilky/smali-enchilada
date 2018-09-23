.class final Lcom/android/server/hdmi/NewDeviceAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "NewDeviceAction.java"


# static fields
.field static final STATE_WAITING_FOR_DEVICE_VENDOR_ID:I = 0x2

.field static final STATE_WAITING_FOR_SET_OSD_NAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NewDeviceAction"


# instance fields
.field private final mDeviceLogicalAddress:I

.field private final mDevicePhysicalAddress:I

.field private final mDeviceType:I

.field private mDisplayName:Ljava/lang/String;

.field private mTimeoutRetry:I

.field private mVendorId:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;III)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput p2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    iput p3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    iput p4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceType:I

    const v0, 0xffffff

    iput v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    return-void
.end method

.method private addDeviceInfo()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isInDeviceList(II)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NewDeviceAction"

    const-string v1, "Device not found (%02x, %04x)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->getDefaultDeviceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    :cond_1
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    iget v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    invoke-virtual {v1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPortId(I)I

    move-result v4

    iget v5, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceType:I

    iget v6, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    iget-object v7, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->processDelayedMessages(I)V

    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    :cond_2
    return-void
.end method

.method private mayProcessCommandIfCached(II)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageCache;->getMessage(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private requestOsdName(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    const/16 v1, 0x47

    invoke-direct {p0, v0, v1}, Lcom/android/server/hdmi/NewDeviceAction;->mayProcessCommandIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/NewDeviceAction;->addTimer(II)V

    return-void
.end method

.method private requestVendorId(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    const/16 v1, 0x87

    invoke-direct {p0, v0, v1}, Lcom/android/server/hdmi/NewDeviceAction;->mayProcessCommandIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/NewDeviceAction;->addTimer(II)V

    return-void
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .locals 4

    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    iget v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    if-ge v3, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->requestOsdName(Z)V

    return-void

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    iget v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    if-ge v3, v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/server/hdmi/NewDeviceAction;->addDeviceInfo()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->finish()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method isActionOf(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    iget v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    iget v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 8

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    iget v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    const/4 v4, 0x0

    if-eq v3, v1, :cond_0

    return v4

    :cond_0
    iget v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    const/16 v3, 0x47

    if-ne v0, v3, :cond_1

    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "US-ASCII"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "NewDeviceAction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get OSD name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0, v5}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    return v5

    :cond_1
    if-nez v0, :cond_5

    aget-byte v3, v2, v4

    and-int/lit16 v3, v3, 0xff

    const/16 v6, 0x46

    if-ne v3, v6, :cond_2

    invoke-direct {p0, v5}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    return v5

    :cond_2
    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_5

    const/16 v3, 0x87

    if-ne v0, v3, :cond_4

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    move-result v3

    iput v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    invoke-direct {p0}, Lcom/android/server/hdmi/NewDeviceAction;->addDeviceInfo()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->finish()V

    return v5

    :cond_4
    if-nez v0, :cond_5

    aget-byte v3, v2, v4

    and-int/lit16 v3, v3, 0xff

    const/16 v6, 0x8c

    if-ne v3, v6, :cond_5

    invoke-direct {p0}, Lcom/android/server/hdmi/NewDeviceAction;->addDeviceInfo()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->finish()V

    return v5

    :cond_5
    :goto_1
    return v4
.end method

.method public start()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->requestOsdName(Z)V

    return v0
.end method
