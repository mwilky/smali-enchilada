.class public abstract Lcom/android/internal/telephony/SmsMessageBase;
.super Ljava/lang/Object;
.source "SmsMessageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    }
.end annotation


# instance fields
.field protected mEmailBody:Ljava/lang/String;

.field protected mEmailFrom:Ljava/lang/String;

.field protected mIndexOnIcc:I

.field protected mIsEmail:Z

.field protected mIsMwi:Z

.field protected mMessageBody:Ljava/lang/String;

.field public mMessageRef:I

.field protected mMwiDontStore:Z

.field protected mMwiSense:Z

.field protected mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected mPdu:[B

.field protected mPseudoSubject:Ljava/lang/String;

.field protected mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected mScAddress:Ljava/lang/String;

.field protected mScTimeMillis:J

.field protected mStatusOnIcc:I

.field protected mUserData:[B

.field protected mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    return-void
.end method

.method public static calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 8

    new-instance v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x3

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    const/16 v2, 0x8c

    if-le v1, v2, :cond_3

    const/16 v2, 0x86

    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x9

    add-int/lit8 v4, v2, -0x2

    mul-int/2addr v3, v4

    if-gt v1, v3, :cond_0

    add-int/lit8 v2, v2, -0x2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-static {v3, v2, p0}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v5, v6, :cond_1

    div-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    :cond_1
    move v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    :goto_1
    return-object v0
.end method

.method public static findNextUnicodePosition(IILjava/lang/CharSequence;)I
    .locals 4

    div-int/lit8 v0, p1, 0x2

    add-int/2addr v0, p0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v2

    :goto_0
    add-int/lit8 v3, v2, 0x4

    if-gt v3, v0, :cond_0

    invoke-static {p2, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x2

    invoke-static {p2, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_0
    if-le v2, p0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v0, -0x1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method protected extractEmailAddressFromMessageBody()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    const-string v1, "( /)|( )"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    return-void
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdu()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    return-object v0
.end method

.method public abstract getProtocolIdentifier()I
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPseudoSubject:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPseudoSubject:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScAddress:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getStatus()I
.end method

.method public getStatusOnIcc()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScTimeMillis:J

    return-wide v0
.end method

.method public getUserData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserData:[B

    return-object v0
.end method

.method public getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method public abstract isCphsMwiMessage()Z
.end method

.method public isEmail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    return v0
.end method

.method public abstract isMWIClearMessage()Z
.end method

.method public abstract isMWISetMessage()Z
.end method

.method public abstract isMwiDontStore()Z
.end method

.method public abstract isReplace()Z
.end method

.method public abstract isReplyPathPresent()Z
.end method

.method public abstract isStatusReportMessage()Z
.end method

.method protected parseMessageBody()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->couldBeEmailGateway()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->extractEmailAddressFromMessageBody()V

    :cond_0
    return-void
.end method
