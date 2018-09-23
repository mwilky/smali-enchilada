.class public Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbInterfaceDescriptor.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbInterfaceDescriptor"


# instance fields
.field protected mAlternateSetting:B

.field protected mDescrIndex:B

.field private mEndpointDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field protected mInterfaceNumber:I

.field protected mNumEndpoints:B

.field protected mProtocol:I

.field protected mUsbClass:I

.field protected mUsbSubclass:I


# direct methods
.method constructor <init>(IB)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mHierarchyLevel:I

    return-void
.end method


# virtual methods
.method addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAlternateSetting()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mAlternateSetting:B

    return v0
.end method

.method public getDescrIndex()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mDescrIndex:B

    return v0
.end method

.method public getInterfaceNumber()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mInterfaceNumber:I

    return v0
.end method

.method public getNumEndpoints()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mNumEndpoints:B

    return v0
.end method

.method public getProtocol()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mProtocol:I

    return v0
.end method

.method public getUsbClass()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    return v0
.end method

.method public getUsbSubclass()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mInterfaceNumber:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mAlternateSetting:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mNumEndpoints:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mProtocol:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mDescrIndex:B

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getProtocol()I

    move-result v2

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getClassName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getAudioSubclassName(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interface #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getInterfaceNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Subclass: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Protocol: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Endpoints: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getNumEndpoints()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method

.method toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;
    .locals 9

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mDescrIndex:B

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Landroid/hardware/usb/UsbInterface;

    iget v2, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mInterfaceNumber:I

    iget-byte v3, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mAlternateSetting:B

    iget v5, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    iget v6, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    iget v7, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mProtocol:I

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Landroid/hardware/usb/UsbInterface;-><init>(IILjava/lang/String;III)V

    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/usb/UsbEndpoint;

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-virtual {v4, p1}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbInterface;->setEndpoints([Landroid/os/Parcelable;)V

    return-object v1
.end method
