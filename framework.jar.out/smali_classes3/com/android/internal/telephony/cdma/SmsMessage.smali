.class public Lcom/android/internal/telephony/cdma/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final BEARER_DATA:B = 0x8t

.field private static final BEARER_REPLY_OPTION:B = 0x6t

.field private static final CAUSE_CODES:B = 0x7t

.field private static final DESTINATION_ADDRESS:B = 0x4t

.field private static final DESTINATION_SUB_ADDRESS:B = 0x5t

.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final ORIGINATING_ADDRESS:B = 0x2t

.field private static final ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static final PRIORITY_EMERGENCY:I = 0x3

.field private static final PRIORITY_INTERACTIVE:I = 0x1

.field private static final PRIORITY_NORMAL:I = 0x0

.field private static final PRIORITY_URGENT:I = 0x2

.field private static final RETURN_ACK:I = 0x1

.field private static final RETURN_NO_ACK:I = 0x0

.field private static final SERVICE_CATEGORY:B = 0x1t

.field private static final TELESERVICE_IDENTIFIER:B = 0x0t

.field private static final VDBG:Z = false


# instance fields
.field private mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

.field private mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/SmsAddress;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 3

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
    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    return-object v2
.end method

.method public static convertDtmfToAscii(B)B
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x20

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x43

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x42

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x41

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x23

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x2a

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x30

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x39

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x38

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x37

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x36

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x35

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x34

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x33

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x32

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x31

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x44

    :goto_0
    nop

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    iput p0, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mIndexOnIcc:I

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

    iput v3, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mStatusOnIcc:I

    aget-byte v3, p1, v4

    and-int/lit16 v3, v3, 0xff

    new-array v4, v3, [B

    const/4 v5, 0x2

    invoke-static {p1, v5, v4, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePduFromEfRecord([B)V
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

.method public static createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 5

    new-instance v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "SmsMessage"

    const-string v4, "SMS PDU parsing failed with out of memory: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_1
    move-exception v2

    const-string v3, "SmsMessage"

    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static declared-synchronized getNextMessageId()I
    .locals 7

    const-class v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    monitor-enter v0

    :try_start_0
    const-string v1, "persist.radio.cdma.msgid"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const v3, 0xffff

    rem-int v3, v1, v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "persist.radio.cdma.msgid"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CDMA:SMS"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next persist.radio.cdma.msgid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readback gets "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "persist.radio.cdma.msgid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set nextMessage ID failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1

    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1

    invoke-static {p0, p2, p1, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 4

    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    iput-boolean v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput-object v2, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput v1, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    iput-object p3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {p1, p4, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {p1, p3, v0, p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2

    const-string v0, "SmsMessage"

    const-string v1, "getTPLayerLengthForPDU: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private parsePdu([B)V
    .locals 10

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    new-instance v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    array-length v6, p1

    if-gt v5, v6, :cond_1

    new-array v6, v5, [B

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v6, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v5}, Ljava/io/DataInputStream;->read([BII)I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput-byte v6, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput-byte v6, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput-byte v6, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    array-length v8, p1

    if-gt v6, v8, :cond_0

    new-array v8, v6, [B

    iput-object v8, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v8, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-virtual {v1, v8, v7, v6}, Ljava/io/DataInputStream;->read([BII)I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: Invalid pdu, bearerDataLength "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " > pdu len "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createFromPdu: Invalid pdu, addr.numberOfDigits "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " > pdu len "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v5

    const-string v6, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v4, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    return-void

    :catch_1
    move-exception v5

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private parsePduFromEfRecord([B)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v3, v0

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    move-object v5, v0

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    move-object v6, v0

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    move-object v7, v0

    :try_start_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    :goto_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v8

    new-array v9, v8, [B

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x6

    const/16 v15, 0x8

    const/4 v10, 0x1

    const/4 v14, 0x0

    packed-switch v0, :pswitch_data_0

    move/from16 v18, v8

    new-instance v8, Ljava/lang/Exception;

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {v4, v9, v14, v8}, Ljava/io/DataInputStream;->read([BII)I

    iput-object v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    goto/16 :goto_5

    :pswitch_1
    invoke-virtual {v4, v9, v14, v8}, Ljava/io/DataInputStream;->read([BII)I

    new-instance v10, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v10, v9}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    invoke-virtual {v10, v13}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v11

    aget-byte v11, v11, v14

    iput-byte v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v10, v12}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v11

    aget-byte v11, v11, v14

    iput-byte v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    iget-byte v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    if-eqz v11, :cond_8

    invoke-virtual {v10, v15}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v11

    aget-byte v11, v11, v14

    iput-byte v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    goto/16 :goto_5

    :pswitch_2
    invoke-virtual {v4, v9, v14, v8}, Ljava/io/DataInputStream;->read([BII)I

    new-instance v10, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v10, v9}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    invoke-virtual {v10, v13}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    iput v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {v4, v9, v14, v8}, Ljava/io/DataInputStream;->read([BII)I

    new-instance v12, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v12, v9}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    invoke-virtual {v12, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    iput v11, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    invoke-virtual {v12, v10}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v10

    aget-byte v10, v10, v14

    iput-byte v10, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    invoke-virtual {v12, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    new-array v11, v10, [B

    nop

    :goto_1
    move v13, v14

    if-ge v13, v10, :cond_0

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v15

    const/16 v14, 0xff

    and-int/2addr v15, v14

    int-to-byte v14, v15

    invoke-static {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v15

    aput-byte v15, v11, v13

    add-int/lit8 v13, v13, 0x1

    move v14, v13

    goto :goto_1

    :cond_0
    iput-object v11, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    goto/16 :goto_5

    :pswitch_4
    invoke-virtual {v4, v9, v14, v8}, Ljava/io/DataInputStream;->read([BII)I

    new-instance v13, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v13, v9}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    invoke-virtual {v13, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    iput v14, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v13, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    iput v14, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    const/4 v14, 0x0

    iget v12, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v12, v10, :cond_1

    invoke-virtual {v13, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    move v14, v11

    iput v14, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    iget v11, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-nez v11, :cond_1

    const/4 v11, 0x4

    invoke-virtual {v13, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    iput v12, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    :cond_1
    invoke-virtual {v13, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    iput v11, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    iget v11, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    new-array v11, v11, [B

    const/4 v12, 0x0

    iget v15, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-nez v15, :cond_2

    const/16 v17, 0x0

    :goto_2
    move/from16 v10, v17

    iget v15, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v10, v15, :cond_7

    const/4 v15, 0x4

    invoke-virtual {v13, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v16

    const/16 v15, 0xf

    and-int v15, v15, v16

    int-to-byte v12, v15

    invoke-static {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v15

    aput-byte v15, v11, v10

    add-int/lit8 v17, v10, 0x1

    goto :goto_2

    :cond_2
    iget v15, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v15, v10, :cond_6

    iget v15, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-nez v15, :cond_3

    const/16 v17, 0x0

    :goto_3
    move/from16 v10, v17

    iget v15, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v10, v15, :cond_7

    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v17

    const/16 v16, 0xff

    and-int v15, v16, v17

    int-to-byte v12, v15

    aput-byte v12, v11, v10

    add-int/lit8 v17, v10, 0x1

    goto :goto_3

    :cond_3
    iget v15, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-ne v15, v10, :cond_5

    const/4 v10, 0x2

    if-ne v14, v10, :cond_4

    const-string v10, "SmsMessage"

    const-string v15, "TODO: Originating Addr is email id"

    invoke-static {v10, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    const-string v10, "SmsMessage"

    const-string v15, "TODO: Originating Addr is data network address"

    invoke-static {v10, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    const-string v10, "SmsMessage"

    const-string v15, "Originating Addr is of incorrect type"

    invoke-static {v10, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    const-string v10, "SmsMessage"

    const-string v15, "Incorrect Digit mode"

    invoke-static {v10, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    iput-object v11, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const-string v10, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v8

    const-string v8, "Originating Addr="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x4

    if-ne v0, v8, :cond_8

    iput-object v6, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v6, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    goto :goto_5

    :pswitch_5
    move/from16 v18, v8

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    iput v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    goto :goto_5

    :pswitch_6
    move/from16 v18, v8

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    iput v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const-string v8, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "teleservice = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_8
    :goto_5
    goto/16 :goto_0

    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported parameterId ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_9
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    const-string v8, "SmsMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parsePduFromEfRecord: conversion from pdu to SmsMessage failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iput-object v6, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v6, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v7, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iput-object v5, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 11

    nop

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput-boolean p1, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    const/4 v5, 0x1

    if-ltz p3, :cond_1

    const/4 v6, 0x3

    if-gt p3, v6, :cond_1

    iput-boolean v5, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    iput p3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    :cond_1
    iput-object p2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v6

    const-string v7, "CDMA:SMS"

    invoke-static {v7, v3}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MO (encoded) BearerData = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MO raw BearerData = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v6, :cond_3

    return-object v1

    :cond_3
    iget-boolean v7, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v7, :cond_4

    iget v7, p2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v7, v3, :cond_4

    const/16 v3, 0x1005

    goto :goto_0

    :cond_4
    const/16 v3, 0x1002

    :goto_0
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    iput v4, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    iput v3, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    iput-object v0, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput v5, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    iput-object v6, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x64

    invoke-direct {v5, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v9, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v10, v10

    invoke-virtual {v8, v9, v4, v10}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write(I)V

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    array-length v9, v6

    invoke-virtual {v8, v6, v4, v9}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    iput-object v1, v4, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v4

    const-string v5, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "creating SubmitPdu failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method public createPdu()V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/DataOutputStream;->write([BII)V

    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-byte v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPdu: conversion from object to byte array failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getIncomingSmsFingerprint()[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNumOfVoicemails()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 2

    const-string v0, "SmsMessage"

    const-string v1, "getProtocolIdentifier: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSmsCbProgramData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getTeleService()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 2

    const-string v0, "SmsMessage"

    const-string v1, "isCphsMwiMessage: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMWISetMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMwiDontStore()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReplace()Z
    .locals 2

    const-string v0, "SmsMessage"

    const-string v1, "isReplace: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 2

    const-string v0, "SmsMessage"

    const-string v1, "isReplyPathPresent: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parseBroadcastSms()Landroid/telephony/SmsCbMessage;
    .locals 14

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "SmsMessage"

    const-string v2, "BearerData.decode() returned null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const-string v1, "CDMA:SMS"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MT raw BearerData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Landroid/telephony/SmsCbLocation;

    invoke-direct {v6, v1}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    new-instance v13, Landroid/telephony/SmsCbMessage;

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v7, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguage()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    return-object v13
.end method

.method public parseSms()V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/4 v1, 0x0

    const/high16 v2, 0x40000

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    const/16 v2, 0xff

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    aget-byte v1, v3, v1

    and-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    const-string v0, "CDMA:SMS"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SmsMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MT raw BearerData = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SmsMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MT (decoded) BearerData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v5, v5, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget v0, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2b

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v5, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScTimeMillis:J

    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-nez v0, :cond_7

    const-string v0, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELIVERY_ACK message without msgStatus ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    if-nez v3, :cond_6

    const-string v3, "also missing"

    goto :goto_0

    :cond_6
    const-string v3, "does have"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userData)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-eq v0, v3, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-ne v0, v2, :cond_9

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseMessageBody()V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    :goto_2
    return-void
.end method

.method protected processCdmaCTWdpHeader(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :try_start_0
    new-instance v5, Lcom/android/internal/util/BitwiseInputStream;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    move v0, v7

    if-eqz v0, :cond_0

    const-string v6, "SmsMessage"

    const-string v7, "Invalid WDP SubparameterId"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {v5, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    move v1, v7

    const/4 v7, 0x3

    if-eq v1, v7, :cond_1

    const-string v6, "SmsMessage"

    const-string v7, "Invalid WDP subparameter length"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v8, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v5, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    shl-int/lit8 v2, v8, 0x8

    invoke-virtual {v5, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    or-int/2addr v2, v8

    iget-object v8, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    if-ne v10, v9, :cond_2

    goto :goto_0

    :cond_2
    move v9, v3

    :goto_0
    iput-boolean v9, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    iget-object v8, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v8, :cond_3

    const-string v6, "SmsMessage"

    const-string v7, "Invalid WDP UserData header value"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    invoke-virtual {v5, v7}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    iget-object v7, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iput v2, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput v2, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual {v5, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    move v0, v7

    invoke-virtual {v5, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    mul-int/lit8 v1, v7, 0x8

    iget-object v7, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v7, 0x5

    iget-object v8, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v8, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v8, :cond_4

    const-string v6, "SmsMessage"

    const-string v8, "Invalid WDP encoding"

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v5, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    add-int/2addr v7, v6

    sub-int v3, v1, v7

    iget-object v8, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v8, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/2addr v6, v8

    if-ge v6, v3, :cond_5

    move v8, v6

    goto :goto_1

    :cond_5
    move v8, v3

    :goto_1
    move v6, v8

    iget-object v8, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v5, v6}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v8, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v8, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v5, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CT WDP Header decode failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v4
.end method
