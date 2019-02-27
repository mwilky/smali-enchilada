.class public Lcom/android/internal/usb/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeAccessory(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbAccessory;)V
    .locals 6

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "manufacturer"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000001L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-string v2, "model"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-string v2, "description"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000003L

    invoke-static {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    const-string v2, "version"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000004L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-string v2, "uri"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000005L

    invoke-static {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    const-string v2, "serial"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000006L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method private static writeConfiguration(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbConfiguration;)V
    .locals 8

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "id"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getId()I

    move-result v3

    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "name"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getName()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-string v2, "attributes"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getAttributes()I

    move-result v3

    const-wide v4, 0x10d00000003L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "max_power"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getMaxPower()I

    move-result v3

    const-wide v4, 0x10500000004L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    const-string v4, "interfaces"

    const-wide v5, 0x20b00000005L

    invoke-virtual {p4, v3}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v7

    invoke-static {p0, v4, v5, v6, v7}, Lcom/android/internal/usb/DumpUtils;->writeInterface(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbInterface;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method private static writeDataRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    :cond_0
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static writeDevice(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbDevice;)V
    .locals 8

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "name"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000001L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-string v2, "vendor_id"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    const-wide v4, 0x10500000002L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "product_id"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    const-wide v4, 0x10500000003L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "class"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v3

    const-wide v4, 0x10500000004L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "subclass"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v3

    const-wide v4, 0x10500000005L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "protocol"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v3

    const-wide v4, 0x10500000006L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "manufacturer_name"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000007L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-string v2, "product_name"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000008L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-string v2, "version"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000009L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-string v2, "serial_number"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x1090000000aL

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    const-string v4, "configurations"

    const-wide v5, 0x20b0000000bL

    invoke-virtual {p4, v3}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v7

    invoke-static {p0, v4, v5, v6, v7}, Lcom/android/internal/usb/DumpUtils;->writeConfiguration(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbConfiguration;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method private static writeEndpoint(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbEndpoint;)V
    .locals 6

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "endpoint_number"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v3

    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "direction"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v3

    const-wide v4, 0x10e00000002L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "address"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v3

    const-wide v4, 0x10500000003L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "type"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v3

    const-wide v4, 0x10e00000004L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "attributes"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v3

    const-wide v4, 0x10d00000005L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "max_packet_size"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v3

    const-wide v4, 0x10500000006L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "interval"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v3

    const-wide v4, 0x10500000007L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method private static writeInterface(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbInterface;)V
    .locals 8

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "id"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v3

    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "alternate_settings"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v3

    const-wide v4, 0x10500000002L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "name"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000003L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-string v2, "class"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    const-wide v4, 0x10500000004L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "subclass"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v3

    const-wide v4, 0x10500000005L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "protocol"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v3

    const-wide v4, 0x10500000006L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    const-string v4, "endpoints"

    const-wide v5, 0x20b00000007L

    invoke-virtual {p4, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v7

    invoke-static {p0, v4, v5, v6, v7}, Lcom/android/internal/usb/DumpUtils;->writeEndpoint(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbEndpoint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public static writePort(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPort;)V
    .locals 7

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "id"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000001L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p4}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v3

    const-wide v4, 0x20e00000002L

    if-eqz v3, :cond_5

    if-nez v2, :cond_0

    const-string v3, "supported_modes"

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v2, 0x3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    const-string v3, "supported_modes"

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    :cond_1
    and-int/lit8 v3, v2, 0x2

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    const-string v3, "supported_modes"

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    :cond_2
    and-int/lit8 v3, v2, 0x1

    const/4 v6, 0x1

    if-ne v3, v6, :cond_3

    const-string v3, "supported_modes"

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    :cond_3
    :goto_0
    and-int/lit8 v3, v2, 0x4

    const/4 v6, 0x4

    if-ne v3, v6, :cond_4

    const-string v3, "supported_modes"

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    :cond_4
    and-int/lit8 v3, v2, 0x8

    const/16 v6, 0x8

    if-ne v3, v6, :cond_6

    const-string v3, "supported_modes"

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_1

    :cond_5
    const-string v3, "supported_modes"

    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    :cond_6
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public static writePortStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPortStatus;)V
    .locals 14

    move-object v0, p0

    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "connected"

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v4

    const-wide v5, 0x10800000001L

    invoke-virtual {v0, v3, v5, v6, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    invoke-virtual {v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v3

    const-wide v4, 0x10e00000002L

    if-eqz v3, :cond_0

    const-string v3, "current_mode"

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    :cond_0
    const-string v3, "current_mode"

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v6

    invoke-static {v6}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    :goto_0
    const-string v3, "power_role"

    const-wide v6, 0x10e00000003L

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v8

    invoke-static {v0, v3, v6, v7, v8}, Lcom/android/internal/usb/DumpUtils;->writePowerRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    const-string v3, "data_role"

    const-wide v6, 0x10e00000004L

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v8

    invoke-static {v0, v3, v6, v7, v8}, Lcom/android/internal/usb/DumpUtils;->writeDataRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result v3

    :goto_1
    if-eqz v3, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    const/4 v7, 0x1

    shl-int/2addr v7, v6

    not-int v7, v7

    and-int/2addr v3, v7

    div-int/lit8 v7, v6, 0x3

    add-int/lit8 v7, v7, 0x0

    rem-int/lit8 v8, v6, 0x3

    const-string v9, "role_combinations"

    const-wide v10, 0x20b00000005L

    invoke-virtual {v0, v9, v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v11, "power_role"

    const-wide v12, 0x10e00000001L

    invoke-static {v0, v11, v12, v13, v7}, Lcom/android/internal/usb/DumpUtils;->writePowerRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    const-string v11, "data_role"

    invoke-static {v0, v11, v4, v5, v8}, Lcom/android/internal/usb/DumpUtils;->writeDataRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    invoke-virtual {v0, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method private static writePowerRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    :cond_0
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    :goto_0
    return-void
.end method
