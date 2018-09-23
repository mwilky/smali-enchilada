.class public Lcom/android/settings/notification/NotificationStation;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;,
        Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DUMP_EXTRAS:Z = true

.field private static final DUMP_PARCEL:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/service/notification/NotificationListenerService;

.field private mNoMan:Landroid/app/INotificationManager;

.field private final mNotificationSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private mRefreshListRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/notification/NotificationStation$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationStation$1;-><init>(Lcom/android/settings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/notification/NotificationStation$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationStation$2;-><init>(Lcom/android/settings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    new-instance v0, Lcom/android/settings/notification/NotificationStation$3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationStation$3;-><init>(Lcom/android/settings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationStation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationStation;->refreshList()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/NotificationStation;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/notification/NotificationStation;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/notification/NotificationStation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationStation;->scheduleRefreshList()V

    return-void
.end method

.method private static bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private static formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const-string v2, "Intent(pkg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/IntentSender;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, " (activity)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private generateExtraText(Landroid/service/notification/StatusBarNotification;Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;)Ljava/lang/CharSequence;
    .locals 11

    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const v3, 0x7f1209f5

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1209ff

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f1209fd

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f1209fb

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, "channelId"

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, "postTime"

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, "timeoutAfter"

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f1209f9

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f1209fa

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f120a06

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget v4, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x1

    const v5, 0x7f1209fe

    const v6, 0x7f1209f3

    if-eqz v4, :cond_2

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_2
    iget-object v4, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v4, :cond_3

    iget-object v4, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_0
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v7, 0x7f120a08

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget v4, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x2

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_4
    iget-object v4, v1, Landroid/app/Notification;->vibrate:[J

    if-eqz v4, :cond_6

    move v4, v7

    :goto_1
    iget-object v5, v1, Landroid/app/Notification;->vibrate:[J

    array-length v5, v5

    if-ge v4, v5, :cond_7

    if-lez v4, :cond_5

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_5
    iget-object v5, v1, Landroid/app/Notification;->vibrate:[J

    aget-wide v5, v5, v4

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_7
    :goto_2
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f120a09

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/app/Notification;->visibility:I

    invoke-static {v5}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v4, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v4, :cond_8

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f120a02

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->getTitleString(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_8
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f120a01

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/app/Notification;->priority:I

    invoke-static {v5}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-boolean v4, p2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/settings/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f1209fc

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v5

    invoke-static {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f1209f6

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_9
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f1209f0

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->canShowBadge()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    :cond_a
    iget-object v4, p0, Lcom/android/settings/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-nez v4, :cond_b

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f120a04

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    :cond_b
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f120a03

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_c
    :goto_3
    iget-object v4, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const v5, 0x7f1209f1

    if-eqz v4, :cond_d

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v6, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_d
    iget-object v4, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_e

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v6, 0x7f1209f4

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v6, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_e
    iget-object v4, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_f

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v6, 0x7f1209f8

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v6, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_f
    iget-object v4, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/16 v6, 0x20

    if-eqz v4, :cond_12

    iget-object v4, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v4, v4

    if-lez v4, :cond_12

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v8, 0x7f1209ee

    invoke-virtual {p0, v8}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move v4, v7

    :goto_4
    iget-object v8, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v8, v8

    if-ge v4, v8, :cond_12

    iget-object v8, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v8, v8, v4

    const-string v9, "\n  "

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    const v10, 0x7f120a07

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    iget-object v10, v8, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v9, v8, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v9, :cond_10

    const-string v9, "\n    "

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    iget-object v10, v8, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {v10}, Lcom/android/settings/notification/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_10
    invoke-virtual {v8}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v9

    if-eqz v9, :cond_11

    const-string v9, "\n    "

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    const v10, 0x7f120a05

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v10

    array-length v10, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_12
    iget-object v4, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_13

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f1209f2

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_13
    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_15

    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v4

    if-lez v4, :cond_15

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f1209f7

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v8, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x64

    if-le v9, v10, :cond_14

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_14
    const-string v9, "\n  "

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    :cond_15
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    invoke-virtual {v1, v4, v7}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const v7, 0x7f120a00

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const v6, 0x7f1209ef

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/os/Parcel;->getBlobAshmemSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v2
.end method

.method private getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getTitleString(Landroid/app/Notification;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationStation;->getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p3, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Icon not found in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v5, "<system>"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private loadNotifications()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    move v2, v0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/settings/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    iget-object v4, v1, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    iget-object v4, v1, Lcom/android/settings/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    iget-object v5, v1, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x32

    invoke-interface {v4, v5, v6}, Landroid/app/INotificationManager;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v0

    array-length v7, v4

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x2

    new-array v7, v6, [[Landroid/service/notification/StatusBarNotification;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v9, 0x1

    aput-object v4, v7, v9

    array-length v10, v7

    move v11, v8

    :goto_0
    if-ge v11, v10, :cond_6

    aget-object v12, v7, v11

    array-length v13, v12

    move v14, v8

    :goto_1
    if-ge v14, v13, :cond_5

    aget-object v15, v12, v14

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    move v6, v8

    :goto_2
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v9

    if-eq v9, v2, :cond_1

    const/4 v9, 0x1

    goto :goto_3

    :cond_1
    move v9, v8

    :goto_3
    and-int/2addr v6, v9

    if-eqz v6, :cond_2

    nop

    move-object/from16 v18, v0

    move/from16 v17, v2

    move v1, v8

    const/4 v8, 0x1

    const/16 v16, 0x2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    new-instance v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    invoke-direct {v9, v3}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;-><init>(Lcom/android/settings/notification/NotificationStation$1;)V

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    iput v3, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    iget-object v3, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    iget v8, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->user:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v17, v2

    :try_start_1
    iget v2, v6, Landroid/app/Notification;->icon:I

    invoke-direct {v1, v3, v8, v2}, Lcom/android/settings/notification/NotificationStation;->loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    iget v3, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    invoke-direct {v1, v2, v3}, Lcom/android/settings/notification/NotificationStation;->loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    iget-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/settings/notification/NotificationStation;->loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->getTitleString(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    iget-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f120a0a

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    :cond_3
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    iget v2, v6, Landroid/app/Notification;->priority:I

    iput v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->priority:I

    invoke-virtual {v6}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->channel:Ljava/lang/String;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->key:Ljava/lang/String;

    if-ne v12, v0, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    invoke-direct {v1, v15, v9}, Lcom/android/settings/notification/NotificationStation;->generateExtraText(Landroid/service/notification/StatusBarNotification;Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->extra:Ljava/lang/CharSequence;

    const-string v2, "   [%d] %s: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v18, v0

    iget-wide v0, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    iget-object v0, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v0, v3, v8

    iget-object v0, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    const/16 v16, 0x2

    aput-object v0, v3, v16

    invoke-static {v2, v3}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move v9, v8

    move/from16 v6, v16

    move/from16 v2, v17

    move-object/from16 v0, v18

    const/4 v3, 0x0

    move v8, v1

    move-object/from16 v1, p0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_5
    move-object/from16 v18, v0

    move/from16 v17, v2

    move/from16 v16, v6

    move v1, v8

    move v8, v9

    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    move v8, v1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v18, v0

    move/from16 v17, v2

    return-object v5

    :catch_1
    move-exception v0

    move/from16 v17, v2

    :goto_6
    sget-object v1, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot load Notifications: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v3, "Cannot get application icon"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot load package name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p1
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, p0

    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private refreshList()V
    .locals 7

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationStation;->loadNotifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "adding %d infos"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationStation;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    nop

    :goto_0
    move v2, v5

    if-ge v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    new-instance v4, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    invoke-direct {v4, v5, v6}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v5, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private scheduleRefreshList()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onActivityCreated(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    return-void
.end method

.method public onDetach()V
    .locals 2

    const-string v0, "onDetach()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot unregister listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    const-string v0, "onResume()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot register listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationStation;->refreshList()V

    return-void
.end method
