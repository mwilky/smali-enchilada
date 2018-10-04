.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final INVALID_VALIDITY_PERIOD:I = -0x1

.field static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final VALIDITY_PERIOD_FORMAT_ABSOLUTE:I = 0x3

.field private static final VALIDITY_PERIOD_FORMAT_ENHANCED:I = 0x1

.field private static final VALIDITY_PERIOD_FORMAT_NONE:I = 0x0

.field private static final VALIDITY_PERIOD_FORMAT_RELATIVE:I = 0x2

.field private static final VALIDITY_PERIOD_MAX:I = 0x9b0a0

.field private static final VALIDITY_PERIOD_MIN:I = 0x5

.field private static final VDBG:Z = false


# instance fields
.field private mDataCodingScheme:I

.field private mIsStatusReportMessage:Z

.field private mMti:I

.field private mProtocolIdentifier:I

.field private mReplyPathPresent:Z

.field private mStatus:I

.field private mVoiceMailCount:I

.field private messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p0

    :cond_1
    invoke-static {v0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    return-object v3

    :cond_2
    return-object v2
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    iput p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIndexOnIcc:I

    const/4 v2, 0x0

    aget-byte v3, p1, v2

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    const-string v2, "SmsMessage"

    const-string v3, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0x7

    iput v3, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatusOnIcc:I

    array-length v3, p1

    sub-int/2addr v3, v4

    new-array v5, v3, [B

    invoke-static {p1, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "SmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "SmsMessage"

    const-string v3, "SMS PDU parsing failed with out of memory: "

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "SmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "utf-16be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    array-length v3, p1

    array-length v4, v0

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    new-array v3, v3, [B

    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    array-length v4, p1

    invoke-static {p1, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v4, p1

    add-int/2addr v4, v2

    array-length v5, v0

    invoke-static {v0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    array-length v4, v3

    add-int/2addr v4, v2

    new-array v4, v4, [B

    array-length v5, v3

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    array-length v5, v3

    invoke-static {v3, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v4
.end method

.method public static getRelativeValidityPeriod(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x5

    if-lt p0, v1, :cond_5

    const v1, 0x9b0a0

    if-le p0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x2d0

    if-gt p0, v2, :cond_1

    div-int/lit8 v1, p0, 0x5

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x5a0

    if-gt p0, v2, :cond_2

    add-int/lit16 v1, p0, -0x2d0

    div-int/lit8 v1, v1, 0x1e

    add-int/lit16 v0, v1, 0x8f

    goto :goto_0

    :cond_2
    const v2, 0xa8c0

    if-gt p0, v2, :cond_3

    div-int/lit16 v1, p0, 0x5a0

    add-int/lit16 v0, v1, 0xa6

    goto :goto_0

    :cond_3
    if-gt p0, v1, :cond_4

    div-int/lit16 v1, p0, 0x2760

    add-int/lit16 v0, v1, 0xc0

    :cond_4
    :goto_0
    return v0

    :cond_5
    :goto_1
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Validity Period"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8

    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    iput-boolean v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    array-length v4, p3

    array-length v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x8c

    if-le v4, v5, :cond_0

    const-string v1, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS data message may only contain "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p4, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v4

    :cond_1
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v6, p3

    array-length v7, v3

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v6, v3

    invoke-virtual {v5, v3, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length v6, p3

    invoke-virtual {v5, p3, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v4
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 9

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v2, :cond_f

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p5, :cond_6

    invoke-static {v2, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v6

    iget v0, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    iget v7, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-ne v0, v4, :cond_5

    if-nez v7, :cond_1

    if-eqz v8, :cond_5

    :cond_1
    if-eqz p4, :cond_4

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v10

    iget v11, v10, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-ne v11, v7, :cond_3

    iget v11, v10, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eq v11, v8, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v9, p4

    goto :goto_1

    :cond_3
    :goto_0
    const-string v11, "SmsMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Updating language table in SMS header: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " -> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " -> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, v10, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iput v8, v10, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-static {v10}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    :goto_1
    goto :goto_2

    :cond_4
    new-instance v10, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v10}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput v7, v10, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iput v8, v10, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-static {v10}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v6

    move-object v9, v6

    goto :goto_2

    :cond_5
    move-object/from16 v9, p4

    :goto_2
    move v6, v0

    goto :goto_3

    :cond_6
    move-object/from16 v9, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    :goto_3
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    move-object v10, v0

    const/4 v0, 0x0

    const/4 v11, -0x1

    invoke-static/range {p8 .. p8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getRelativeValidityPeriod(I)I

    move-result v12

    move v11, v12

    if-ltz v12, :cond_7

    const/4 v0, 0x2

    :cond_7
    move v12, v0

    shl-int/lit8 v0, v12, 0x3

    or-int/2addr v0, v4

    if-eqz v9, :cond_8

    const/16 v13, 0x40

    goto :goto_4

    :cond_8
    move v13, v5

    :goto_4
    or-int/2addr v0, v13

    int-to-byte v13, v0

    move-object/from16 v14, p0

    move/from16 v15, p3

    invoke-static {v14, v1, v13, v15, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v5

    if-nez v5, :cond_9

    return-object v10

    :cond_9
    if-ne v6, v4, :cond_a

    :try_start_0
    invoke-static {v2, v9, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_a
    :try_start_1
    invoke-static {v2, v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :goto_5
    nop

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v17, v0

    :try_start_2
    const-string v4, "SmsMessage"

    const-string v3, "Implausible UnsupportedEncodingException "

    invoke-static {v4, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x0

    return-object v3

    :goto_6
    move-object v3, v0

    :try_start_3
    invoke-static {v2, v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v6, 0x3

    nop

    :goto_7
    nop

    const/16 v3, 0xff

    const/4 v4, 0x1

    if-ne v6, v4, :cond_c

    const/4 v4, 0x0

    aget-byte v16, v0, v4

    and-int v4, v3, v16

    const/16 v3, 0xa0

    if-le v4, v3, :cond_b

    const-string v3, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message too long ("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/16 v16, 0xff

    and-int v1, v16, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " septets)"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_b
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    const/16 v4, 0x8c

    if-le v3, v4, :cond_d

    const-string v3, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message too long ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v0, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes)"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_d
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_8
    const/4 v1, 0x2

    if-ne v12, v1, :cond_e

    invoke-virtual {v5, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_e
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v10, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v10

    :catch_2
    move-exception v0

    move-object v1, v0

    const-string v1, "SmsMessage"

    const-string v2, "Implausible UnsupportedEncodingException "

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1

    :cond_f
    :goto_9
    move-object/from16 v14, p0

    move/from16 v15, p3

    const/4 v1, 0x0

    return-object v1
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xb4

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    iput-object v1, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    :goto_0
    if-eqz p3, :cond_1

    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    :cond_1
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    :cond_2
    array-length v1, v3

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x2

    array-length v5, v3

    sub-int/2addr v5, v4

    aget-byte v5, v3, v5

    const/16 v6, 0xf0

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v1, v3

    invoke-virtual {v0, v3, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-object v0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method public static newFromCDS([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SmsMessage"

    const-string v2, "CDS SMS PDU parsing failed: "

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static newFromCMT([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SmsMessage"

    const-string v2, "SMS PDU parsing failed: "

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private parsePdu([B)V
    .locals 4

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 5

    and-int/lit16 v0, p2, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x80

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    and-int/lit8 v0, p2, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_1

    move v1, v2

    nop

    :cond_1
    move v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    return-void
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    move v2, v1

    :goto_0
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_0

    :cond_0
    and-int/lit8 v3, v1, 0x78

    if-nez v3, :cond_4

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    :cond_1
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    :cond_2
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_4

    and-int/lit8 v3, p2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    :cond_4
    return-void
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6

    and-int/lit16 v0, p2, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x80

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/4 v0, 0x0

    shr-int/lit8 v3, p2, 0x3

    and-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v4, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move v0, v4

    goto :goto_1

    :cond_3
    and-int/lit8 v0, p2, 0x40

    const/16 v5, 0x40

    if-ne v0, v5, :cond_4

    move v1, v2

    nop

    :cond_4
    move v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    return-void
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v7, 0x80

    and-int/2addr v6, v7

    const/16 v8, 0xd0

    const v9, 0x11200a8

    const/16 v10, 0xe0

    const/16 v11, 0xf0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v6, :cond_4

    iget v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_0

    move v6, v13

    goto :goto_0

    :cond_0
    move v6, v12

    :goto_0
    move v4, v6

    iget v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_1

    move v6, v13

    goto :goto_1

    :cond_1
    move v6, v12

    :goto_1
    move v3, v6

    if-eqz v4, :cond_2

    const-string v6, "SmsMessage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_2
    iget v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v5, 0x3

    goto :goto_2

    :pswitch_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    :cond_3
    :pswitch_2
    const-string v6, "SmsMessage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto :goto_2

    :pswitch_3
    const/4 v5, 0x1

    nop

    :goto_2
    goto/16 :goto_9

    :cond_4
    iget v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v11

    if-ne v6, v11, :cond_6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_5

    const/4 v5, 0x1

    goto/16 :goto_9

    :cond_5
    const/4 v5, 0x2

    goto/16 :goto_9

    :cond_6
    iget v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v11

    const/16 v14, 0xc0

    if-eq v6, v14, :cond_a

    iget v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v11

    if-eq v6, v8, :cond_a

    iget v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v11

    if-ne v6, v10, :cond_7

    goto :goto_3

    :cond_7
    iget v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v14

    if-ne v6, v7, :cond_9

    iget v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v14, 0x84

    if-ne v6, v14, :cond_8

    const/4 v5, 0x4

    goto/16 :goto_9

    :cond_8
    const-string v6, "SmsMessage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_9
    const-string v6, "SmsMessage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_a
    :goto_3
    iget v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v11

    if-ne v6, v10, :cond_b

    const/4 v5, 0x3

    goto :goto_4

    :cond_b
    const/4 v5, 0x1

    :goto_4
    const/4 v4, 0x0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v15, 0x8

    and-int/2addr v6, v15

    if-ne v6, v15, :cond_c

    move v6, v13

    goto :goto_5

    :cond_c
    move v6, v12

    :goto_5
    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v15, v15, 0x3

    if-nez v15, :cond_f

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    iput-boolean v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v15, v11

    if-ne v15, v14, :cond_d

    move v14, v13

    goto :goto_6

    :cond_d
    move v14, v12

    :goto_6
    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-ne v6, v13, :cond_e

    const/4 v14, -0x1

    iput v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_7

    :cond_e
    iput v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    :goto_7
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MWI in DCS for Vmail. DCS = "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Dont store = "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " vmail count = "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_f
    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const-string v9, "SmsMessage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MWI in DCS for fax/email/other: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    nop

    :goto_9
    if-ne v5, v13, :cond_10

    move v6, v13

    goto :goto_a

    :cond_10
    move v6, v12

    :goto_a
    invoke-virtual {v1, v2, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v9

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserData:[B

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v2, :cond_19

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_19

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    iget v15, v14, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v15, v15, 0xff

    if-eqz v15, :cond_12

    if-ne v15, v7, :cond_11

    goto :goto_c

    :cond_11
    const-string v10, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, 0xd0

    goto :goto_10

    :cond_12
    :goto_c
    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-ne v15, v7, :cond_14

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    :cond_13
    const/16 v7, 0xe0

    const/16 v10, 0xf0

    const/16 v11, 0xd0

    goto :goto_e

    :cond_14
    iget-boolean v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-nez v8, :cond_13

    iget v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v10, 0xf0

    and-int/2addr v8, v10

    const/16 v11, 0xd0

    if-eq v8, v11, :cond_15

    iget v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v8, v10

    const/16 v7, 0xe0

    if-ne v8, v7, :cond_16

    goto :goto_d

    :cond_15
    const/16 v7, 0xe0

    :goto_d
    iget v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v8, v8, 0x3

    if-eqz v8, :cond_17

    :cond_16
    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    :cond_17
    :goto_e
    iget v8, v14, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v8, v8, 0xff

    iput v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    iget v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    if-lez v8, :cond_18

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    goto :goto_f

    :cond_18
    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    :goto_f
    const-string v8, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MWI in TP-UDH for Vmail. Msg Ind = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " Dont store = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " Vmail count = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    nop

    move v8, v11

    const/16 v7, 0x80

    const/16 v10, 0xe0

    const/16 v11, 0xf0

    goto/16 :goto_b

    :cond_19
    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_1

    goto :goto_12

    :pswitch_4
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_12

    :pswitch_5
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_12

    :pswitch_6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x11200a8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8bit(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_12

    :cond_1a
    iput-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_12

    :pswitch_7
    nop

    if-eqz v2, :cond_1b

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto :goto_11

    :cond_1b
    move v7, v12

    :goto_11
    if-eqz v2, :cond_1c

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    nop

    :cond_1c
    invoke-virtual {v1, v6, v7, v12}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_12

    :pswitch_8
    iput-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    nop

    :goto_12
    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v7, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    :cond_1d
    if-nez v3, :cond_1e

    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_13

    :cond_1e
    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_2

    goto :goto_13

    :pswitch_9
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_13

    :pswitch_a
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_13

    :pswitch_b
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_13

    :pswitch_c
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    nop

    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method getDataCodingScheme()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    return v0
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public getNumOfVoicemails()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    :goto_0
    const-string v0, "SmsMessage"

    const-string v1, "CPHS voice mail message"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMWISetMessage()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMwiDontStore()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isReplace()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUsimDataDownload()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
