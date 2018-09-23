.class public final Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbDeviceDescriptor.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbDeviceDescriptor"

.field public static final USBSPEC_1_0:I = 0x100

.field public static final USBSPEC_1_1:I = 0x110

.field public static final USBSPEC_2_0:I = 0x200


# instance fields
.field private mConfigDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbConfigDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mDevClass:I

.field private mDevSubClass:I

.field private mDeviceRelease:I

.field private mMfgIndex:B

.field private mNumConfigs:B

.field private mPacketSize:B

.field private mProductID:I

.field private mProductIndex:B

.field private mProtocol:I

.field private mSerialIndex:B

.field private mSpec:I

.field private mVendorID:I


# direct methods
.method constructor <init>(IB)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mHierarchyLevel:I

    return-void
.end method


# virtual methods
.method addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDevClass()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevClass:I

    return v0
.end method

.method public getDevSubClass()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevSubClass:I

    return v0
.end method

.method public getDeviceRelease()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    return v0
.end method

.method public getDeviceReleaseString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    and-int/lit8 v0, v0, 0xf

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    and-int/lit16 v2, v2, 0xf00

    shr-int/lit8 v2, v2, 0x8

    iget v3, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    const v4, 0xf000

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0xc

    const-string v4, "%d.%d%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    mul-int/lit8 v6, v3, 0xa

    add-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getMfgIndex()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mMfgIndex:B

    return v0
.end method

.method public getMfgString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mMfgIndex:B

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumConfigs()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mNumConfigs:B

    return v0
.end method

.method public getPacketSize()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mPacketSize:B

    return v0
.end method

.method public getProductID()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductID:I

    return v0
.end method

.method public getProductIndex()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductIndex:B

    return v0
.end method

.method public getProductString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductIndex:B

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProtocol:I

    return v0
.end method

.method public getSerialIndex()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSerialIndex:B

    return v0
.end method

.method public getSerialString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSerialIndex:B

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpec()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSpec:I

    return v0
.end method

.method public getVendorID()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mVendorID:I

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSpec:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevClass:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevSubClass:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProtocol:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mPacketSize:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mVendorID:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductID:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mMfgIndex:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductIndex:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSerialIndex:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mNumConfigs:B

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSpec()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getBCDString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDevClass()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getClassName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDevSubClass()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getClassName(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Subclass"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Vendor ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getVendorID()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Product ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductID()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Product Release: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDeviceRelease()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getBCDString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getParser()Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getMfgIndex()B

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductIndex()B

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Manufacturer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " Product "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method

.method public toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbDevice;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getMfgString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDeviceReleaseString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSerialString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Landroid/hardware/usb/UsbDevice;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDeviceAddr()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mVendorID:I

    iget v4, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductID:I

    iget v5, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevClass:I

    iget v6, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevSubClass:I

    iget v7, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProtocol:I

    move-object/from16 v1, v16

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    invoke-direct/range {v1 .. v11}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/usb/UsbConfiguration;

    const-string v3, "UsbDeviceDescriptor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " configs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p1

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->setConfigurations([Landroid/os/Parcelable;)V

    return-object v1
.end method
