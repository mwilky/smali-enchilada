.class public final Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;
.super Lcom/android/server/usb/descriptors/UsbACTerminal;
.source "Usb20ACOutputTerminal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Usb20ACOutputTerminal"


# instance fields
.field private mClkSoureID:B

.field private mControls:I

.field private mSourceID:B

.field private mTerminalID:B


# direct methods
.method public constructor <init>(IBBI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACTerminal;-><init>(IBBI)V

    return-void
.end method


# virtual methods
.method public getClkSourceID()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;->mClkSoureID:B

    return v0
.end method

.method public getControls()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;->mControls:I

    return v0
.end method

.method public getSourceID()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;->mSourceID:B

    return v0
.end method

.method public getTerminalID()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;->mTerminalID:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACTerminal;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;->mSourceID:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;->mClkSoureID:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;->mControls:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;->mTerminalID:B

    iget v0, p0, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;->mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACTerminal;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clock Source ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;->getClkSourceID()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Controls: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;->getControls()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Terminal Name ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;->getTerminalID()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method
