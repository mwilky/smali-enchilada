.class public final Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;
.super Ljava/lang/Object;
.source "UsbDescriptorsTree.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDescriptorsTree"


# instance fields
.field private mConfigNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

.field private mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

.field private mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addACInterface(Lcom/android/server/usb/descriptors/UsbACInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    new-instance v1, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;

    invoke-direct {v1, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;-><init>(Lcom/android/server/usb/descriptors/UsbACInterface;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->addACInterfaceNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;)V

    return-void
.end method

.method private addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V
    .locals 2

    new-instance v0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    invoke-direct {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;-><init>(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mConfigNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    iget-object v1, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mConfigNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;->addConfigDescriptorNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;)V

    return-void
.end method

.method private addDeviceDescriptor(Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;)V
    .locals 1

    new-instance v0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    invoke-direct {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;-><init>(Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    return-void
.end method

.method private addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    new-instance v1, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;

    invoke-direct {v1, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;-><init>(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->addEndpointNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;)V

    return-void
.end method

.method private addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V
    .locals 2

    new-instance v0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    invoke-direct {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;-><init>(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mConfigNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    iget-object v1, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;->addInterfaceNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;)V

    return-void
.end method


# virtual methods
.method public parse(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptors()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbACInterface;

    invoke-direct {p0, v3}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addACInterface(Lcom/android/server/usb/descriptors/UsbACInterface;)V

    goto :goto_1

    :sswitch_1
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-direct {p0, v3}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V

    goto :goto_1

    :sswitch_2
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-direct {p0, v3}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V

    goto :goto_1

    :sswitch_3
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    invoke-direct {p0, v3}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V

    goto :goto_1

    :sswitch_4
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-direct {p0, v3}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addDeviceDescriptor(Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;)V

    nop

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x24 -> :sswitch_0
    .end sparse-switch
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    return-void
.end method
