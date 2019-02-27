.class public Lcom/android/internal/telephony/SmsHeader;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsHeader$MiscElt;,
        Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;,
        Lcom/android/internal/telephony/SmsHeader$ConcatRef;,
        Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    }
.end annotation


# static fields
.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_16_BIT:I = 0x5

.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_8_BIT:I = 0x4

.field public static final ELT_ID_CHARACTER_SIZE_WVG_OBJECT:I = 0x19

.field public static final ELT_ID_COMPRESSION_CONTROL:I = 0x16

.field public static final ELT_ID_CONCATENATED_16_BIT_REFERENCE:I = 0x8

.field public static final ELT_ID_CONCATENATED_8_BIT_REFERENCE:I = 0x0

.field public static final ELT_ID_ENHANCED_VOICE_MAIL_INFORMATION:I = 0x23

.field public static final ELT_ID_EXTENDED_OBJECT:I = 0x14

.field public static final ELT_ID_EXTENDED_OBJECT_DATA_REQUEST_CMD:I = 0x1a

.field public static final ELT_ID_HYPERLINK_FORMAT_ELEMENT:I = 0x21

.field public static final ELT_ID_LARGE_ANIMATION:I = 0xe

.field public static final ELT_ID_LARGE_PICTURE:I = 0x10

.field public static final ELT_ID_NATIONAL_LANGUAGE_LOCKING_SHIFT:I = 0x25

.field public static final ELT_ID_NATIONAL_LANGUAGE_SINGLE_SHIFT:I = 0x24

.field public static final ELT_ID_OBJECT_DISTR_INDICATOR:I = 0x17

.field public static final ELT_ID_PREDEFINED_ANIMATION:I = 0xd

.field public static final ELT_ID_PREDEFINED_SOUND:I = 0xb

.field public static final ELT_ID_REPLY_ADDRESS_ELEMENT:I = 0x22

.field public static final ELT_ID_REUSED_EXTENDED_OBJECT:I = 0x15

.field public static final ELT_ID_RFC_822_EMAIL_HEADER:I = 0x20

.field public static final ELT_ID_SMALL_ANIMATION:I = 0xf

.field public static final ELT_ID_SMALL_PICTURE:I = 0x11

.field public static final ELT_ID_SMSC_CONTROL_PARAMS:I = 0x6

.field public static final ELT_ID_SPECIAL_SMS_MESSAGE_INDICATION:I = 0x1

.field public static final ELT_ID_STANDARD_WVG_OBJECT:I = 0x18

.field public static final ELT_ID_TEXT_FORMATTING:I = 0xa

.field public static final ELT_ID_UDH_SOURCE_INDICATION:I = 0x7

.field public static final ELT_ID_USER_DEFINED_SOUND:I = 0xc

.field public static final ELT_ID_USER_PROMPT_INDICATOR:I = 0x13

.field public static final ELT_ID_VARIABLE_PICTURE:I = 0x12

.field public static final ELT_ID_WIRELESS_CTRL_MSG_PROTOCOL:I = 0x9

.field public static final PORT_WAP_PUSH:I = 0xb84

.field public static final PORT_WAP_WSP:I = 0x23f0


# instance fields
.field public concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

.field public languageShiftTable:I

.field public languageTable:I

.field public miscEltList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SmsHeader$MiscElt;",
            ">;"
        }
    .end annotation
.end field

.field public portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

.field public specialSmsMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    return-void
.end method

.method public static fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;
    .locals 8

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_0

    new-instance v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    iput v2, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    new-array v6, v3, [B

    iput-object v6, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    iget-object v6, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-virtual {v0, v6, v5, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    iget-object v5, v1, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    goto/16 :goto_1

    :sswitch_2
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iput-boolean v5, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    iget v5, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v6, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v5, v6, :cond_0

    iput-object v4, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto/16 :goto_1

    :sswitch_3
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    iput-boolean v5, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    iput-object v4, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    goto :goto_1

    :sswitch_4
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    iput-boolean v4, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    iput-object v5, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    goto :goto_1

    :sswitch_5
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;-><init>()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    iget-object v5, v1, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_6
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iput-boolean v4, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    iget v4, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v4, :cond_0

    iget v4, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v4, :cond_0

    iget v4, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v6, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v4, v6, :cond_0

    iput-object v5, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    :cond_0
    :goto_1
    goto/16 :goto_0

    :cond_1
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_5
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x8 -> :sswitch_2
        0x24 -> :sswitch_1
        0x25 -> :sswitch_0
    .end sparse-switch
.end method

.method public static toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B
    .locals 9

    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x8c

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-eqz v1, :cond_2

    iget-boolean v5, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v5, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v5, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    ushr-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v5, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    iget v5, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v5, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    const/4 v6, 0x2

    if-eqz v5, :cond_4

    iget-boolean v7, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    if-eqz v7, :cond_3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v3, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v3, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_3
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v3, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    ushr-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v3, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v3, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    ushr-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v3, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_4
    :goto_1
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    const/16 v3, 0x24

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_5
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v3, :cond_6

    const/16 v3, 0x25

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v8, v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v8, v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    iget v6, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v6, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v6, v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v6, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    iget-object v7, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v7, v7

    invoke-virtual {v0, v6, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserDataHeader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{ ConcatRef "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v1, :cond_0

    const-string v1, "unset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ refNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", seqNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", isEightBits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-boolean v2, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", PortAddrs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v1, :cond_1

    const-string v1, "unset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ destPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", origPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", areEightBits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget-boolean v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", languageShiftTable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", languageTable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    const-string v3, ", SpecialSmsMsg "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{ msgIndType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", msgCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    const-string v3, ", MiscElt "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{ id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
