.class public Lcom/oneplus/aod/NotificationData;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/NotificationData$Environment;,
        Lcom/oneplus/aod/NotificationData$Entry;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/aod/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

.field private final mRankingComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/oneplus/aod/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private mService:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

.field private final mSortedAndFiltered:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/aod/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/NotificationData$Environment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OPNotificationData"

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    new-instance v0, Lcom/oneplus/aod/NotificationData$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/NotificationData$1;-><init>(Lcom/oneplus/aod/NotificationData;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/NotificationData;)Lcom/oneplus/aod/NotificationData$Environment;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-static {p0}, Lcom/oneplus/aod/NotificationData;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method private isCategory(Ljava/lang/String;Landroid/app/Notification;)Z
    .locals 1

    iget-object v0, p2, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isNotificationBlockedByPolicy(Landroid/app/Notification;)Z
    .locals 1

    const-string v0, "call"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/aod/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "msg"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/aod/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "alarm"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/aod/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "event"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/aod/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "reminder"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/aod/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private shouldSuppressNotificationList(Lcom/oneplus/aod/NotificationData$Entry;)Z
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/NotificationData;->shouldSuppressVisualEffect(Lcom/oneplus/aod/NotificationData$Entry;I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/NotificationData;->shouldSuppressVisualEffect(Lcom/oneplus/aod/NotificationData$Entry;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private shouldSuppressVisualEffect(Lcom/oneplus/aod/NotificationData$Entry;I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/NotificationData;->isExemptFromDndVisualSuppression(Lcom/oneplus/aod/NotificationData$Entry;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v3, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2, v0, v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v2, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getSuppressedVisualEffects()I

    move-result v2

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public static showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    const-string v0, "android"

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.allowDuringSetup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public add(Lcom/oneplus/aod/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p2}, Lcom/oneplus/aod/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public filterAndSort()Z
    .locals 6

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "OPNotificationData"

    const-string v1, "filterAndSort"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/aod/NotificationData$Entry;

    invoke-virtual {p0, v4}, Lcom/oneplus/aod/NotificationData;->shouldFilterOut(Lcom/oneplus/aod/NotificationData$Entry;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/oneplus/aod/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public get(Ljava/lang/String;)Lcom/oneplus/aod/NotificationData$Entry;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/NotificationData$Entry;

    return-object v0
.end method

.method public getActiveNotifications()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/aod/NotificationData$Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImportance(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, -0x3e8

    return v0
.end method

.method public getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisibilityOverride(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getVisibilityOverride()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, -0x3e8

    return v0
.end method

.method public isAmbient(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isExemptFromDndVisualSuppression(Lcom/oneplus/aod/NotificationData$Entry;)Z
    .locals 3

    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/NotificationData;->isNotificationBlockedByPolicy(Landroid/app/Notification;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->mIsSystemNotification:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->mIsSystemNotification:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public isLock(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isLock()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/oneplus/aod/NotificationData$Entry;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/NotificationData$Entry;

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/oneplus/aod/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-object v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setForeGroundServiceController(Lcom/oneplus/aod/ForegroundServiceControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/NotificationData;->mService:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    return-void
.end method

.method public shouldFilterOut(Lcom/oneplus/aod/NotificationData$Entry;)Z
    .locals 6

    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-interface {v1}, Lcom/oneplus/aod/NotificationData$Environment;->isDeviceProvisioned()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/oneplus/aod/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OPNotificationData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldFilterOut: provisioned = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-interface {v4}, Lcom/oneplus/aod/NotificationData$Environment;->isDeviceProvisioned()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", showNotificationEvenIfUnprovisioned = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/NotificationData$Environment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OPNotificationData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldFilterOut: isNotificationForCurrentProfiles ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-interface {v4, v0}, Lcom/oneplus/aod/NotificationData$Environment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-interface {v1}, Lcom/oneplus/aod/NotificationData$Environment;->onSecureLockScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->visibility:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/oneplus/aod/NotificationData$Environment;->shouldHideNotifications(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/oneplus/aod/NotificationData$Environment;->shouldHideNotifications(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "OPNotificationData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldFilterOut: onSecureLockScreen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-interface {v4}, Lcom/oneplus/aod/NotificationData$Environment;->onSecureLockScreen()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->visibility:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", shouldHideNotifications: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/oneplus/aod/NotificationData$Environment;->shouldHideNotifications(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/oneplus/aod/NotificationData$Environment;->shouldHideNotifications(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/aod/NotificationData;->shouldSuppressNotificationList(Lcom/oneplus/aod/NotificationData$Entry;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "OPNotificationData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldFilterOut: suppressed by DND: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mService:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    invoke-virtual {v1, v0}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->isDungeonNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mService:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->isDungeonNeededForUser(I)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "OPNotificationData"

    const-string v3, "shouldFilterOut: foreground-service disclosure for a user that does not need to show one"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method public updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 7

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/aod/NotificationData$Entry;

    iget-object v4, v3, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    iget-object v5, v3, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/oneplus/aod/NotificationData;->getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v3, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6, v5}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationData;->filterAndSort()Z

    return-void
.end method
