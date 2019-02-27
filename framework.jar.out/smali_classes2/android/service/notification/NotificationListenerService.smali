.class public abstract Landroid/service/notification/NotificationListenerService;
.super Landroid/app/Service;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationListenerService$MyHandler;,
        Landroid/service/notification/NotificationListenerService$RankingMap;,
        Landroid/service/notification/NotificationListenerService$Ranking;,
        Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;,
        Landroid/service/notification/NotificationListenerService$ChannelOrGroupModificationTypes;
    }
.end annotation


# static fields
.field public static final HINT_HOST_DISABLE_CALL_EFFECTS:I = 0x4

.field public static final HINT_HOST_DISABLE_EFFECTS:I = 0x1

.field public static final HINT_HOST_DISABLE_NOTIFICATION_EFFECTS:I = 0x2

.field public static final INTERRUPTION_FILTER_ALARMS:I = 0x4

.field public static final INTERRUPTION_FILTER_ALL:I = 0x1

.field public static final INTERRUPTION_FILTER_NONE:I = 0x3

.field public static final INTERRUPTION_FILTER_PRIORITY:I = 0x2

.field public static final INTERRUPTION_FILTER_UNKNOWN:I = 0x0

.field public static final NOTIFICATION_CHANNEL_OR_GROUP_ADDED:I = 0x1

.field public static final NOTIFICATION_CHANNEL_OR_GROUP_DELETED:I = 0x3

.field public static final NOTIFICATION_CHANNEL_OR_GROUP_UPDATED:I = 0x2

.field public static final REASON_APP_CANCEL:I = 0x8

.field public static final REASON_APP_CANCEL_ALL:I = 0x9

.field public static final REASON_CANCEL:I = 0x2

.field public static final REASON_CANCEL_ALL:I = 0x3

.field public static final REASON_CHANNEL_BANNED:I = 0x11

.field public static final REASON_CLICK:I = 0x1

.field public static final REASON_ERROR:I = 0x4

.field public static final REASON_GROUP_OPTIMIZATION:I = 0xd

.field public static final REASON_GROUP_SUMMARY_CANCELED:I = 0xc

.field public static final REASON_LISTENER_CANCEL:I = 0xa

.field public static final REASON_LISTENER_CANCEL_ALL:I = 0xb

.field public static final REASON_ONEPLUS_FORCESTOP:I = 0x14

.field public static final REASON_PACKAGE_BANNED:I = 0x7

.field public static final REASON_PACKAGE_CHANGED:I = 0x5

.field public static final REASON_PACKAGE_SUSPENDED:I = 0xe

.field public static final REASON_PROFILE_TURNED_OFF:I = 0xf

.field public static final REASON_SNOOZED:I = 0x12

.field public static final REASON_TIMEOUT:I = 0x13

.field public static final REASON_UNAUTOBUNDLED:I = 0x10

.field public static final REASON_USER_STOPPED:I = 0x6

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.notification.NotificationListenerService"

.field public static final SUPPRESSED_EFFECT_SCREEN_OFF:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPPRESSED_EFFECT_SCREEN_ON:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRIM_FULL:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TRIM_LIGHT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isConnected:Z

.field protected mCurrentUser:I

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field protected mNoMan:Landroid/app/INotificationManager;

.field private mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field protected mSystemContext:Landroid/content/Context;

.field protected mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/notification/NotificationListenerService;->isConnected:Z

    return-void
.end method

.method static synthetic access$000(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService;->createLegacyIconExtras(Landroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$200(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService;->maybePopulateRemoteViews(Landroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$300(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService;->maybePopulatePeople(Landroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$400(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method static synthetic access$600(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/service/notification/NotificationListenerService;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService;->isConnected:Z

    return v0
.end method

.method static synthetic access$702(Landroid/service/notification/NotificationListenerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService;->isConnected:Z

    return p1
.end method

.method private cleanUpNotificationList(Landroid/content/pm/ParceledListSlice;)[Landroid/service/notification/StatusBarNotification;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)[",
            "Landroid/service/notification/StatusBarNotification;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    nop

    :goto_0
    if-ge v0, v3, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    :try_start_0
    invoke-direct {p0, v5}, Landroid/service/notification/NotificationListenerService;->createLegacyIconExtras(Landroid/app/Notification;)V

    invoke-direct {p0, v5}, Landroid/service/notification/NotificationListenerService;->maybePopulateRemoteViews(Landroid/app/Notification;)V

    invoke-direct {p0, v5}, Landroid/service/notification/NotificationListenerService;->maybePopulatePeople(Landroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    if-nez v2, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v7

    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get(Active/Snoozed)Notifications: can\'t rebuild notification from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/service/notification/StatusBarNotification;

    return-object v0

    :cond_4
    :goto_2
    new-array v0, v0, [Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method private createLegacyIconExtras(Landroid/app/Notification;)V
    .locals 6

    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.icon"

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    iput v2, p1, Landroid/app/Notification;->icon:I

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.largeIcon"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iput-object v3, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private maybePopulatePeople(Landroid/app/Notification;)V
    .locals 6

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.people.list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Person;

    invoke-virtual {v4}, Landroid/app/Person;->resolveToLegacyUri()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.people"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private maybePopulateRemoteViews(Landroid/app/Notification;)V
    .locals 4

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    iput-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v2, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v3, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_0
    return-void
.end method

.method public static requestRebind(Landroid/content/ComponentName;)V
    .locals 3

    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->requestBindListener(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public final applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>(Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationListenerService$1;)V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    new-instance v0, Landroid/service/notification/NotificationListenerService$MyHandler;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/notification/NotificationListenerService$MyHandler;-><init>(Landroid/service/notification/NotificationListenerService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public final cancelAllNotifications()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->cancelNotifications([Ljava/lang/String;)V

    return-void
.end method

.method public final cancelNotification(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final cancelNotification(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/INotificationManager;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final cancelNotifications([Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-array v0, v0, [Landroid/service/notification/StatusBarNotification;

    :goto_0
    return-object v0
.end method

.method public getActiveNotifications(I)[Landroid/service/notification/StatusBarNotification;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/service/notification/StatusBarNotification;

    :goto_0
    return-object v1
.end method

.method public getActiveNotifications([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-array v0, v0, [Landroid/service/notification/StatusBarNotification;

    :goto_0
    return-object v0
.end method

.method public getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v2, p1, p2}, Landroid/app/INotificationManager;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/service/notification/NotificationListenerService;->cleanUpNotificationList(Landroid/content/pm/ParceledListSlice;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v3, "Unable to contact notification manager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mSystemContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mSystemContext:Landroid/content/Context;

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final getCurrentInterruptionFilter()I
    .locals 4

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v2}, Landroid/app/INotificationManager;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v3, "Unable to contact notification manager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final getCurrentListenerHints()I
    .locals 4

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v2}, Landroid/app/INotificationManager;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v3, "Unable to contact notification manager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 2

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getNotificationChannelGroups(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/INotificationManager;->getNotificationChannelGroupsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final getNotificationChannels(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/INotificationManager;->getNotificationChannelsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected final getNotificationInterface()Landroid/app/INotificationManager;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    :cond_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    return-object v0
.end method

.method public final getSnoozedNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->getSnoozedNotificationsFromListener(Landroid/service/notification/INotificationListener;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/service/notification/NotificationListenerService;->cleanUpNotificationList(Landroid/content/pm/ParceledListSlice;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method protected isBound()Z
    .locals 2

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v1, "Notification listener service not yet bound."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-direct {v0, p0}, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    :cond_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onInterruptionFilterChanged(I)V
    .locals 0

    return-void
.end method

.method public onListenerConnected()V
    .locals 0

    return-void
.end method

.method public onListenerDisconnected()V
    .locals 0

    return-void
.end method

.method public onListenerHintsChanged(I)V
    .locals 0

    return-void
.end method

.method public onNotificationChannelGroupModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .locals 0

    return-void
.end method

.method public onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 0

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Landroid/service/notification/NotificationStats;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p4}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    return-void
.end method

.method public registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-direct {v0, p0}, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    :cond_0
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService;->mSystemContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    new-instance v1, Landroid/service/notification/NotificationListenerService$MyHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/service/notification/NotificationListenerService$MyHandler;-><init>(Landroid/service/notification/NotificationListenerService;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService;->mHandler:Landroid/os/Handler;

    iput p3, p0, Landroid/service/notification/NotificationListenerService;->mCurrentUser:I

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p2, p3}, Landroid/app/INotificationManager;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public final requestInterruptionFilter(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final requestListenerHints(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final requestUnbind()V
    .locals 3

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->requestUnbindListener(Landroid/service/notification/INotificationListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/notification/NotificationListenerService;->isConnected:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    :goto_0
    return-void
.end method

.method public final setNotificationsShown([Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final setOnNotificationPostedTrim(I)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final snoozeNotification(Ljava/lang/String;J)V
    .locals 3

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/INotificationManager;->snoozeNotificationUntilFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final snoozeNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/INotificationManager;->snoozeNotificationUntilContextFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public unregisterAsSystemService()V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    iget v2, p0, Landroid/service/notification/NotificationListenerService;->mCurrentUser:I

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    :cond_0
    return-void
.end method

.method public final updateNotificationChannel(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V
    .locals 3

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/INotificationManager;->updateNotificationChannelFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
