.class Lcom/android/server/usage/IntervalStats;
.super Ljava/lang/Object;
.source "IntervalStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/IntervalStats$EventTracker;
    }
.end annotation


# instance fields
.field public activeConfiguration:Landroid/content/res/Configuration;

.field public beginTime:J

.field public final configurations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/Configuration;",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field public endTime:J

.field public events:Landroid/app/usage/EventList;

.field public final interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public final keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public final keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public lastTimeSaved:J

.field private final mStringCache:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public final packageStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats$EventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats$EventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats$EventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats$EventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    return-void
.end method

.method private getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private isStatefulEvent(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isUserVisibleEvent(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method addEventStatsTo(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v3, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const/16 v2, 0xf

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    iget-object v7, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v10, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v12, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const/16 v9, 0x10

    move-object v8, p1

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v3, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const/16 v2, 0x11

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    iget-object v7, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v10, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v12, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const/16 v9, 0x12

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    return-void
.end method

.method buildEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents$Event;
    .locals 2

    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method commitTime(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    return-void
.end method

.method getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;
    .locals 3

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/ConfigurationStats;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v1}, Landroid/app/usage/ConfigurationStats;-><init>()V

    move-object v0, v1

    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    iput-object p1, v0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;
    .locals 3

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/usage/UsageStats;

    invoke-direct {v1}, Landroid/app/usage/UsageStats;-><init>()V

    move-object v0, v1

    invoke-direct {p0, p1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method incrementAppLaunchCount(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v0

    iget v1, v0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    return-void
.end method

.method update(Ljava/lang/String;JI)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p4, v2, :cond_0

    const/4 v2, 0x3

    if-ne p4, v2, :cond_2

    :cond_0
    iget v2, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    if-eq v2, v1, :cond_1

    iget v2, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    :cond_1
    iget-wide v2, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    sub-long v4, p2, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    :cond_2
    invoke-direct {p0, p4}, Lcom/android/server/usage/IntervalStats;->isStatefulEvent(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iput p4, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    :cond_3
    invoke-direct {p0, p4}, Lcom/android/server/usage/IntervalStats;->isUserVisibleEvent(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-wide p2, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    :cond_4
    iput-wide p2, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    if-ne p4, v1, :cond_5

    iget v2, v0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    :cond_5
    iput-wide p2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    return-void
.end method

.method updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v0

    iget-object v1, v0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    :cond_0
    iget-object v1, v0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iget-object v3, v0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v2, v0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    :goto_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method updateConfigurationStats(Landroid/content/res/Configuration;J)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/ConfigurationStats;

    iget-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iget-wide v3, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    sub-long v3, p2, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-wide/16 v1, 0x1

    sub-long v1, p2, v1

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v0

    iput-wide p2, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iget v1, v0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    iget-object v1, v0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v1, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    :cond_1
    iput-wide p2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    return-void
.end method

.method updateKeyguardHidden(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    return-void
.end method

.method updateKeyguardShown(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    return-void
.end method

.method updateScreenInteractive(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    return-void
.end method

.method updateScreenNonInteractive(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    return-void
.end method
