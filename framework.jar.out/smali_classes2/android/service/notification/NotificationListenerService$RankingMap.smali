.class public Landroid/service/notification/NotificationListenerService$RankingMap;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RankingMap"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotificationListenerService$RankingMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChannels:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mHidden:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mImportance:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImportanceExplanation:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIntercepted:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLocks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLockedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideGroupKeys:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOverridePeople:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

.field private mRanks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShowBadge:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSnoozeCriteria:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSuppressedVisualEffects:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserSentiment:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityOverrides:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2059
    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$RankingMap$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationListenerService$RankingMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    .line 1701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1702
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    .line 1703
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationListenerService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/service/notification/NotificationRankingUpdate;
    .param p2, "x1"    # Landroid/service/notification/NotificationListenerService$1;

    .line 1678
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>(Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method private buildChannelsLocked()V
    .locals 5

    .line 1970
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getChannels()Landroid/os/Bundle;

    move-result-object v0

    .line 1971
    .local v0, "channels":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mChannels:Landroid/util/ArrayMap;

    .line 1972
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1973
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mChannels:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1974
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1975
    :cond_0
    return-void
.end method

.method private buildHiddenLocked()V
    .locals 5

    .line 2015
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getHidden()Landroid/os/Bundle;

    move-result-object v0

    .line 2016
    .local v0, "hidden":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mHidden:Landroid/util/ArrayMap;

    .line 2017
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2018
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mHidden:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2019
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 2020
    :cond_0
    return-void
.end method

.method private buildImportanceExplanationLocked()V
    .locals 5

    .line 1952
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getImportanceExplanation()Landroid/os/Bundle;

    move-result-object v0

    .line 1953
    .local v0, "explanationBundle":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportanceExplanation:Landroid/util/ArrayMap;

    .line 1954
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1955
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportanceExplanation:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1957
    :cond_0
    return-void
.end method

.method private buildImportanceLocked()V
    .locals 6

    .line 1941
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    .line 1942
    .local v0, "orderedKeys":[Ljava/lang/String;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v1}, Landroid/service/notification/NotificationRankingUpdate;->getImportance()[I

    move-result-object v1

    .line 1943
    .local v1, "importance":[I
    new-instance v2, Landroid/util/ArrayMap;

    array-length v3, v0

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportance:Landroid/util/ArrayMap;

    .line 1944
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1945
    aget-object v3, v0, v2

    .line 1946
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportance:Landroid/util/ArrayMap;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    .end local v3    # "key":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1948
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private buildInterceptedSetLocked()V
    .locals 3

    .line 1917
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getInterceptedKeys()[Ljava/lang/String;

    move-result-object v0

    .line 1918
    .local v0, "dndInterceptedKeys":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    .line 1919
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1920
    return-void
.end method

.method private buildIsLock()V
    .locals 6

    .line 2027
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    .line 2028
    .local v0, "orderedKeys":[Ljava/lang/String;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v1}, Landroid/service/notification/NotificationRankingUpdate;->getIsLock()[Z

    move-result-object v1

    .line 2029
    .local v1, "isLock":[Z
    new-instance v2, Landroid/util/ArrayMap;

    array-length v3, v0

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIsLocks:Landroid/util/ArrayMap;

    .line 2030
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 2031
    aget-object v3, v0, v2

    .line 2032
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIsLocks:Landroid/util/ArrayMap;

    aget-boolean v5, v1, v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    .end local v3    # "key":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2034
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private buildLockedApps()V
    .locals 4

    .line 2038
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getLockedApps()[Ljava/lang/String;

    move-result-object v0

    .line 2039
    .local v0, "lockedApps":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mLockedApps:Ljava/util/List;

    .line 2040
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 2041
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mLockedApps:Ljava/util/List;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2040
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2043
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private buildOverrideGroupKeys()V
    .locals 5

    .line 1961
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getOverrideGroupKeys()Landroid/os/Bundle;

    move-result-object v0

    .line 1962
    .local v0, "overrideGroupKeys":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverrideGroupKeys:Landroid/util/ArrayMap;

    .line 1963
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1964
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverrideGroupKeys:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1965
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1966
    :cond_0
    return-void
.end method

.method private buildOverridePeopleLocked()V
    .locals 5

    .line 1979
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getOverridePeople()Landroid/os/Bundle;

    move-result-object v0

    .line 1980
    .local v0, "overridePeople":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverridePeople:Landroid/util/ArrayMap;

    .line 1981
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1982
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverridePeople:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1984
    :cond_0
    return-void
.end method

.method private buildRanksLocked()V
    .locals 5

    .line 1907
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    .line 1908
    .local v0, "orderedKeys":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArrayMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    .line 1909
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1910
    aget-object v2, v0, v1

    .line 1911
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    .end local v2    # "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1913
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private buildShowBadgeLocked()V
    .locals 5

    .line 1997
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getShowBadge()Landroid/os/Bundle;

    move-result-object v0

    .line 1998
    .local v0, "showBadge":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mShowBadge:Landroid/util/ArrayMap;

    .line 1999
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2000
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mShowBadge:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 2002
    :cond_0
    return-void
.end method

.method private buildSnoozeCriteriaLocked()V
    .locals 5

    .line 1988
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getSnoozeCriteria()Landroid/os/Bundle;

    move-result-object v0

    .line 1989
    .local v0, "snoozeCriteria":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSnoozeCriteria:Landroid/util/ArrayMap;

    .line 1990
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1991
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSnoozeCriteria:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1992
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1993
    :cond_0
    return-void
.end method

.method private buildSuppressedVisualEffectsLocked()V
    .locals 5

    .line 1933
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getSuppressedVisualEffects()Landroid/os/Bundle;

    move-result-object v0

    .line 1934
    .local v0, "suppressedBundle":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSuppressedVisualEffects:Landroid/util/ArrayMap;

    .line 1935
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1936
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSuppressedVisualEffects:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1938
    :cond_0
    return-void
.end method

.method private buildUserSentimentLocked()V
    .locals 5

    .line 2006
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getUserSentiment()Landroid/os/Bundle;

    move-result-object v0

    .line 2007
    .local v0, "userSentiment":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mUserSentiment:Landroid/util/ArrayMap;

    .line 2008
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2009
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mUserSentiment:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2010
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 2011
    :cond_0
    return-void
.end method

.method private buildVisibilityOverridesLocked()V
    .locals 5

    .line 1924
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getVisibilityOverrides()Landroid/os/Bundle;

    move-result-object v0

    .line 1925
    .local v0, "visibilityBundle":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    .line 1926
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1927
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1928
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1929
    :cond_0
    return-void
.end method

.method private getChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1815
    monitor-enter p0

    .line 1816
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mChannels:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1817
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildChannelsLocked()V

    .line 1819
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1820
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mChannels:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    return-object v0

    .line 1819
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getHidden(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1863
    monitor-enter p0

    .line 1864
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mHidden:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1865
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildHiddenLocked()V

    .line 1867
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1868
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mHidden:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1869
    .local v0, "hidden":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    .line 1867
    .end local v0    # "hidden":Ljava/lang/Boolean;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getImportance(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1784
    monitor-enter p0

    .line 1785
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportance:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1786
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildImportanceLocked()V

    .line 1788
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1789
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportance:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1790
    .local v0, "importance":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 1791
    const/4 v1, 0x3

    return v1

    .line 1793
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1788
    .end local v0    # "importance":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getImportanceExplanation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1797
    monitor-enter p0

    .line 1798
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportanceExplanation:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1799
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildImportanceExplanationLocked()V

    .line 1801
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1802
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportanceExplanation:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1801
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getIsLock(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 1876
    monitor-enter p0

    .line 1877
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIsLocks:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1878
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildIsLock()V

    .line 1880
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1881
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIsLocks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1882
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIsLocks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1885
    :cond_1
    monitor-enter p0

    .line 1886
    :try_start_1
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mLockedApps:Ljava/util/List;

    if-nez v0, :cond_2

    .line 1887
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildLockedApps()V

    .line 1889
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1890
    const-string v0, "[|]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1891
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-lt v1, v2, :cond_4

    .line 1892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    aget-object v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1893
    .local v1, "str":Ljava/lang/String;
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mLockedApps:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1894
    return v2

    .line 1896
    :cond_3
    return v3

    .line 1899
    .end local v1    # "str":Ljava/lang/String;
    :cond_4
    return v3

    .line 1889
    .end local v0    # "split":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1880
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1806
    monitor-enter p0

    .line 1807
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverrideGroupKeys:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1808
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildOverrideGroupKeys()V

    .line 1810
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1811
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverrideGroupKeys:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1810
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getOverridePeople(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1824
    monitor-enter p0

    .line 1825
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverridePeople:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1826
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildOverridePeopleLocked()V

    .line 1828
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1829
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverridePeople:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    .line 1828
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getRank(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1739
    monitor-enter p0

    .line 1740
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1741
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildRanksLocked()V

    .line 1743
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1744
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1745
    .local v0, "rank":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 1743
    .end local v0    # "rank":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getShowBadge(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1842
    monitor-enter p0

    .line 1843
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mShowBadge:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1844
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildShowBadgeLocked()V

    .line 1846
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1847
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mShowBadge:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1848
    .local v0, "showBadge":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    .line 1846
    .end local v0    # "showBadge":Ljava/lang/Boolean;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getSnoozeCriteria(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation

    .line 1833
    monitor-enter p0

    .line 1834
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSnoozeCriteria:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1835
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildSnoozeCriteriaLocked()V

    .line 1837
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1838
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSnoozeCriteria:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    .line 1837
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getSuppressedVisualEffects(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1771
    monitor-enter p0

    .line 1772
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSuppressedVisualEffects:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1773
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildSuppressedVisualEffectsLocked()V

    .line 1775
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1776
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSuppressedVisualEffects:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1777
    .local v0, "suppressed":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 1778
    const/4 v1, 0x0

    return v1

    .line 1780
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1775
    .end local v0    # "suppressed":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getUserSentiment(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1852
    monitor-enter p0

    .line 1853
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mUserSentiment:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1854
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildUserSentimentLocked()V

    .line 1856
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1857
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mUserSentiment:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1858
    .local v0, "userSentiment":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 1859
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1858
    :goto_0
    return v1

    .line 1856
    .end local v0    # "userSentiment":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getVisibilityOverride(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1758
    monitor-enter p0

    .line 1759
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1760
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildVisibilityOverridesLocked()V

    .line 1762
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1763
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1764
    .local v0, "override":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 1765
    const/16 v1, -0x3e8

    return v1

    .line 1767
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1762
    .end local v0    # "override":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isIntercepted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1749
    monitor-enter p0

    .line 1750
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 1751
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildInterceptedSetLocked()V

    .line 1753
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1754
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1753
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 2051
    const/4 v0, 0x0

    return v0
.end method

.method public getOrderedKeys()[Ljava/lang/String;
    .locals 1

    .line 1712
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z
    .locals 18
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "outRanking"    # Landroid/service/notification/NotificationListenerService$Ranking;

    .line 1723
    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRank(Ljava/lang/String;)I

    move-result v16

    .line 1724
    .local v16, "rank":I
    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->isIntercepted(Ljava/lang/String;)Z

    move-result v0

    .line 1725
    const/16 v17, 0x1

    xor-int/lit8 v3, v0, 0x1

    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v4

    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getSuppressedVisualEffects(Ljava/lang/String;)I

    move-result v5

    .line 1726
    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getImportance(Ljava/lang/String;)I

    move-result v6

    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getImportanceExplanation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1727
    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v9

    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOverridePeople(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getSnoozeCriteria(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1728
    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getShowBadge(Ljava/lang/String;)Z

    move-result v12

    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getUserSentiment(Ljava/lang/String;)I

    move-result v13

    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getHidden(Ljava/lang/String;)Z

    move-result v14

    .line 1732
    invoke-direct/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getIsLock(Ljava/lang/String;)Z

    move-result v15

    .line 1724
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual/range {v0 .. v15}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZZ)V

    .line 1735
    if-ltz v16, :cond_0

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    :goto_0
    return v17
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2056
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2057
    return-void
.end method
