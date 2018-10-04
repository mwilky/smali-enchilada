.class public final Landroid/bluetooth/BluetoothClass;
.super Ljava/lang/Object;
.source "BluetoothClass.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothClass$Device;,
        Landroid/bluetooth/BluetoothClass$Service;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = -0x1000000

.field public static final PROFILE_A2DP:I = 0x1

.field public static final PROFILE_A2DP_SINK:I = 0x6

.field public static final PROFILE_HEADSET:I = 0x0

.field public static final PROFILE_HID:I = 0x3

.field public static final PROFILE_NAP:I = 0x5

.field public static final PROFILE_OPP:I = 0x2

.field public static final PROFILE_PANU:I = 0x4


# instance fields
.field private final mClass:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/BluetoothClass$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothClass$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public doesClassMatch(I)Z
    .locals 6

    const/16 v0, 0x428

    const/16 v1, 0x420

    const/high16 v2, 0x40000

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v5, 0x414

    if-eq v2, v5, :cond_1

    const/16 v5, 0x418

    if-eq v2, v5, :cond_1

    if-eq v2, v1, :cond_1

    if-eq v2, v0, :cond_1

    return v3

    :cond_1
    return v4

    :cond_2
    const/4 v5, 0x6

    if-ne p1, v5, :cond_5

    const/high16 v1, 0x80000

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v1

    if-eqz v1, :cond_3

    return v4

    :cond_3
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    const/16 v2, 0x424

    if-eq v1, v2, :cond_4

    if-eq v1, v0, :cond_4

    const/16 v0, 0x42c

    if-eq v1, v0, :cond_4

    return v3

    :cond_4
    return v4

    :cond_5
    if-nez p1, :cond_8

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_6

    return v4

    :cond_6
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v2, 0x404

    if-eq v0, v2, :cond_7

    const/16 v2, 0x408

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_7

    return v3

    :cond_7
    return v4

    :cond_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_9

    return v4

    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return v3

    :sswitch_0
    return v4

    :cond_a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v1, 0x500

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    move v3, v4

    nop

    :cond_b
    return v3

    :cond_c
    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    const/4 v0, 0x5

    if-ne p1, v0, :cond_d

    goto :goto_0

    :cond_d
    return v3

    :cond_e
    :goto_0
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_f

    return v4

    :cond_f
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v1, 0x300

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    move v3, v4

    nop

    :cond_10
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x104 -> :sswitch_0
        0x108 -> :sswitch_0
        0x10c -> :sswitch_0
        0x110 -> :sswitch_0
        0x114 -> :sswitch_0
        0x118 -> :sswitch_0
        0x200 -> :sswitch_0
        0x204 -> :sswitch_0
        0x208 -> :sswitch_0
        0x20c -> :sswitch_0
        0x210 -> :sswitch_0
        0x214 -> :sswitch_0
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/bluetooth/BluetoothClass;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    move-object v2, p1

    check-cast v2, Landroid/bluetooth/BluetoothClass;

    iget v2, v2, Landroid/bluetooth/BluetoothClass;->mClass:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getClassOfDevice()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public getClassOfDeviceBytes()[B
    .locals 3

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public getDeviceClass()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1ffc

    return v0
.end method

.method public getMajorDeviceClass()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1f00

    return v0
.end method

.method public hasService(I)Z
    .locals 2

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    const v1, 0xffe000

    and-int/2addr v0, v1

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
