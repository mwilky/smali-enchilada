.class final Lcom/android/server/hdmi/RequestArcTerminationAction;
.super Lcom/android/server/hdmi/RequestArcAction;
.source "RequestArcTerminationAction.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestArcTerminationAction"


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/RequestArcAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    return-void
.end method


# virtual methods
.method start()Z
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/RequestArcTerminationAction;->mState:I

    iget v1, p0, Lcom/android/server/hdmi/RequestArcTerminationAction;->mState:I

    const/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/RequestArcTerminationAction;->addTimer(II)V

    nop

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcTerminationAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/RequestArcTerminationAction;->mAvrAddress:I

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRequestArcTermination(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    new-instance v2, Lcom/android/server/hdmi/RequestArcTerminationAction$1;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/RequestArcTerminationAction$1;-><init>(Lcom/android/server/hdmi/RequestArcTerminationAction;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/RequestArcTerminationAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return v0
.end method
