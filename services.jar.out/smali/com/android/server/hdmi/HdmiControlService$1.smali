.class Lcom/android/server/hdmi/HdmiControlService$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$allocatedDevices:Ljava/util/ArrayList;

.field final synthetic val$allocatingDevices:Ljava/util/ArrayList;

.field final synthetic val$finished:[I

.field final synthetic val$initiatedBy:I

.field final synthetic val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/ArrayList;Ljava/util/ArrayList;[II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$allocatedDevices:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$allocatingDevices:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$finished:[I

    iput p6, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$initiatedBy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllocated(II)V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0xf

    if-ne p2, v1, :cond_0

    const-string v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to allocate address:[device_type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1, p2, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1400(Lcom/android/server/hdmi/HdmiControlService;III)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/hdmi/HdmiCecController;->addLocalDevice(ILcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/hdmi/HdmiCecController;->addLogicalAddress(I)I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$allocatedDevices:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$allocatingDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$finished:[I

    aget v3, v2, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aput v3, v2, v0

    if-ne v1, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0, v4}, Lcom/android/server/hdmi/HdmiControlService;->access$1502(Lcom/android/server/hdmi/HdmiControlService;Z)Z

    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$initiatedBy:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$initiatedBy:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1600(Lcom/android/server/hdmi/HdmiControlService;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$allocatedDevices:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$initiatedBy:I

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1700(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/ArrayList;I)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1800(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->processMessages()V

    :cond_2
    return-void
.end method
