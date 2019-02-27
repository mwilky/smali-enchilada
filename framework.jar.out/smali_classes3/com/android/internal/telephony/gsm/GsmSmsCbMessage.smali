.class public Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;
.super Ljava/lang/Object;
.source "GsmSmsCbMessage.java"


# static fields
.field private static final CARRIAGE_RETURN:C = '\r'

.field private static final LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

.field private static final LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

.field private static final PDU_BODY_PAGE_LENGTH:I = 0x52


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "de"

    const-string v1, "en"

    const-string v2, "it"

    const-string v3, "fr"

    const-string v4, "es"

    const-string v5, "nl"

    const-string v6, "sv"

    const-string v7, "da"

    const-string v8, "pt"

    const-string v9, "fi"

    const-string v10, "no"

    const-string v11, "el"

    const-string v12, "tr"

    const-string v13, "hu"

    const-string v14, "pl"

    const/4 v15, 0x0

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    const-string v1, "cs"

    const-string v2, "he"

    const-string v3, "ar"

    const-string v4, "ru"

    const-string v5, "is"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSmsCbMessage(Landroid/content/Context;Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPrimaryNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/telephony/SmsCbMessage;

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    move-result v2

    move-object/from16 v13, p0

    invoke-static {v13, v2}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->getEtwsPrimaryMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v12

    move-object v2, v1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v12}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    return-object v1

    :cond_0
    move-object/from16 v13, p0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    move v1, v4

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v6, v0, v1

    move-object/from16 v7, p1

    invoke-static {v7, v6}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->parseBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;

    move-result-object v8

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v9

    check-cast v5, Ljava/lang/String;

    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x3

    :goto_1
    move/from16 v22, v4

    goto :goto_2

    :cond_2
    goto :goto_1

    :goto_2
    new-instance v1, Landroid/telephony/SmsCbMessage;

    const/4 v15, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v19

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v24

    move-object v14, v1

    move-object/from16 v18, p2

    move-object/from16 v20, v5

    invoke-direct/range {v14 .. v24}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    return-object v1
.end method

.method private static getEtwsPrimaryMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const-string v1, ""

    return-object v1

    :pswitch_0
    const v1, 0x10401f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_1
    const v1, 0x10401f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_2
    const v1, 0x10401f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_3
    const v1, 0x10401f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_4
    const v1, 0x10401ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SmsCbHeader;",
            "[B)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getDataCodingScheme()I

    move-result v9

    and-int/lit16 v2, v9, 0xf0

    shr-int/lit8 v2, v2, 0x4

    const/16 v3, 0x9

    if-eq v2, v3, :cond_6

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    move v10, v1

    move v1, v3

    goto :goto_2

    :pswitch_0
    and-int/lit8 v2, v9, 0x4

    shr-int/lit8 v2, v2, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_1
    and-int/lit8 v2, v9, 0xc

    shr-int/lit8 v2, v2, 0x2

    packed-switch v2, :pswitch_data_2

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_4
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_5
    const/4 v2, 0x1

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    and-int/lit8 v4, v9, 0xf

    aget-object v0, v3, v4

    goto :goto_1

    :pswitch_6
    const/4 v1, 0x1

    and-int/lit8 v2, v9, 0xf

    if-ne v2, v3, :cond_1

    const/4 v2, 0x3

    :goto_0
    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_7
    const/4 v2, 0x1

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    and-int/lit8 v4, v9, 0xf

    aget-object v0, v3, v4

    nop

    :goto_1
    move v10, v1

    move v1, v2

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    aget-byte v6, v8, v2

    array-length v2, v8

    const/16 v7, 0x53

    mul-int v3, v7, v6

    const/4 v11, 0x7

    add-int/2addr v3, v11

    if-lt v2, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v2

    const/4 v2, 0x0

    move-object v13, v0

    :goto_3
    move v14, v2

    if-ge v14, v6, :cond_3

    mul-int v0, v7, v14

    add-int v15, v11, v0

    add-int/lit8 v0, v15, 0x52

    aget-byte v5, v8, v0

    const/16 v0, 0x52

    if-gt v5, v0, :cond_2

    move-object v0, v8

    move v2, v15

    move v3, v5

    move v4, v10

    move v7, v5

    move-object v5, v13

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v14, 0x1

    const/16 v7, 0x53

    goto :goto_3

    :cond_2
    move v7, v5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Page length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " exceeds maximum value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v13, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pdu length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not match "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    const/4 v11, 0x6

    array-length v2, v8

    sub-int v12, v2, v11

    move-object v2, v8

    move v3, v1

    move v4, v11

    move v5, v12

    move v6, v10

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    :cond_6
    :pswitch_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported GSM dataCodingScheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_8
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIIZ",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    array-length v2, p0

    add-int/lit8 v5, p2, 0x2

    if-lt v2, v5, :cond_1

    invoke-static {p0, p2, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object p5

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const v4, 0xfffe

    and-int/2addr v4, p3

    const-string v5, "utf-16"

    invoke-direct {v2, p0, p2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error decoding UTF-16 message"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    mul-int/lit8 v5, p3, 0x8

    div-int/lit8 v5, v5, 0x7

    invoke-static {p0, p2, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_3

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    const-string v0, ""

    :cond_6
    :goto_2
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
