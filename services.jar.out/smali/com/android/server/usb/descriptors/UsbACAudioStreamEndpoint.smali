.class public Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;
.super Lcom/android/server/usb/descriptors/UsbACEndpoint;
.source "UsbACAudioStreamEndpoint.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbACAudioStreamEndpoint"


# direct methods
.method public constructor <init>(IBI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/descriptors/UsbACEndpoint;-><init>(IBI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getSubclass()I
    .locals 1

    invoke-super {p0}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->getSubclass()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSubtype()B
    .locals 1

    invoke-super {p0}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->getSubtype()B

    move-result v0

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;->mLength:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getReadCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/ByteStream;->advance(I)V

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;->mLength:I

    return v0
.end method
