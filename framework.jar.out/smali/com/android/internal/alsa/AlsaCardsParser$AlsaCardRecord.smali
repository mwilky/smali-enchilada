.class public Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
.super Ljava/lang/Object;
.source "AlsaCardsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/alsa/AlsaCardsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlsaCardRecord"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlsaCardRecord"

.field private static final kUsbCardKeyStr:Ljava/lang/String; = "at usb-"


# instance fields
.field mCardDescription:Ljava/lang/String;

.field mCardName:Ljava/lang/String;

.field mCardNum:I

.field mField1:Ljava/lang/String;

.field private mUsbDeviceAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/alsa/AlsaCardsParser;


# direct methods
.method public constructor <init>(Lcom/android/internal/alsa/AlsaCardsParser;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->this$0:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mField1:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mUsbDeviceAddress:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->parse(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mUsbDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method private parse(Ljava/lang/String;I)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->access$000()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->access$000()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/android/internal/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    move-result v1

    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->access$000()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->access$000()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mField1:Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->access$000()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "AlsaCardRecord"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/proc/asound/cards"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-ne p2, v3, :cond_2

    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->access$000()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    const-string v5, "at usb-"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v4, :cond_1

    move v2, v3

    nop

    :cond_1
    if-eqz v2, :cond_2

    add-int/lit8 v4, v5, -0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    :cond_2
    :goto_0
    return v3
.end method


# virtual methods
.method public getCardDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getCardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNum()I
    .locals 1

    iget v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    return v0
.end method

.method isUsb()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mUsbDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public log(I)V
    .locals 3

    const-string v0, "AlsaCardRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " usb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->isUsb()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDeviceAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mUsbDeviceAddress:Ljava/lang/String;

    return-void
.end method

.method public textFormat()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [addr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mUsbDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
