.class public Landroid/hardware/usb/DeviceFilter;
.super Ljava/lang/Object;
.source "DeviceFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mClass:I

.field public final mManufacturerName:Ljava/lang/String;

.field public final mProductId:I

.field public final mProductName:Ljava/lang/String;

.field public final mProtocol:I

.field public final mSerialNumber:Ljava/lang/String;

.field public final mSubclass:I

.field public final mVendorId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/hardware/usb/DeviceFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/usb/DeviceFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    iput p2, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    iput p3, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    iput p4, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    iput p5, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    iput-object p6, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    iput-object p7, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    iput-object p8, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v0

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v0

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    return-void
.end method

.method private matches(III)Z
    .locals 2

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    if-ne p1, v0, :cond_2

    :cond_0
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    if-ne p2, v0, :cond_2

    :cond_1
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    if-ne p3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v20, v8

    move-object v8, v7

    move-object v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    move v0, v10

    :goto_0
    move v11, v0

    if-ge v11, v9, :cond_a

    invoke-interface {v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v13, "manufacturer-name"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object v7, v0

    goto/16 :goto_1

    :cond_0
    const-string/jumbo v13, "product-name"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v8, v0

    goto/16 :goto_1

    :cond_1
    const-string/jumbo v13, "serial-number"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object v13, v0

    move-object/from16 v20, v13

    goto/16 :goto_1

    :cond_2
    const/16 v13, 0xa

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x2

    if-le v14, v15, :cond_4

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v10, 0x30

    if-ne v14, v10, :cond_4

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x78

    if-eq v14, v15, :cond_3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v14, 0x58

    if-ne v10, v14, :cond_4

    :cond_3
    const/16 v13, 0x10

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object v10, v0

    :try_start_0
    invoke-static {v10, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    const-string/jumbo v14, "vendor-id"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move v2, v0

    goto :goto_1

    :cond_5
    const-string/jumbo v14, "product-id"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    move v3, v0

    goto :goto_1

    :cond_6
    const-string v14, "class"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    move v4, v0

    goto :goto_1

    :cond_7
    const-string/jumbo v14, "subclass"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    move v5, v0

    goto :goto_1

    :cond_8
    const-string/jumbo v14, "protocol"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    nop

    move v6, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v14, v0

    sget-object v14, Landroid/hardware/usb/DeviceFilter;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid number for field "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_9
    :goto_1
    add-int/lit8 v0, v11, 0x1

    move-object/from16 v1, p0

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_a
    new-instance v0, Landroid/hardware/usb/DeviceFilter;

    move-object v11, v0

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v20

    invoke-direct/range {v11 .. v19}, Landroid/hardware/usb/DeviceFilter;-><init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public contains(Landroid/hardware/usb/DeviceFilter;)Z
    .locals 4

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    iget v0, p1, Landroid/hardware/usb/DeviceFilter;->mClass:I

    iget v1, p1, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    iget v2, p1, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/usb/DeviceFilter;->matches(III)Z

    move-result v0

    return v0
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 6

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    const-string/jumbo v2, "vendor_id"

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string/jumbo v2, "product_id"

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    const-wide v4, 0x10500000002L

    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "class"

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    const-wide v4, 0x10500000003L

    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string/jumbo v2, "subclass"

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    const-wide v4, 0x10500000004L

    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string/jumbo v2, "protocol"

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    const-wide v4, 0x10500000005L

    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string/jumbo v2, "manufacturer_name"

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    const-wide v4, 0x10900000006L

    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-string/jumbo v2, "product_name"

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    const-wide v4, 0x10900000007L

    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-string/jumbo v2, "serial_number"

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    const-wide v4, 0x10900000008L

    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1d

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-eq v0, v1, :cond_1d

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    if-eq v0, v1, :cond_1d

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    if-eq v0, v1, :cond_1d

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Landroid/hardware/usb/DeviceFilter;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Landroid/hardware/usb/DeviceFilter;

    iget v3, v0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    if-ne v3, v4, :cond_d

    iget v3, v0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-ne v3, v4, :cond_d

    iget v3, v0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    if-ne v3, v4, :cond_d

    iget v3, v0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    if-ne v3, v4, :cond_d

    iget v3, v0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    if-eq v3, v4, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v3, v0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v3, :cond_7

    :cond_2
    iget-object v3, v0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v3, :cond_7

    :cond_3
    iget-object v3, v0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v3, :cond_7

    :cond_4
    iget-object v3, v0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v3, :cond_7

    :cond_5
    iget-object v3, v0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, v0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_8

    :cond_7
    return v2

    :cond_8
    iget-object v3, v0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    iget-object v4, v0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_9
    iget-object v3, v0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    iget-object v4, v0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    iget-object v3, v0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    iget-object v4, v0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    return v2

    :cond_c
    return v1

    :cond_d
    :goto_0
    return v2

    :cond_e
    instance-of v0, p1, Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_1c

    move-object v0, p1

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    if-ne v3, v4, :cond_1b

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-ne v3, v4, :cond_1b

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v3

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    if-ne v3, v4, :cond_1b

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v3

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    if-ne v3, v4, :cond_1b

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v3

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    if-eq v3, v4, :cond_f

    goto/16 :goto_1

    :cond_f
    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v3, :cond_10

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    :cond_10
    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v3, :cond_11

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_15

    :cond_11
    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v3, :cond_12

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    :cond_12
    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v3, :cond_13

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_15

    :cond_13
    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_14

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    :cond_14
    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v3, :cond_16

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    :cond_15
    return v2

    :cond_16
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_17
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_18
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_19
    return v2

    :cond_1a
    return v1

    :cond_1b
    :goto_1
    return v2

    :cond_1c
    return v2

    :cond_1d
    :goto_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public matches(Landroid/hardware/usb/UsbDevice;)Z
    .locals 8

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    :cond_7
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Landroid/hardware/usb/DeviceFilter;->matches(III)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_a

    invoke-virtual {p1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v5

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v6

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Landroid/hardware/usb/DeviceFilter;->matches(III)Z

    move-result v5

    if-eqz v5, :cond_9

    return v1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceFilter[mVendorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mProductId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mSubclass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mManufacturerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mProductName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mSerialNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "usb-device"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const-string/jumbo v0, "vendor-id"

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-eq v0, v2, :cond_1

    const-string/jumbo v0, "product-id"

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    if-eq v0, v2, :cond_2

    const-string v0, "class"

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    if-eq v0, v2, :cond_3

    const-string/jumbo v0, "subclass"

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    if-eq v0, v2, :cond_4

    const-string/jumbo v0, "protocol"

    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "manufacturer-name"

    iget-object v2, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "product-name"

    iget-object v2, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string/jumbo v0, "serial-number"

    iget-object v2, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    const-string/jumbo v0, "usb-device"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
