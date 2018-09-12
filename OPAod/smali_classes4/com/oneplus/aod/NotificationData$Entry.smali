.class public final Lcom/oneplus/aod/NotificationData$Entry;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public autoRedacted:Z

.field public cachedBigContentView:Landroid/widget/RemoteViews;

.field public cachedContentView:Landroid/widget/RemoteViews;

.field public cachedHeadsUpContentView:Landroid/widget/RemoteViews;

.field public cachedPublicContentView:Landroid/widget/RemoteViews;

.field public icon:Lcom/oneplus/aod/StatusBarIconView;

.field public key:Ljava/lang/String;

.field public legacy:Z

.field public mIsSystemNotification:Ljava/lang/Boolean;

.field public notification:Landroid/service/notification/StatusBarNotification;

.field public targetSdk:I


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;Lcom/oneplus/aod/StatusBarIconView;)V
    .locals 1
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ic"    # Lcom/oneplus/aod/StatusBarIconView;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 74
    iput-object p2, p0, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    .line 75
    return-void
.end method

.method private compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .locals 2
    .param p1, "a"    # Landroid/widget/RemoteViews;
    .param p2, "b"    # Landroid/widget/RemoteViews;

    .line 130
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 132
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0
.end method


# virtual methods
.method public cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "updatedNotification"    # Landroid/app/Notification;

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "applyInPlace":Z
    if-eqz p2, :cond_1

    .line 90
    nop

    .line 91
    invoke-static {p1, p2}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 92
    .local v1, "updatedNotificationBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 93
    .local v2, "newContentView":Landroid/widget/RemoteViews;
    nop

    .line 94
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 95
    .local v3, "newBigContentView":Landroid/widget/RemoteViews;
    nop

    .line 96
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v4

    .line 97
    .local v4, "newHeadsUpContentView":Landroid/widget/RemoteViews;
    nop

    .line 98
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->makePublicContentView()Landroid/widget/RemoteViews;

    move-result-object v5

    .line 100
    .local v5, "newPublicNotification":Landroid/widget/RemoteViews;
    iget-object v6, p0, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 101
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.contains.customView"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "android.contains.customView"

    .line 103
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 100
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 105
    .local v6, "sameCustomView":Z
    iget-object v7, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v7, v2}, Lcom/oneplus/aod/NotificationData$Entry;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 106
    invoke-direct {p0, v7, v3}, Lcom/oneplus/aod/NotificationData$Entry;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 107
    invoke-direct {p0, v7, v4}, Lcom/oneplus/aod/NotificationData$Entry;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 108
    invoke-direct {p0, v7, v5}, Lcom/oneplus/aod/NotificationData$Entry;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    move v0, v7

    .line 110
    iput-object v5, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 111
    iput-object v4, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 112
    iput-object v3, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 113
    iput-object v2, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 114
    .end local v1    # "updatedNotificationBuilder":Landroid/app/Notification$Builder;
    .end local v2    # "newContentView":Landroid/widget/RemoteViews;
    .end local v3    # "newBigContentView":Landroid/widget/RemoteViews;
    .end local v4    # "newHeadsUpContentView":Landroid/widget/RemoteViews;
    .end local v5    # "newPublicNotification":Landroid/widget/RemoteViews;
    .end local v6    # "sameCustomView":Z
    goto :goto_1

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 116
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 118
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 119
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 120
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 121
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->makePublicContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 123
    const/4 v0, 0x0

    .line 125
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    :goto_1
    return v0
.end method

.method public reset()V
    .locals 1

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/NotificationData$Entry;->autoRedacted:Z

    .line 84
    iput-boolean v0, p0, Lcom/oneplus/aod/NotificationData$Entry;->legacy:Z

    .line 85
    return-void
.end method
