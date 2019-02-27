.class public final Landroid/nfc/tech/MifareClassic;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "MifareClassic.java"


# static fields
.field public static final BLOCK_SIZE:I = 0x10

.field public static final KEY_DEFAULT:[B

.field public static final KEY_MIFARE_APPLICATION_DIRECTORY:[B

.field public static final KEY_NFC_FORUM:[B

.field private static final MAX_BLOCK_COUNT:I = 0x100

.field private static final MAX_SECTOR_COUNT:I = 0x28

.field public static final SIZE_1K:I = 0x400

.field public static final SIZE_2K:I = 0x800

.field public static final SIZE_4K:I = 0x1000

.field public static final SIZE_MINI:I = 0x140

.field private static final TAG:Ljava/lang/String; = "NFC"

.field public static final TYPE_CLASSIC:I = 0x0

.field public static final TYPE_PLUS:I = 0x1

.field public static final TYPE_PRO:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private mIsEmulated:Z

.field private mSize:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 97
    const/4 v0, 0x6

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    .line 103
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Landroid/nfc/tech/MifareClassic;->KEY_MIFARE_APPLICATION_DIRECTORY:[B

    .line 109
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/nfc/tech/MifareClassic;->KEY_NFC_FORUM:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x60t
        -0x5ft
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x2dt
        -0x9t
        -0x2dt
        -0x9t
        -0x2dt
        -0x9t
    .end array-data
.end method

.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 7
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 166
    invoke-static {p1}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object v0

    .line 168
    .local v0, "a":Landroid/nfc/tech/NfcA;
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    .line 170
    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v2

    const/16 v3, 0x800

    const/16 v4, 0x400

    const/4 v5, 0x1

    const/16 v6, 0x1000

    sparse-switch v2, :sswitch_data_0

    .line 221
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag incorrectly enumerated as MIFARE Classic, SAK = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :sswitch_0
    const/4 v1, 0x2

    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 216
    iput v6, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 217
    goto :goto_0

    .line 209
    :sswitch_1
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 210
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 212
    goto :goto_0

    .line 204
    :sswitch_2
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 205
    iput v6, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 206
    iput-boolean v5, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    .line 207
    goto :goto_0

    .line 199
    :sswitch_3
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 200
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 201
    iput-boolean v5, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    .line 202
    goto :goto_0

    .line 195
    :sswitch_4
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 196
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 197
    goto :goto_0

    .line 191
    :sswitch_5
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 192
    iput v6, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 193
    goto :goto_0

    .line 186
    :sswitch_6
    iput v5, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 187
    iput v6, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 189
    goto :goto_0

    .line 181
    :sswitch_7
    iput v5, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 182
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 184
    goto :goto_0

    .line 177
    :sswitch_8
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 178
    const/16 v1, 0x140

    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 179
    goto :goto_0

    .line 173
    :sswitch_9
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 174
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 175
    nop

    .line 224
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x8 -> :sswitch_9
        0x9 -> :sswitch_8
        0x10 -> :sswitch_7
        0x11 -> :sswitch_6
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x28 -> :sswitch_3
        0x38 -> :sswitch_2
        0x88 -> :sswitch_1
        0x98 -> :sswitch_0
        0xb8 -> :sswitch_0
    .end sparse-switch
.end method

.method private authenticate(I[BZ)Z
    .locals 7
    .param p1, "sector"    # I
    .param p2, "key"    # [B
    .param p3, "keyA"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    .line 393
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 395
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 398
    .local v0, "cmd":[B
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 399
    const/16 v2, 0x60

    aput-byte v2, v0, v1

    goto :goto_0

    .line 401
    :cond_0
    const/16 v2, 0x61

    aput-byte v2, v0, v1

    .line 407
    :goto_0
    invoke-virtual {p0, p1}, Landroid/nfc/tech/MifareClassic;->sectorToBlock(I)I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 410
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->getTag()Landroid/nfc/Tag;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/Tag;->getId()[B

    move-result-object v2

    .line 411
    .local v2, "uid":[B
    array-length v4, v2

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    const/4 v6, 0x2

    invoke-static {v2, v4, v0, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 414
    const/4 v4, 0x6

    invoke-static {p2, v1, v0, v4, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 417
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    move-result-object v4
    :try_end_0
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    .line 418
    return v3

    .line 424
    :cond_1
    goto :goto_1

    .line 422
    :catch_0
    move-exception v3

    .line 425
    :goto_1
    return v1

    .line 420
    :catch_1
    move-exception v1

    .line 421
    .local v1, "e":Landroid/nfc/TagLostException;
    throw v1
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareClassic;
    .locals 2
    .param p0, "tag"    # Landroid/nfc/Tag;

    .line 154
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 156
    :cond_0
    :try_start_0
    new-instance v0, Landroid/nfc/tech/MifareClassic;

    invoke-direct {v0, p0}, Landroid/nfc/tech/MifareClassic;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method private static validateBlock(I)V
    .locals 3
    .param p0, "block"    # I

    .line 665
    if-ltz p0, :cond_0

    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    .line 668
    return-void

    .line 666
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "block out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateSector(I)V
    .locals 3
    .param p0, "sector"    # I

    .line 658
    if-ltz p0, :cond_0

    const/16 v0, 0x28

    if-ge p0, v0, :cond_0

    .line 661
    return-void

    .line 659
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sector out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateValueOperand(I)V
    .locals 2
    .param p0, "value"    # I

    .line 671
    if-ltz p0, :cond_0

    .line 674
    return-void

    .line 672
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value operand negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public authenticateSectorWithKeyA(I[B)Z
    .locals 1
    .param p1, "sectorIndex"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    move-result v0

    return v0
.end method

.method public authenticateSectorWithKeyB(I[B)Z
    .locals 1
    .param p1, "sectorIndex"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    move-result v0

    return v0
.end method

.method public blockToSector(I)I
    .locals 2
    .param p1, "blockIndex"    # I

    .line 313
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 315
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 316
    div-int/lit8 v0, p1, 0x4

    return v0

    .line 318
    :cond_0
    const/16 v0, 0x20

    add-int/lit8 v1, p1, -0x80

    div-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public decrement(II)V
    .locals 3
    .param p1, "blockIndex"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 523
    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    .line 524
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 526
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 527
    .local v0, "cmd":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 528
    const/16 v1, -0x40

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 529
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 530
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 532
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    .line 533
    return-void
.end method

.method public getBlockCount()I
    .locals 1

    .line 285
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    div-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getBlockCountInSector(I)I
    .locals 1
    .param p1, "sectorIndex"    # I

    .line 296
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    .line 298
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 299
    const/4 v0, 0x4

    return v0

    .line 301
    :cond_0
    const/16 v0, 0x10

    return v0
.end method

.method public getMaxTransceiveLength()I
    .locals 1

    .line 606
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public getSectorCount()I
    .locals 2

    .line 265
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    const/16 v1, 0x140

    if-eq v0, v1, :cond_3

    const/16 v1, 0x400

    if-eq v0, v1, :cond_2

    const/16 v1, 0x800

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    .line 275
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_0
    const/16 v0, 0x28

    return v0

    .line 269
    :cond_1
    const/16 v0, 0x20

    return v0

    .line 267
    :cond_2
    const/16 v0, 0x10

    return v0

    .line 273
    :cond_3
    const/4 v0, 0x5

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 246
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    return v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    .line 91
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 3

    .line 643
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/MifareClassic;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/nfc/INfcTag;->getTimeout(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    const/4 v1, 0x0

    return v1
.end method

.method public getType()I
    .locals 1

    .line 235
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    return v0
.end method

.method public increment(II)V
    .locals 3
    .param p1, "blockIndex"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 495
    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    .line 496
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 498
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 499
    .local v0, "cmd":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 500
    const/16 v1, -0x3f

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 501
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 502
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 504
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    .line 505
    return-void
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    .line 91
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isEmulated()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    return v0
.end method

.method public readBlock(I)[B
    .locals 4
    .param p1, "blockIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 444
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 446
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    int-to-byte v2, p1

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 447
    .local v0, "cmd":[B
    invoke-virtual {p0, v0, v1}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic reconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public restore(I)V
    .locals 4
    .param p1, "blockIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 572
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 574
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    int-to-byte v2, p1

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 576
    .local v0, "cmd":[B
    invoke-virtual {p0, v0, v1}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    .line 577
    return-void
.end method

.method public sectorToBlock(I)I
    .locals 2
    .param p1, "sectorIndex"    # I

    .line 330
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 331
    mul-int/lit8 v0, p1, 0x4

    return v0

    .line 333
    :cond_0
    const/16 v0, 0x80

    add-int/lit8 v1, p1, -0x20

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    return v0
.end method

.method public setTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I

    .line 625
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/MifareClassic;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    move-result v0

    .line 626
    .local v0, "err":I
    if-nez v0, :cond_0

    .line 631
    .end local v0    # "err":I
    goto :goto_0

    .line 627
    .restart local v0    # "err":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The supplied timeout is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .end local v0    # "err":I
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public transceive([B)[B
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public transfer(I)V
    .locals 4
    .param p1, "blockIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 550
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 552
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    int-to-byte v2, p1

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 554
    .local v0, "cmd":[B
    invoke-virtual {p0, v0, v1}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    .line 555
    return-void
.end method

.method public writeBlock(I[B)V
    .locals 5
    .param p1, "blockIndex"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 466
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 467
    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 471
    array-length v0, p2

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 472
    .local v0, "cmd":[B
    const/16 v2, -0x60

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 473
    const/4 v2, 0x1

    int-to-byte v4, p1

    aput-byte v4, v0, v2

    .line 474
    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 476
    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    .line 477
    return-void

    .line 468
    .end local v0    # "cmd":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "must write 16-bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
