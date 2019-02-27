.class public Landroid/app/Notification$CarExtender$UnreadConversation;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$CarExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnreadConversation"
.end annotation


# static fields
.field private static final KEY_AUTHOR:Ljava/lang/String; = "author"

.field private static final KEY_MESSAGES:Ljava/lang/String; = "messages"

.field private static final KEY_ON_READ:Ljava/lang/String; = "on_read"

.field private static final KEY_ON_REPLY:Ljava/lang/String; = "on_reply"

.field private static final KEY_PARTICIPANTS:Ljava/lang/String; = "participants"

.field private static final KEY_REMOTE_INPUT:Ljava/lang/String; = "remote_input"

.field private static final KEY_TEXT:Ljava/lang/String; = "text"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private final mLatestTimestamp:J

.field private final mMessages:[Ljava/lang/String;

.field private final mParticipants:[Ljava/lang/String;

.field private final mReadPendingIntent:Landroid/app/PendingIntent;

.field private final mRemoteInput:Landroid/app/RemoteInput;

.field private final mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    iput-object p2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    iput-object p4, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    iput-object p5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    iput-wide p6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    return-void
.end method

.method static getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$CarExtender$UnreadConversation;
    .locals 15

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "messages"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    array-length v3, v1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_3

    aget-object v6, v1, v5

    instance-of v6, v6, Landroid/os/Bundle;

    if-nez v6, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    aget-object v6, v1, v5

    check-cast v6, Landroid/os/Bundle;

    const-string/jumbo v7, "text"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    aget-object v6, v3, v5

    if-nez v6, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    move-object v2, v3

    goto :goto_2

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    const-string/jumbo v3, "on_read"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    const-string/jumbo v4, "on_reply"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    const-string/jumbo v5, "remote_input"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/app/RemoteInput;

    const-string/jumbo v5, "participants"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    array-length v5, v14

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Landroid/app/Notification$CarExtender$UnreadConversation;

    const-string/jumbo v5, "timestamp"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    move-object v5, v0

    move-object v6, v2

    move-object v7, v13

    move-object v8, v4

    move-object v9, v3

    move-object v10, v14

    invoke-direct/range {v5 .. v12}, Landroid/app/Notification$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    return-object v0

    :cond_7
    :goto_3
    return-object v0
.end method


# virtual methods
.method getBundleForUnreadConversation()Landroid/os/Bundle;
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    array-length v2, v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    iget-object v2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    aget-object v1, v2, v3

    :cond_0
    iget-object v2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/os/Parcelable;

    nop

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "text"

    iget-object v6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "author"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "messages"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    iget-object v3, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "remote_input"

    iget-object v4, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    const-string/jumbo v3, "on_reply"

    iget-object v4, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v3, "on_read"

    iget-object v4, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v3, "participants"

    iget-object v4, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v3, "timestamp"

    iget-wide v4, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public getLatestTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    return-wide v0
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    return-object v0
.end method

.method public getParticipant()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getParticipants()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    return-object v0
.end method

.method public getReadPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRemoteInput()Landroid/app/RemoteInput;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    return-object v0
.end method

.method public getReplyPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method
