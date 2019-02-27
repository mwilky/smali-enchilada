.class public Lcom/android/internal/telephony/gsm/GsmSmsAddress;
.super Lcom/android/internal/telephony/SmsAddress;
.source "GsmSmsAddress.java"


# static fields
.field static final OFFSET_ADDRESS_LENGTH:I = 0x0

.field static final OFFSET_ADDRESS_VALUE:I = 0x2

.field static final OFFSET_TOA:I = 0x1


# direct methods
.method public constructor <init>([BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsAddress;-><init>()V

    new-array v0, p3, [B

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v3, v1, 0x4

    const/4 v4, 0x7

    and-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    and-int/lit16 v3, v1, 0x80

    const/16 v5, 0x80

    if-ne v3, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    mul-int/lit8 v2, v0, 0x4

    div-int/2addr v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    invoke-static {v3, v5, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v4, p3, -0x1

    aget-byte v3, v3, v4

    and-int/lit8 v4, v0, 0x1

    if-ne v4, v2, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v6, p3, -0x1

    aget-byte v7, v4, v6

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v6, p3, -0x1

    invoke-static {v4, v2, v6, v5}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v4, p3, -0x1

    aput-byte v3, v2, v4

    :goto_0
    return-void

    :cond_2
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid TOA - high bit must be set. toa = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method


# virtual methods
.method public getAddressString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public isAlphanumeric()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCphsVoiceMessageClear()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCphsVoiceMessageIndicatorAddress()Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1
.end method

.method public isCphsVoiceMessageSet()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNetworkSpecific()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
