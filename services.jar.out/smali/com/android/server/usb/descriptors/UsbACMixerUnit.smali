.class public Lcom/android/server/usb/descriptors/UsbACMixerUnit;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "UsbACMixerUnit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbACMixerUnit"


# instance fields
.field protected mInputIDs:[B

.field protected mNumInputs:B

.field protected mNumOutputs:B

.field protected mUnitID:B


# direct methods
.method public constructor <init>(IBBI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    return-void
.end method

.method protected static calcControlArraySize(II)I
    .locals 2

    mul-int v0, p0, p1

    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    return v1
.end method


# virtual methods
.method public getInputIDs()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mInputIDs:[B

    return-object v0
.end method

.method public getNumInputs()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumInputs:B

    return v0
.end method

.method public getNumOutputs()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumOutputs:B

    return v0
.end method

.method public getUnitID()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mUnitID:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mUnitID:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumInputs:B

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumInputs:B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mInputIDs:[B

    const/4 v0, 0x0

    :goto_0
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumInputs:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mInputIDs:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumOutputs:B

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mLength:I

    return v0
.end method
