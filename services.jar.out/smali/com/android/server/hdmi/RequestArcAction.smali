.class abstract Lcom/android/server/hdmi/RequestArcAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "RequestArcAction.java"


# static fields
.field protected static final STATE_WATING_FOR_REQUEST_ARC_REQUEST_RESPONSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RequestArcAction"


# instance fields
.field protected final mAvrAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    iput p2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    return-void
.end method


# virtual methods
.method protected final disableArcTransmission()V
    .locals 4

    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/RequestArcAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method final handleTimerEvent(I)V
    .locals 2

    iget v0, p0, Lcom/android/server/hdmi/RequestArcAction;->mState:I

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "[T] RequestArcAction."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->disableArcTransmission()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->finish()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5

    iget v0, p0, Lcom/android/server/hdmi/RequestArcAction;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    const-string v3, "RequestArcAction"

    invoke-static {p1, v0, v3}, Lcom/android/server/hdmi/HdmiUtils;->checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xc4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->disableArcTransmission()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->finish()V

    return v1

    :cond_2
    const/16 v4, 0xc3

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setArcStatus(Z)Z

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->finish()V

    return v1

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v2
.end method
