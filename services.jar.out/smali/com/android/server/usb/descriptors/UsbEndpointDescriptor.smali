.class public Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbEndpointDescriptor.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DIRECTION_INPUT:I = -0x80

.field public static final DIRECTION_OUTPUT:I = 0x0

.field public static final MASK_ATTRIBS_SYNCTYPE:B = 0xct

.field public static final MASK_ATTRIBS_TRANSTYPE:I = 0x3

.field public static final MASK_ATTRIBS_USEAGE:I = 0x30

.field public static final MASK_ENDPOINT_ADDRESS:I = 0xf

.field public static final MASK_ENDPOINT_DIRECTION:I = -0x80

.field public static final SYNCTYPE_ADAPTSYNC:B = 0x8t

.field public static final SYNCTYPE_ASYNC:B = 0x4t

.field public static final SYNCTYPE_NONE:B = 0x0t

.field public static final SYNCTYPE_RESERVED:B = 0xct

.field private static final TAG:Ljava/lang/String; = "UsbEndpointDescriptor"

.field public static final TRANSTYPE_BULK:I = 0x2

.field public static final TRANSTYPE_CONTROL:I = 0x0

.field public static final TRANSTYPE_INTERRUPT:I = 0x3

.field public static final TRANSTYPE_ISO:I = 0x1

.field public static final USEAGE_DATA:I = 0x0

.field public static final USEAGE_EXPLICIT:I = 0x20

.field public static final USEAGE_FEEDBACK:I = 0x10

.field public static final USEAGE_RESERVED:I = 0x30


# instance fields
.field private mAttributes:I

.field private mEndpointAddress:I

.field private mInterval:I

.field private mPacketSize:I

.field private mRefresh:B

.field private mSyncAddress:B


# direct methods
.method public constructor <init>(IB)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mHierarchyLevel:I

    return-void
.end method


# virtual methods
.method public getAttributes()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:I

    return v0
.end method

.method public getEndpointAddress()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    return v0
.end method

.method public getInterval()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:I

    return v0
.end method

.method public getPacketSize()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    return v0
.end method

.method public getRefresh()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mRefresh:B

    return v0
.end method

.method public getSyncAddress()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mSyncAddress:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:I

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mLength:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mRefresh:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mSyncAddress:B

    :cond_0
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getEndpointAddress()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v0, 0xf

    invoke-static {v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_0

    const-string v2, " [out]"

    goto :goto_0

    :cond_0
    const-string v2, " [in]"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getAttributes()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v2, "Interrupt"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string v2, "Bulk"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string v2, "Iso"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const-string v2, "Control"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    const-string v2, "Aync: "

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0xc

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, "ADAPTIVE ASYNC"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v2, "ASYNC"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v2, "NONE"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    nop

    :goto_2
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    const-string v2, "Useage: "

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x30

    if-eqz v2, :cond_7

    const/16 v3, 0x10

    if-eq v2, v3, :cond_6

    const/16 v3, 0x20

    if-eq v2, v3, :cond_5

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    goto :goto_3

    :cond_4
    const-string v2, "RESERVED"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v2, "EXPLICIT FEEDBACK"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v2, "FEEDBACK"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string v2, "DATA"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    nop

    :goto_3
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getPacketSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getInterval()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbEndpoint;
    .locals 5

    new-instance v0, Landroid/hardware/usb/UsbEndpoint;

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    iget v2, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:I

    iget v3, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    iget v4, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    return-object v0
.end method
