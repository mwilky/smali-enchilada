.class public final Landroid/app/Notification$TvExtender;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/app/Notification$Extender;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvExtender"
.end annotation


# static fields
.field private static final EXTRA_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field private static final EXTRA_CONTENT_INTENT:Ljava/lang/String; = "content_intent"

.field private static final EXTRA_DELETE_INTENT:Ljava/lang/String; = "delete_intent"

.field private static final EXTRA_FLAGS:Ljava/lang/String; = "flags"

.field private static final EXTRA_SUPPRESS_SHOW_OVER_APPS:Ljava/lang/String; = "suppressShowOverApps"

.field private static final EXTRA_TV_EXTENDER:Ljava/lang/String; = "android.tv.EXTENSIONS"

.field private static final FLAG_AVAILABLE_ON_TV:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TvExtender"


# instance fields
.field private mChannelId:Ljava/lang/String;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mFlags:I

.field private mSuppressShowOverApps:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$TvExtender;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.tv.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "flags"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$TvExtender;->mFlags:I

    const-string v1, "channel_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$TvExtender;->mChannelId:Ljava/lang/String;

    const-string/jumbo v1, "suppressShowOverApps"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$TvExtender;->mSuppressShowOverApps:Z

    const-string v1, "content_intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    const-string v1, "delete_intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    :cond_1
    return-void
.end method


# virtual methods
.method public extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "flags"

    iget v2, p0, Landroid/app/Notification$TvExtender;->mFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "channel_id"

    iget-object v2, p0, Landroid/app/Notification$TvExtender;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "suppressShowOverApps"

    iget-boolean v2, p0, Landroid/app/Notification$TvExtender;->mSuppressShowOverApps:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Landroid/app/Notification$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    const-string v1, "content_intent"

    iget-object v2, p0, Landroid/app/Notification$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v1, p0, Landroid/app/Notification$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    const-string v1, "delete_intent"

    iget-object v2, p0, Landroid/app/Notification$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.tv.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$TvExtender;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$TvExtender;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getDeleteIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getSuppressShowOverApps()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Notification$TvExtender;->mSuppressShowOverApps:Z

    return v0
.end method

.method public isAvailableOnTv()Z
    .locals 2

    iget v0, p0, Landroid/app/Notification$TvExtender;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setChannel(Ljava/lang/String;)Landroid/app/Notification$TvExtender;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$TvExtender;->mChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$TvExtender;->mChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$TvExtender;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$TvExtender;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setSuppressShowOverApps(Z)Landroid/app/Notification$TvExtender;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$TvExtender;->mSuppressShowOverApps:Z

    return-object p0
.end method
