.class public final Landroid/nfc/tech/Ndef;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "Ndef.java"


# static fields
.field public static final EXTRA_NDEF_CARDSTATE:Ljava/lang/String; = "ndefcardstate"

.field public static final EXTRA_NDEF_MAXLENGTH:Ljava/lang/String; = "ndefmaxlength"

.field public static final EXTRA_NDEF_MSG:Ljava/lang/String; = "ndefmsg"

.field public static final EXTRA_NDEF_TYPE:Ljava/lang/String; = "ndeftype"

.field public static final ICODE_SLI:Ljava/lang/String; = "com.nxp.ndef.icodesli"

.field public static final MIFARE_CLASSIC:Ljava/lang/String; = "com.nxp.ndef.mifareclassic"

.field public static final NDEF_MODE_READ_ONLY:I = 0x1

.field public static final NDEF_MODE_READ_WRITE:I = 0x2

.field public static final NDEF_MODE_UNKNOWN:I = 0x3

.field public static final NFC_FORUM_TYPE_1:Ljava/lang/String; = "org.nfcforum.ndef.type1"

.field public static final NFC_FORUM_TYPE_2:Ljava/lang/String; = "org.nfcforum.ndef.type2"

.field public static final NFC_FORUM_TYPE_3:Ljava/lang/String; = "org.nfcforum.ndef.type3"

.field public static final NFC_FORUM_TYPE_4:Ljava/lang/String; = "org.nfcforum.ndef.type4"

.field private static final TAG:Ljava/lang/String; = "NFC"

.field public static final TYPE_1:I = 0x1

.field public static final TYPE_2:I = 0x2

.field public static final TYPE_3:I = 0x3

.field public static final TYPE_4:I = 0x4

.field public static final TYPE_ICODE_SLI:I = 0x66

.field public static final TYPE_MIFARE_CLASSIC:I = 0x65

.field public static final TYPE_OTHER:I = -0x1

.field public static final UNKNOWN:Ljava/lang/String; = "android.ndef.unknown"


# instance fields
.field private final mCardState:I

.field private final mMaxNdefSize:I

.field private final mNdefMsg:Landroid/nfc/NdefMessage;

.field private final mNdefType:I


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    invoke-virtual {p1, v0}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "ndefmaxlength"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/nfc/tech/Ndef;->mMaxNdefSize:I

    const-string/jumbo v1, "ndefcardstate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/nfc/tech/Ndef;->mCardState:I

    const-string/jumbo v1, "ndefmsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/nfc/NdefMessage;

    iput-object v1, p0, Landroid/nfc/tech/Ndef;->mNdefMsg:Landroid/nfc/NdefMessage;

    const-string/jumbo v1, "ndeftype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "NDEF tech extras are null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;
    .locals 2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Landroid/nfc/tech/Ndef;

    invoke-direct {v0, p0}, Landroid/nfc/tech/Ndef;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object v1
.end method


# virtual methods
.method public canMakeReadOnly()Z
    .locals 5

    iget-object v0, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget v2, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    invoke-interface {v0, v2}, Landroid/nfc/INfcTag;->canMakeReadOnly(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "NFC"

    const-string v4, "NFC service dead"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getCachedNdefMessage()Landroid/nfc/NdefMessage;
    .locals 1

    iget-object v0, p0, Landroid/nfc/tech/Ndef;->mNdefMsg:Landroid/nfc/NdefMessage;

    return-object v0
.end method

.method public getMaxSize()I
    .locals 1

    iget v0, p0, Landroid/nfc/tech/Ndef;->mMaxNdefSize:I

    return v0
.end method

.method public getNdefMessage()Landroid/nfc/NdefMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->ndefRead(I)Landroid/nfc/NdefMessage;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->isPresent(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/nfc/TagLostException;

    invoke-direct {v4}, Landroid/nfc/TagLostException;-><init>()V

    throw v4

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->isPresent(I)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v0

    :cond_3
    new-instance v3, Landroid/nfc/TagLostException;

    invoke-direct {v3}, Landroid/nfc/TagLostException;-><init>()V

    throw v3

    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Mock tags don\'t support this operation."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "NFC"

    const-string v3, "NFC service dead"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const-string v0, "android.ndef.unknown"

    return-object v0

    :pswitch_0
    const-string v0, "com.nxp.ndef.icodesli"

    return-object v0

    :pswitch_1
    const-string v0, "com.nxp.ndef.mifareclassic"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "org.nfcforum.ndef.type4"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "org.nfcforum.ndef.type3"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "org.nfcforum.ndef.type2"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "org.nfcforum.ndef.type1"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isWritable()Z
    .locals 2

    iget v0, p0, Landroid/nfc/tech/Ndef;->mCardState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeReadOnly()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->ndefMakeReadOnly(I)I

    move-result v2

    const/4 v3, -0x8

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_1
    return v0

    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Tag is not ndef"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "NFC"

    const-string v3, "NFC service dead"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic reconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public writeNdefMessage(Landroid/nfc/NdefMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcTag;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    move-result v2

    const/4 v3, -0x8

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :pswitch_0
    nop

    nop

    goto :goto_0

    :pswitch_1
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_0
    new-instance v3, Landroid/nfc/FormatException;

    invoke-direct {v3}, Landroid/nfc/FormatException;-><init>()V

    throw v3

    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Tag is not ndef"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mock tags don\'t support this operation."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
