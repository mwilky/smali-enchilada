.class final Lcom/android/server/usage/UsageStatsXmlV1;
.super Ljava/lang/Object;
.source "UsageStatsXmlV1.java"


# static fields
.field private static final ACTIVE_ATTR:Ljava/lang/String; = "active"

.field private static final APP_LAUNCH_COUNT_ATTR:Ljava/lang/String; = "appLaunchCount"

.field private static final CATEGORY_TAG:Ljava/lang/String; = "category"

.field private static final CHOOSER_COUNT_TAG:Ljava/lang/String; = "chosen_action"

.field private static final CLASS_ATTR:Ljava/lang/String; = "class"

.field private static final CONFIGURATIONS_TAG:Ljava/lang/String; = "configurations"

.field private static final CONFIG_TAG:Ljava/lang/String; = "config"

.field private static final COUNT:Ljava/lang/String; = "count"

.field private static final COUNT_ATTR:Ljava/lang/String; = "count"

.field private static final END_TIME_ATTR:Ljava/lang/String; = "endTime"

.field private static final EVENT_LOG_TAG:Ljava/lang/String; = "event-log"

.field private static final EVENT_TAG:Ljava/lang/String; = "event"

.field private static final FLAGS_ATTR:Ljava/lang/String; = "flags"

.field private static final INTERACTIVE_TAG:Ljava/lang/String; = "interactive"

.field private static final KEYGUARD_HIDDEN_TAG:Ljava/lang/String; = "keyguard-hidden"

.field private static final KEYGUARD_SHOWN_TAG:Ljava/lang/String; = "keyguard-shown"

.field private static final LAST_EVENT_ATTR:Ljava/lang/String; = "lastEvent"

.field private static final LAST_TIME_ACTIVE_ATTR:Ljava/lang/String; = "lastTimeActive"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NON_INTERACTIVE_TAG:Ljava/lang/String; = "non-interactive"

.field private static final PACKAGES_TAG:Ljava/lang/String; = "packages"

.field private static final PACKAGE_ATTR:Ljava/lang/String; = "package"

.field private static final PACKAGE_TAG:Ljava/lang/String; = "package"

.field private static final SHORTCUT_ID_ATTR:Ljava/lang/String; = "shortcutId"

.field private static final STANDBY_BUCKET_ATTR:Ljava/lang/String; = "standbyBucket"

.field private static final TAG:Ljava/lang/String; = "UsageStatsXmlV1"

.field private static final TIME_ATTR:Ljava/lang/String; = "time"

.field private static final TOTAL_TIME_ACTIVE_ATTR:Ljava/lang/String; = "timeActive"

.field private static final TYPE_ATTR:Ljava/lang/String; = "type"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadChooserCounts(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/usage/UsageStats;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    :cond_1
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const-string v2, "chosen_action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "category"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "name"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "count"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method private static loadConfigStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-static {p0, v0}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v4, "lastTimeActive"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    const-string/jumbo v2, "timeActive"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-string v2, "count"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    const-string v2, "active"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v2, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    :cond_0
    return-void
.end method

.method private static loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "count"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    const-string/jumbo v0, "time"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private static loadEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "package"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "class"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/usage/IntervalStats;->buildEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    const-string v3, "flags"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v3, "time"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    const-string/jumbo v3, "type"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget v3, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1

    const/16 v5, 0xb

    if-eq v3, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "standbyBucket"

    invoke-static {p0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "shortcutId"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p0, v3}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    nop

    :goto_1
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    if-nez v3, :cond_4

    new-instance v3, Landroid/app/usage/EventList;

    invoke-direct {v3}, Landroid/app/usage/EventList;-><init>()V

    iput-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    :cond_4
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V

    return-void

    :cond_5
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "no package attribute present"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static loadUsageStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v4, "lastTimeActive"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    const-string/jumbo v2, "timeActive"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    const-string/jumbo v2, "lastEvent"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/usage/UsageStats;->mLastEvent:I

    const-string v2, "appLaunchCount"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const-string/jumbo v4, "package"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "chosen_action"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "name"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v1, v4}, Lcom/android/server/usage/UsageStatsXmlV1;->loadChooserCounts(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/usage/UsageStats;Ljava/lang/String;)V

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "no package attribute present"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->clear()V

    :cond_0
    iget-wide v0, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string v2, "endTime"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    :cond_1
    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v1, "interactive"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v1, "keyguard-shown"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v3, v4

    goto :goto_2

    :sswitch_2
    const-string v1, "event"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_3
    const-string/jumbo v1, "package"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_4
    const-string/jumbo v1, "non-interactive"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :sswitch_5
    const-string/jumbo v3, "keyguard-hidden"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :sswitch_6
    const-string v1, "config"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x5

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v6

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    goto :goto_3

    :pswitch_1
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadConfigStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    goto :goto_3

    :pswitch_2
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadUsageStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    goto :goto_3

    :pswitch_3
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_3

    :pswitch_4
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_3

    :pswitch_5
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_3

    :pswitch_6
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    nop

    :goto_3
    goto/16 :goto_0

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50c07cbe -> :sswitch_6
        -0x45b2e24f -> :sswitch_5
        -0x301c401e -> :sswitch_4
        -0x301acbba -> :sswitch_3
        0x5c6729a -> :sswitch_2
        0x1f63682a -> :sswitch_1
        0x6deacee2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static write(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "endTime"

    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v1, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v0, "interactive"

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v1, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v2, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsXmlV1;->writeCountAndTime(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;IJ)V

    const-string/jumbo v0, "non-interactive"

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v1, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v2, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsXmlV1;->writeCountAndTime(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;IJ)V

    const-string/jumbo v0, "keyguard-shown"

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v1, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v2, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsXmlV1;->writeCountAndTime(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;IJ)V

    const-string/jumbo v0, "keyguard-hidden"

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v1, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v2, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsXmlV1;->writeCountAndTime(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;IJ)V

    const-string/jumbo v0, "packages"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    invoke-static {p0, p1, v4}, Lcom/android/server/usage/UsageStatsXmlV1;->writeUsageStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "packages"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "configurations"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_1

    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/ConfigurationStats;

    invoke-static {p0, p1, v6, v5}, Lcom/android/server/usage/UsageStatsXmlV1;->writeConfigStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "configurations"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "event-log"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v4}, Landroid/app/usage/EventList;->size()I

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    nop

    :goto_3
    if-ge v2, v4, :cond_3

    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v5, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v5

    invoke-static {p0, p1, v5}, Lcom/android/server/usage/UsageStatsXmlV1;->writeEvent(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const-string v2, "event-log"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static writeChooserCounts(Lorg/xmlpull/v1/XmlSerializer;Landroid/app/usage/UsageStats;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "chosen_action"

    const/4 v5, 0x0

    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "name"

    invoke-static {p0, v4, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsXmlV1;->writeCountsForAction(Lorg/xmlpull/v1/XmlSerializer;Landroid/util/ArrayMap;)V

    const-string v4, "chosen_action"

    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private static writeConfigStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "config"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "lastTimeActive"

    iget-wide v2, p2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v0, "timeActive"

    iget-wide v2, p2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string v0, "count"

    iget v2, p2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    if-eqz p3, :cond_0

    const-string v0, "active"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p2, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p0, v0}, Landroid/content/res/Configuration;->writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V

    const-string v0, "config"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static writeCountAndTime(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "count"

    invoke-static {p0, v1, p2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v1, "time"

    invoke-static {p0, v1, p3, p4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static writeCountsForAction(Lorg/xmlpull/v1/XmlSerializer;Landroid/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    const-string v4, "category"

    const/4 v5, 0x0

    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "name"

    invoke-static {p0, v4, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v4, "count"

    invoke-static {p0, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string v4, "category"

    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static writeEvent(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "event"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "time"

    iget-wide v2, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v0, "package"

    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "class"

    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "flags"

    iget v2, p2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    iget v2, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/16 v2, 0xb

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz v0, :cond_4

    const-string/jumbo v0, "standbyBucket"

    iget v2, p2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "shortcutId"

    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_4

    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p0, v0}, Landroid/content/res/Configuration;->writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V

    :cond_4
    :goto_0
    const-string v0, "event"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static writeUsageStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "lastTimeActive"

    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v0, "package"

    iget-object v2, p2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "timeActive"

    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v0, "lastEvent"

    iget v2, p2, Landroid/app/usage/UsageStats;->mLastEvent:I

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    iget v0, p2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    if-lez v0, :cond_0

    const-string v0, "appLaunchCount"

    iget v2, p2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_0
    invoke-static {p0, p2}, Lcom/android/server/usage/UsageStatsXmlV1;->writeChooserCounts(Lorg/xmlpull/v1/XmlSerializer;Landroid/app/usage/UsageStats;)V

    const-string/jumbo v0, "package"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
