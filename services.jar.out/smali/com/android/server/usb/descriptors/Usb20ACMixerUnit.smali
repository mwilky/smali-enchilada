.class public final Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;
.super Lcom/android/server/usb/descriptors/UsbACMixerUnit;
.source "Usb20ACMixerUnit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Usb20ACMixerUnit"


# instance fields
.field private mChanConfig:I

.field private mChanNames:B

.field private mControls:[B

.field private mControlsMask:B

.field private mNameID:B


# direct methods
.method public constructor <init>(IBBI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;-><init>(IBBI)V

    return-void
.end method


# virtual methods
.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 4

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;->mChanConfig:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;->mChanNames:B

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;->mNumInputs:B

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;->mNumOutputs:B

    invoke-static {v0, v1}, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;->calcControlArraySize(II)I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;->mControls:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;->mControls:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;->mControlsMask:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;->mNameID:B

    iget v1, p0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;->mLength:I

    return v1
.end method
