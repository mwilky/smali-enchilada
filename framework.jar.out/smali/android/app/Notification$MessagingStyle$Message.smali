.class public final Landroid/app/Notification$MessagingStyle$Message;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field static final KEY_DATA_MIME_TYPE:Ljava/lang/String; = "type"

.field static final KEY_DATA_URI:Ljava/lang/String; = "uri"

.field static final KEY_EXTRAS_BUNDLE:Ljava/lang/String; = "extras"

.field static final KEY_REMOTE_INPUT_HISTORY:Ljava/lang/String; = "remote_input_history"

.field static final KEY_SENDER:Ljava/lang/String; = "sender"

.field static final KEY_SENDER_PERSON:Ljava/lang/String; = "sender_person"

.field static final KEY_TEXT:Ljava/lang/String; = "text"

.field static final KEY_TIMESTAMP:Ljava/lang/String; = "time"


# instance fields
.field private mDataMimeType:Ljava/lang/String;

.field private mDataUri:Landroid/net/Uri;

.field private mExtras:Landroid/os/Bundle;

.field private final mRemoteInputHistory:Z

.field private final mSender:Landroid/app/Person;

.field private final mText:Ljava/lang/CharSequence;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Landroid/app/Person;

    .line 7542
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;Z)V

    .line 7543
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;JLandroid/app/Person;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Landroid/app/Person;
    .param p5, "remoteInputHistory"    # Z

    .line 7564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7505
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    .line 7565
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    .line 7566
    iput-wide p2, p0, Landroid/app/Notification$MessagingStyle$Message;->mTimestamp:J

    .line 7567
    iput-object p4, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    .line 7568
    iput-boolean p5, p0, Landroid/app/Notification$MessagingStyle$Message;->mRemoteInputHistory:Z

    .line 7569
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Ljava/lang/CharSequence;

    .line 7522
    if-nez p4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 7523
    :cond_0
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p4}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    .line 7522
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V

    .line 7524
    return-void
.end method

.method static synthetic access$4200(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 7485
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 7485
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    return-object v0
.end method

.method static getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 7694
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    .line 7695
    .local v0, "bundles":[Landroid/os/Bundle;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 7696
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7697
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$MessagingStyle$Message;

    invoke-direct {v3}, Landroid/app/Notification$MessagingStyle$Message;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v0, v2

    .line 7696
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7699
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getMessageFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$MessagingStyle$Message;
    .locals 9
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 7732
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "text"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "time"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 7736
    :cond_0
    const-string/jumbo v1, "sender_person"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/Person;

    .line 7737
    .local v1, "senderPerson":Landroid/app/Person;
    if-nez v1, :cond_1

    .line 7741
    const-string/jumbo v2, "sender"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 7742
    .local v2, "senderName":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 7743
    new-instance v3, Landroid/app/Person$Builder;

    invoke-direct {v3}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v3

    move-object v1, v3

    .line 7746
    .end local v2    # "senderName":Ljava/lang/CharSequence;
    :cond_1
    new-instance v8, Landroid/app/Notification$MessagingStyle$Message;

    const-string/jumbo v2, "text"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    const-string/jumbo v2, "time"

    .line 7747
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v2, "remote_input_history"

    const/4 v6, 0x0

    .line 7749
    invoke-virtual {p0, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    move-object v2, v8

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;Z)V

    move-object v2, v8

    .line 7750
    .local v2, "message":Landroid/app/Notification$MessagingStyle$Message;
    const-string/jumbo v3, "type"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "uri"

    .line 7751
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7752
    const-string/jumbo v3, "type"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "uri"

    .line 7753
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 7752
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    .line 7755
    :cond_2
    const-string v3, "extras"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7756
    invoke-virtual {v2}, Landroid/app/Notification$MessagingStyle$Message;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extras"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7758
    :cond_3
    return-object v2

    .line 7733
    .end local v1    # "senderPerson":Landroid/app/Person;
    .end local v2    # "message":Landroid/app/Notification$MessagingStyle$Message;
    :cond_4
    :goto_0
    return-object v0

    .line 7760
    :catch_0
    move-exception v1

    .line 7761
    .local v1, "e":Ljava/lang/ClassCastException;
    return-object v0
.end method

.method public static getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 3
    .param p0, "bundles"    # [Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .line 7708
    if-nez p0, :cond_0

    .line 7709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 7711
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7712
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 7713
    aget-object v2, p0, v1

    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 7714
    aget-object v2, p0, v1

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Landroid/app/Notification$MessagingStyle$Message;->getMessageFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v2

    .line 7715
    .local v2, "message":Landroid/app/Notification$MessagingStyle$Message;
    if-eqz v2, :cond_1

    .line 7716
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7712
    .end local v2    # "message":Landroid/app/Notification$MessagingStyle$Message;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7720
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method private toBundle()Landroid/os/Bundle;
    .locals 4

    .line 7668
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7669
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 7670
    const-string/jumbo v1, "text"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 7672
    :cond_0
    const-string/jumbo v1, "time"

    iget-wide v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 7673
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    if-eqz v1, :cond_1

    .line 7675
    const-string/jumbo v1, "sender"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 7676
    const-string/jumbo v1, "sender_person"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7678
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7679
    const-string/jumbo v1, "type"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7681
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 7682
    const-string/jumbo v1, "uri"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7684
    :cond_3
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    .line 7685
    const-string v1, "extras"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7687
    :cond_4
    iget-boolean v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mRemoteInputHistory:Z

    if-eqz v1, :cond_5

    .line 7688
    const-string/jumbo v1, "remote_input_history"

    iget-boolean v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mRemoteInputHistory:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7690
    :cond_5
    return-object v0
.end method


# virtual methods
.method public getDataMimeType()Ljava/lang/String;
    .locals 1

    .line 7647
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .line 7655
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 7623
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSender()Ljava/lang/CharSequence;
    .locals 1

    .line 7632
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSenderPerson()Landroid/app/Person;
    .locals 1

    .line 7640
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 7609
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 7616
    iget-wide v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mTimestamp:J

    return-wide v0
.end method

.method public isRemoteInputHistory()Z
    .locals 1

    .line 7664
    iget-boolean v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mRemoteInputHistory:Z

    return v0
.end method

.method public setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;
    .locals 0
    .param p1, "dataMimeType"    # Ljava/lang/String;
    .param p2, "dataUri"    # Landroid/net/Uri;

    .line 7599
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    .line 7600
    iput-object p2, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    .line 7601
    return-object p0
.end method
