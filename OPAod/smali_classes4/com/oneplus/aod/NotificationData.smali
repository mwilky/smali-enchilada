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
    .param p1, "environment"    # Lcom/oneplus/aod/NotificationData$Environment;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "OPNotificationData"

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 270
    new-instance v0, Lcom/oneplus/aod/NotificationData$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/NotificationData$1;-><init>(Lcom/oneplus/aod/NotificationData;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    .line 44
    iput-object p1, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationData;

    .line 28
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/NotificationData;)Lcom/oneplus/aod/NotificationData$Environment;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationData;

    .line 28
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p0, "x0"    # Landroid/service/notification/StatusBarNotification;

    .line 28
    invoke-static {p0}, Lcom/oneplus/aod/NotificationData;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method private isCategory(Ljava/lang/String;Landroid/app/Notification;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "n"    # Landroid/app/Notification;

    .line 358
    iget-object v0, p2, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isNotificationBlockedByPolicy(Landroid/app/Notification;)Z
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    .line 347
    const-string v0, "call"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/aod/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "msg"

    .line 348
    invoke-direct {p0, v0, p1}, Lcom/oneplus/aod/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "alarm"

    .line 349
    invoke-direct {p0, v0, p1}, Lcom/oneplus/aod/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "event"

    .line 350
    invoke-direct {p0, v0, p1}, Lcom/oneplus/aod/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "reminder"

    .line 351
    invoke-direct {p0, v0, p1}, Lcom/oneplus/aod/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 352
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 329
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "sbnPackage":Ljava/lang/String;
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

.method private shouldSuppressVisualEffect(Lcom/oneplus/aod/NotificationData$Entry;I)Z
    .locals 4
    .param p1, "entry"    # Lcom/oneplus/aod/NotificationData$Entry;
    .param p2, "effect"    # I

    .line 225
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/NotificationData;->isExemptFromDndVisualSuppression(Lcom/oneplus/aod/NotificationData$Entry;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 226
    return v1

    .line 228
    :cond_0
    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    .line 229
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v2, :cond_2

    .line 230
    iget-object v2, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v3, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2, v0, v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 231
    iget-object v2, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getSuppressedVisualEffects()I

    move-result v2

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 233
    :cond_2
    return v1
.end method

.method public static showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 258
    const-string v0, "android"

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
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

    .line 258
    :goto_0
    return v0
.end method


# virtual methods
.method public add(Lcom/oneplus/aod/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "entry"    # Lcom/oneplus/aod/NotificationData$Entry;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 167
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-virtual {p0, p2}, Lcom/oneplus/aod/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 171
    return-void

    .line 169
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

    .line 410
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 411
    const-string v0, "OPNotificationData"

    const-string v1, "filterAndSort"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 414
    .local v1, "N":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 415
    iget-object v4, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/aod/NotificationData$Entry;

    .line 417
    .local v4, "entry":Lcom/oneplus/aod/NotificationData$Entry;
    invoke-virtual {p0, v4}, Lcom/oneplus/aod/NotificationData;->shouldFilterOut(Lcom/oneplus/aod/NotificationData$Entry;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 418
    goto :goto_1

    .line 421
    :cond_0
    iget-object v5, p0, Lcom/oneplus/aod/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    .end local v4    # "entry":Lcom/oneplus/aod/NotificationData$Entry;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    .end local v1    # "N":I
    .end local v3    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 425
    return v2

    .line 423
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
    .param p1, "key"    # Ljava/lang/String;

    .line 163
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

    .line 159
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImportance(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 364
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v0

    return v0

    .line 366
    :cond_0
    const/16 v0, -0x3e8

    return v0
.end method

.method public getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 372
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 374
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisibilityOverride(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 265
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getVisibilityOverride()I

    move-result v0

    return v0

    .line 267
    :cond_0
    const/16 v0, -0x3e8

    return v0
.end method

.method public isAmbient(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 336
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result v0

    return v0

    .line 338
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isExemptFromDndVisualSuppression(Lcom/oneplus/aod/NotificationData$Entry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/oneplus/aod/NotificationData$Entry;

    .line 237
    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/NotificationData;->isNotificationBlockedByPolicy(Landroid/app/Notification;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 238
    return v1

    .line 241
    :cond_0
    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 243
    return v2

    .line 245
    :cond_1
    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    return v2

    .line 248
    :cond_2
    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->mIsSystemNotification:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->mIsSystemNotification:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    return v2

    .line 251
    :cond_3
    return v1
.end method

.method public isLock(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 384
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isLock()Z

    move-result v0

    return v0

    .line 386
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/oneplus/aod/NotificationData$Entry;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "removed":Lcom/oneplus/aod/NotificationData$Entry;
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/NotificationData$Entry;

    move-object v0, v2

    .line 177
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 179
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oneplus/aod/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 180
    return-object v0

    .line 177
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
    .param p1, "service"    # Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    .line 48
    iput-object p1, p0, Lcom/oneplus/aod/NotificationData;->mService:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    .line 49
    return-void
.end method

.method public shouldFilterOut(Lcom/oneplus/aod/NotificationData$Entry;)Z
    .locals 6
    .param p1, "entry"    # Lcom/oneplus/aod/NotificationData$Entry;

    .line 184
    iget-object v0, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 185
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-interface {v1}, Lcom/oneplus/aod/NotificationData$Environment;->isDeviceProvisioned()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 186
    invoke-static {v0}, Lcom/oneplus/aod/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
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

    .line 188
    return v2

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/NotificationData$Environment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
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

    .line 193
    return v2

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-interface {v1}, Lcom/oneplus/aod/NotificationData$Environment;->onSecureLockScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->visibility:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    .line 198
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/oneplus/aod/NotificationData$Environment;->shouldHideNotifications(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    .line 199
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/oneplus/aod/NotificationData$Environment;->shouldHideNotifications(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
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

    .line 201
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

    .line 202
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/oneplus/aod/NotificationData$Environment;->shouldHideNotifications(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return v2

    .line 206
    :cond_3
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/NotificationData;->shouldSuppressNotificationList(Lcom/oneplus/aod/NotificationData$Entry;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    return v2

    .line 211
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

    .line 213
    const-string v1, "OPNotificationData"

    const-string v3, "shouldFilterOut: foreground-service disclosure for a user that does not need to show one"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return v2

    .line 217
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method public shouldSuppressNotificationList(Lcom/oneplus/aod/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/oneplus/aod/NotificationData$Entry;

    .line 221
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/NotificationData;->shouldSuppressVisualEffect(Lcom/oneplus/aod/NotificationData$Entry;I)Z

    move-result v0

    return v0
.end method

.method public updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 378
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 379
    return-void
.end method

.method public updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 7
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 390
    if-eqz p1, :cond_2

    .line 391
    iput-object p1, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 392
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 394
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 395
    iget-object v3, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/aod/NotificationData$Entry;

    .line 396
    .local v3, "entry":Lcom/oneplus/aod/NotificationData$Entry;
    iget-object v4, v3, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 397
    .local v4, "oldSbn":Landroid/service/notification/StatusBarNotification;
    iget-object v5, v3, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/oneplus/aod/NotificationData;->getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, "overrideGroupKey":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 399
    iget-object v6, v3, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6, v5}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 394
    .end local v3    # "entry":Lcom/oneplus/aod/NotificationData$Entry;
    .end local v4    # "oldSbn":Landroid/service/notification/StatusBarNotification;
    .end local v5    # "overrideGroupKey":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 403
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 406
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationData;->filterAndSort()Z

    .line 407
    return-void
.end method
