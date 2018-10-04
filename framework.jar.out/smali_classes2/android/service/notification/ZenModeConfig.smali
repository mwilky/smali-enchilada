.class public Landroid/service/notification/ZenModeConfig;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeConfig$Diff;,
        Landroid/service/notification/ZenModeConfig$ZenRule;,
        Landroid/service/notification/ZenModeConfig$EventInfo;,
        Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    }
.end annotation


# static fields
.field private static final ALLOW_ATT_ALARMS:Ljava/lang/String; = "alarms"

.field private static final ALLOW_ATT_CALLS:Ljava/lang/String; = "calls"

.field private static final ALLOW_ATT_CALLS_FROM:Ljava/lang/String; = "callsFrom"

.field private static final ALLOW_ATT_EVENTS:Ljava/lang/String; = "events"

.field private static final ALLOW_ATT_FROM:Ljava/lang/String; = "from"

.field private static final ALLOW_ATT_MEDIA:Ljava/lang/String; = "media"

.field private static final ALLOW_ATT_MESSAGES:Ljava/lang/String; = "messages"

.field private static final ALLOW_ATT_MESSAGES_FROM:Ljava/lang/String; = "messagesFrom"

.field private static final ALLOW_ATT_REMINDERS:Ljava/lang/String; = "reminders"

.field private static final ALLOW_ATT_REPEAT_CALLERS:Ljava/lang/String; = "repeatCallers"

.field private static final ALLOW_ATT_SCREEN_OFF:Ljava/lang/String; = "visualScreenOff"

.field private static final ALLOW_ATT_SCREEN_ON:Ljava/lang/String; = "visualScreenOn"

.field private static final ALLOW_ATT_SYSTEM:Ljava/lang/String; = "system"

.field private static final ALLOW_TAG:Ljava/lang/String; = "allow"

.field public static final ALL_DAYS:[I

.field private static final AUTOMATIC_TAG:Ljava/lang/String; = "automatic"

.field private static final CONDITION_ATT_FLAGS:Ljava/lang/String; = "flags"

.field private static final CONDITION_ATT_ICON:Ljava/lang/String; = "icon"

.field private static final CONDITION_ATT_ID:Ljava/lang/String; = "id"

.field private static final CONDITION_ATT_LINE1:Ljava/lang/String; = "line1"

.field private static final CONDITION_ATT_LINE2:Ljava/lang/String; = "line2"

.field private static final CONDITION_ATT_STATE:Ljava/lang/String; = "state"

.field private static final CONDITION_ATT_SUMMARY:Ljava/lang/String; = "summary"

.field public static final COUNTDOWN_PATH:Ljava/lang/String; = "countdown"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAY_MINUTES:I = 0x5a0

.field private static final DEFAULT_ALLOW_ALARMS:Z = true

.field private static final DEFAULT_ALLOW_CALLS:Z = true

.field private static final DEFAULT_ALLOW_EVENTS:Z = false

.field private static final DEFAULT_ALLOW_MEDIA:Z = true

.field private static final DEFAULT_ALLOW_MESSAGES:Z = false

.field private static final DEFAULT_ALLOW_REMINDERS:Z = false

.field private static final DEFAULT_ALLOW_REPEAT_CALLERS:Z = true

.field private static final DEFAULT_ALLOW_SYSTEM:Z = false

.field private static final DEFAULT_CALLS_SOURCE:I = 0x2

.field private static final DEFAULT_CHANNELS_BYPASSING_DND:Z = false

.field public static final DEFAULT_RULE_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_SOURCE:I = 0x1

.field private static final DEFAULT_SUPPRESSED_VISUAL_EFFECTS:I = 0x0

.field private static final DISALLOW_ATT_VISUAL_EFFECTS:Ljava/lang/String; = "visualEffects"

.field private static final DISALLOW_TAG:Ljava/lang/String; = "disallow"

.field public static final EVENTS_DEFAULT_RULE_ID:Ljava/lang/String; = "EVENTS_DEFAULT_RULE"

.field public static final EVENT_PATH:Ljava/lang/String; = "event"

.field public static final EVERY_NIGHT_DEFAULT_RULE_ID:Ljava/lang/String; = "EVERY_NIGHT_DEFAULT_RULE"

.field public static final IS_ALARM_PATH:Ljava/lang/String; = "alarm"

.field private static final MANUAL_TAG:Ljava/lang/String; = "manual"

.field public static final MAX_SOURCE:I = 0x2

.field private static final MINUTES_MS:I = 0xea60

.field public static final MINUTE_BUCKETS:[I

.field private static final RULE_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final RULE_ATT_CONDITION_ID:Ljava/lang/String; = "conditionId"

.field private static final RULE_ATT_CREATION_TIME:Ljava/lang/String; = "creationTime"

.field private static final RULE_ATT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final RULE_ATT_ENABLER:Ljava/lang/String; = "enabler"

.field private static final RULE_ATT_ID:Ljava/lang/String; = "ruleId"

.field private static final RULE_ATT_NAME:Ljava/lang/String; = "name"

.field private static final RULE_ATT_SNOOZING:Ljava/lang/String; = "snoozing"

.field private static final RULE_ATT_ZEN:Ljava/lang/String; = "zen"

.field public static final SCHEDULE_PATH:Ljava/lang/String; = "schedule"

.field private static final SECONDS_MS:I = 0x3e8

.field public static final SOURCE_ANYONE:I = 0x0

.field public static final SOURCE_CONTACT:I = 0x1

.field public static final SOURCE_STAR:I = 0x2

.field private static final STATE_ATT_CHANNELS_BYPASSING_DND:Ljava/lang/String; = "areChannelsBypassingDnd"

.field private static final STATE_TAG:Ljava/lang/String; = "state"

.field public static final SYSTEM_AUTHORITY:Ljava/lang/String; = "android"

.field private static TAG:Ljava/lang/String; = null

.field public static final XML_VERSION:I = 0x8

.field private static final ZEN_ATT_USER:Ljava/lang/String; = "user"

.field private static final ZEN_ATT_VERSION:Ljava/lang/String; = "version"

.field public static final ZEN_TAG:Ljava/lang/String; = "zen"

.field private static final ZERO_VALUE_MS:I = 0x2710


# instance fields
.field public allowAlarms:Z

.field public allowCalls:Z

.field public allowCallsFrom:I

.field public allowEvents:Z

.field public allowMedia:Z

.field public allowMessages:Z

.field public allowMessagesFrom:I

.field public allowReminders:Z

.field public allowRepeatCallers:Z

.field public allowSystem:Z

.field public areChannelsBypassingDnd:Z

.field public automaticRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field

.field public manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

.field public suppressedVisualEffects:I

.field public user:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ZenModeConfig"

    sput-object v0, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    const-string v0, "EVERY_NIGHT_DEFAULT_RULE"

    const-string v1, "EVENTS_DEFAULT_RULE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->generateMinuteBuckets()[I

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    new-instance v0, Landroid/service/notification/ZenModeConfig$1;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$1;-><init>()V

    sput-object v0, Landroid/service/notification/ZenModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    const/4 v2, 0x2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    const/4 v2, 0x2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->user:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_5

    new-array v3, v2, [Ljava/lang/String;

    new-array v4, v2, [Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    sget-object v5, Landroid/service/notification/ZenModeConfig$ZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    move v5, v1

    :goto_5
    if-ge v5, v2, :cond_5

    iget-object v6, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    aget-object v7, v3, v5

    aget-object v8, v4, v5

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v0, :cond_6

    move v3, v0

    goto :goto_6

    :cond_6
    move v3, v1

    :goto_6
    iput-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v0, :cond_7

    move v3, v0

    goto :goto_7

    :cond_7
    move v3, v1

    :goto_7
    iput-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v0, :cond_8

    move v3, v0

    goto :goto_8

    :cond_8
    move v3, v1

    :goto_8
    iput-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v0, :cond_9

    goto :goto_9

    :cond_9
    move v0, v1

    :goto_9
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    return-void
.end method

.method static synthetic access$200([I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;",
            "Landroid/util/ArrayMap<",
            "TT;*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/app/NotificationManager$Policy;)Z
    .locals 8

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iget v5, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    iget v6, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_4

    move v6, v1

    goto :goto_4

    :cond_4
    move v6, v2

    :goto_4
    iget v7, p0, Landroid/app/NotificationManager$Policy;->state:I

    and-int/2addr v7, v1

    if-eqz v7, :cond_5

    move v7, v1

    goto :goto_5

    :cond_5
    move v7, v2

    :goto_5
    if-nez v0, :cond_6

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    if-nez v7, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    return v1
.end method

.method public static areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static areAllZenBehaviorSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private diff(Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 9

    new-instance v0, Landroid/service/notification/ZenModeConfig$Diff;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$Diff;-><init>()V

    if-nez p1, :cond_0

    const-string v1, "config"

    const-string v2, "delete"

    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->access$000(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object v1

    return-object v1

    :cond_0
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    iget v2, p1, Landroid/service/notification/ZenModeConfig;->user:I

    if-eq v1, v2, :cond_1

    const-string/jumbo v1, "user"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_1
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-eq v1, v2, :cond_2

    const-string v1, "allowAlarms"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_2
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    if-eq v1, v2, :cond_3

    const-string v1, "allowMedia"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_3
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    if-eq v1, v2, :cond_4

    const-string v1, "allowSystem"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_4
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eq v1, v2, :cond_5

    const-string v1, "allowCalls"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_5
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-eq v1, v2, :cond_6

    const-string v1, "allowReminders"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_6
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eq v1, v2, :cond_7

    const-string v1, "allowEvents"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_7
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eq v1, v2, :cond_8

    const-string v1, "allowRepeatCallers"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_8
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eq v1, v2, :cond_9

    const-string v1, "allowMessages"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_9
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v2, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-eq v1, v2, :cond_a

    const-string v1, "allowCallsFrom"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_a
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v2, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    if-eq v1, v2, :cond_b

    const-string v1, "allowMessagesFrom"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_b
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    iget v2, p1, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    if-eq v1, v2, :cond_c

    const-string/jumbo v1, "suppressedVisualEffects"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_c
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Landroid/service/notification/ZenModeConfig;->addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Landroid/service/notification/ZenModeConfig;->addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_f

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const/4 v6, 0x0

    if-eqz v5, :cond_d

    iget-object v5, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    goto :goto_1

    :cond_d
    move-object v5, v6

    :goto_1
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v7, :cond_e

    iget-object v6, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    nop

    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "automaticRule["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v5, v6}, Landroid/service/notification/ZenModeConfig$ZenRule;->access$100(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_f
    const-string/jumbo v3, "manualRule"

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v0, v3, v4, v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->access$100(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    iget-boolean v4, p1, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    if-eq v3, v4, :cond_10

    const-string v3, "areChannelsBypassingDnd"

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p1, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_10
    return-object v0
.end method

.method public static diff(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 3

    if-nez p0, :cond_1

    new-instance v0, Landroid/service/notification/ZenModeConfig$Diff;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$Diff;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "config"

    const-string v2, "insert"

    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->access$000(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/service/notification/ZenModeConfig;->diff(Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object v0

    return-object v0
.end method

.method private static generateMinuteBuckets()[I
    .locals 6

    const/16 v0, 0xc

    const/16 v1, 0xf

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    const/16 v3, 0x1e

    aput v3, v2, v1

    const/4 v3, 0x2

    const/16 v4, 0x2d

    aput v4, v2, v3

    nop

    :goto_0
    const/16 v4, 0xc

    if-gt v1, v4, :cond_0

    add-int v4, v3, v1

    const/16 v5, 0x3c

    mul-int/2addr v5, v1

    aput v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static getConditionLine(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZZ)Ljava/lang/String;
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    if-nez v7, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v8, ""

    iget-object v0, v7, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v0, :cond_7

    iget-object v0, v7, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v9, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v0, v7, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v7, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/service/notification/ZenModeConfig;->getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_1
    if-nez v9, :cond_2

    const v0, 0x104072d

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    invoke-static {v9}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v10

    iget-object v0, v7, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v12, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v4, v10, v13

    long-to-float v0, v4

    const v1, 0x476a6000    # 60000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object v0, v6

    move-wide v1, v10

    move-wide v15, v4

    move/from16 v4, p2

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v12

    :cond_3
    if-nez v12, :cond_4

    const-string v0, ""

    move-object v1, v0

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    iget-object v1, v12, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v1, v12, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, ""

    goto :goto_1

    :cond_6
    move-object v2, v1

    :goto_1
    move-object v8, v2

    :cond_7
    :goto_2
    iget-object v1, v7, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    move-object v8, v3

    goto :goto_4

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104072f

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v5, v9

    const/4 v9, 0x1

    iget-object v10, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v10, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    :cond_9
    :goto_4
    goto :goto_3

    :cond_a
    return-object v8
.end method

.method public static getConditionSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/service/notification/ZenModeConfig;->getConditionLine(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, ""

    const-wide/16 v2, -0x1

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v4, :cond_5

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v5, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-static {p0, v5}, Landroid/service/notification/ZenModeConfig;->getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v1, v5

    :cond_1
    goto :goto_0

    :cond_2
    if-nez v4, :cond_4

    if-eqz p3, :cond_3

    const v0, 0x104072d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v0

    :cond_4
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_5

    nop

    invoke-static {v2, v3}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v5

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-static {p0, v2, v3, v5, v6}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v5

    const v6, 0x1040730

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_0
    iget-object v4, p2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    return-object v0

    :cond_7
    :goto_2
    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {p0, v6}, Landroid/service/notification/ZenModeConfig;->parseAutomaticRuleEndTime(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-lez v8, :cond_8

    move-wide v2, v6

    iget-object v1, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    :cond_8
    nop

    :cond_9
    goto :goto_1

    :cond_a
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object v0, v1

    nop

    :cond_b
    return-object v0

    :cond_c
    :goto_3
    return-object v0
.end method

.method public static getEventConditionProvider()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "EventConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_0

    const-string v1, "EEE "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Hm"

    goto :goto_1

    :cond_1
    const-string v1, "hma"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method private static getNextAlarm(Landroid/content/Context;)J
    .locals 4

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2
.end method

.method public static getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v4, :cond_0

    return-object v3

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    const-string v3, "Error loading owner caption"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v1, ""

    return-object v1
.end method

.method public static getScheduleConditionProvider()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "ScheduleConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isToday(J)Z
    .locals 5

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidCountdownConditionId(Landroid/net/Uri;)Z
    .locals 4

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z
    .locals 5

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    const-string v0, "alarm"

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing countdown alarm condition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    return v1
.end method

.method public static isValidEventConditionId(Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidHour(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x18

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1

    if-eqz p0, :cond_1

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

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

.method public static isValidMinute(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x3c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidScheduleConditionId(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v2, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private static isValidSource(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isZenOverridingRinger(ILandroid/service/notification/ZenModeConfig;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static newRuleId()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseAutomaticRuleEndTime(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 7

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ScheduleCalendar;->getNextChangeTime(J)J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/service/notification/ScheduleCalendar;->exitAtAlarm()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->getNextAlarm(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/service/notification/ScheduleCalendar;->maybeSetNextAlarm(JJ)V

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ScheduleCalendar;->shouldExitForAlarm(J)Z

    move-result v5

    if-eqz v5, :cond_1

    return-wide v3

    :cond_1
    return-wide v1

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static prioritySendersToSource(II)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    return p1

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "id"

    invoke-static {v1, v0}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v10, :cond_0

    return-object v11

    :cond_0
    const-string/jumbo v0, "summary"

    invoke-interface {v1, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "line1"

    invoke-interface {v1, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v0, "line2"

    invoke-interface {v1, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v0, "icon"

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    const-string/jumbo v0, "state"

    invoke-static {v1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v16

    const-string v0, "flags"

    invoke-static {v1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    :try_start_0
    new-instance v0, Landroid/service/notification/Condition;

    move-object v2, v0

    move-object v3, v10

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move v7, v15

    move/from16 v8, v16

    invoke-direct/range {v2 .. v9}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    const-string v3, "Unable to read condition xml"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v11
.end method

.method public static readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .locals 7

    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    const-string/jumbo v1, "snoozing"

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    const-string/jumbo v1, "name"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const-string/jumbo v1, "zen"

    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    invoke-static {v1, v4}, Landroid/service/notification/ZenModeConfig;->tryParseZenMode(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    iget v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-ne v5, v4, :cond_0

    sget-object v2, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad zen mode in rule xml:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    const-string v4, "conditionId"

    invoke-static {p0, v4}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const-string v4, "component"

    invoke-static {p0, v4}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const-string v4, "creationTime"

    const-wide/16 v5, 0x0

    invoke-static {p0, v4, v5, v6}, Landroid/service/notification/ZenModeConfig;->safeLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    const-string v4, "enabler"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;

    move-result-object v3

    iput-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eq v3, v2, :cond_1

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const-string v4, "android"

    invoke-static {v3, v4}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating zenMode of automatic rule "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    :cond_1
    return-object v0
.end method

.method public static readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "zen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v1

    :cond_1
    new-instance v4, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v4}, Landroid/service/notification/ZenModeConfig;-><init>()V

    const-string/jumbo v5, "version"

    const/16 v6, 0x8

    invoke-static {p0, v5, v6}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/service/notification/ZenModeConfig;->version:I

    const-string/jumbo v5, "user"

    iget v6, v4, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {p0, v5, v6}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/service/notification/ZenModeConfig;->user:I

    const/4 v5, 0x0

    move-object v6, v3

    move v3, v0

    move v0, v5

    :cond_2
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v3, v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_f

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    if-ne v3, v7, :cond_3

    const-string/jumbo v7, "zen"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    return-object v4

    :cond_3
    if-ne v3, v2, :cond_2

    const-string v7, "allow"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "calls"

    invoke-static {p0, v7, v8}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v4, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    const-string/jumbo v7, "repeatCallers"

    invoke-static {p0, v7, v8}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v4, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    const-string/jumbo v7, "messages"

    invoke-static {p0, v7, v5}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v4, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    const-string/jumbo v7, "reminders"

    invoke-static {p0, v7, v5}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v4, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    const-string v7, "events"

    invoke-static {p0, v7, v5}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v4, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    const-string v7, "from"

    const/4 v9, -0x1

    invoke-static {p0, v7, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    const-string v10, "callsFrom"

    invoke-static {p0, v10, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v11, "messagesFrom"

    invoke-static {p0, v11, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v9}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v11

    if-eqz v11, :cond_4

    iput v10, v4, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iput v9, v4, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    goto :goto_1

    :cond_4
    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v11

    if-eqz v11, :cond_5

    sget-object v11, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Migrating existing shared \'from\': "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, v4, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iput v7, v4, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    goto :goto_1

    :cond_5
    iput v2, v4, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iput v8, v4, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    :goto_1
    const-string v11, "alarms"

    invoke-static {p0, v11, v8}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v4, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    const-string/jumbo v11, "media"

    invoke-static {p0, v11, v8}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v4, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    const-string/jumbo v8, "system"

    invoke-static {p0, v8, v5}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v4, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    const-string/jumbo v8, "visualScreenOff"

    invoke-static {p0, v8}, Landroid/service/notification/ZenModeConfig;->unsafeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_6

    const/4 v0, 0x1

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    iget v11, v4, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    or-int/lit8 v11, v11, 0xc

    iput v11, v4, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    :cond_6
    const-string/jumbo v11, "visualScreenOn"

    invoke-static {p0, v11}, Landroid/service/notification/ZenModeConfig;->unsafeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_7

    const/4 v0, 0x1

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_7

    iget v12, v4, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v4, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    :cond_7
    if-eqz v0, :cond_8

    sget-object v12, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Migrated visual effects to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v4, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget v12, v4, Landroid/service/notification/ZenModeConfig;->version:I

    const/4 v13, 0x7

    if-ge v12, v13, :cond_9

    const-string/jumbo v12, "visualEffects"

    invoke-static {p0, v12, v5}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    iput v12, v4, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    sget-object v12, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    const-string v13, "Migrated visual effects to default: 0"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    goto/16 :goto_0

    :cond_a
    const-string v7, "disallow"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-nez v0, :cond_b

    const-string/jumbo v7, "visualEffects"

    invoke-static {p0, v7, v5}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    iput v7, v4, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    sget-object v7, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "suppressedVisualEffects to default: 0"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v7, "manual"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v7

    iput-object v7, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    goto/16 :goto_0

    :cond_c
    const-string v7, "automatic"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string/jumbo v7, "ruleId"

    invoke-interface {p0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v8

    if-eqz v7, :cond_d

    if-eqz v8, :cond_d

    iput-object v7, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v9, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    goto/16 :goto_0

    :cond_e
    const-string/jumbo v7, "state"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "areChannelsBypassingDnd"

    invoke-static {p0, v7, v5}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v4, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    goto/16 :goto_0

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to reach END_DOCUMENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static safeBoolean(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private static safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static safeLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private static safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez v1, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v3, v3, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    move v0, v2

    :goto_1
    return v0
.end method

.method private static sourceToPrioritySenders(II)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    return p1

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static sourceToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "stars"

    return-object v0

    :pswitch_1
    const-string v0, "contacts"

    return-object v0

    :pswitch_2
    const-string v0, "anyone"

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toCountdownConditionId(JZ)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "countdown"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static toDayList([I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public static toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;
    .locals 4

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "event"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "userId"

    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "calendar"

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "reply"

    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static toNextAlarmCondition(Landroid/content/Context;JI)Landroid/service/notification/Condition;
    .locals 18

    move-wide/from16 v0, p1

    invoke-static/range {p1 .. p2}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v2

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-static {v3, v0, v1, v2, v4}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const v9, 0x1040730

    invoke-virtual {v6, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v1, v7}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    move-result-object v7

    new-instance v9, Landroid/service/notification/Condition;

    const-string v12, ""

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v10, v9

    move-object v11, v7

    move-object v13, v8

    invoke-direct/range {v10 .. v17}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v9
.end method

.method public static toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;
    .locals 3

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/service/notification/ScheduleCalendar;

    invoke-direct {v1}, Landroid/service/notification/ScheduleCalendar;-><init>()V

    invoke-virtual {v1, v0}, Landroid/service/notification/ScheduleCalendar;->setSchedule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ScheduleCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;
    .locals 4

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "schedule"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "days"

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "start"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "end"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "exitAtAlarm"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method

.method public static toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p1, :cond_0

    const-wide/16 v2, 0x2710

    goto :goto_0

    :cond_0
    const v2, 0xea60

    mul-int/2addr v2, p1

    int-to-long v2, v2

    :goto_0
    add-long v5, v0, v2

    move-object v4, p0

    move v7, p1

    move v8, p2

    move v9, p3

    invoke-static/range {v4 .. v9}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v4

    return-object v4
.end method

.method public static toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;
    .locals 22

    move-wide/from16 v0, p1

    move/from16 v2, p3

    nop

    invoke-static/range {p1 .. p2}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v3

    move-object/from16 v4, p0

    move/from16 v5, p4

    invoke-static {v4, v0, v1, v3, v5}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040730

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x3c

    if-ge v2, v11, :cond_2

    move v11, v2

    if-eqz p5, :cond_0

    const v12, 0x1150022

    goto :goto_0

    :cond_0
    const v12, 0x1150021

    :goto_0
    new-array v13, v8, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    aput-object v3, v13, v9

    invoke-virtual {v6, v12, v11, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-eqz p5, :cond_1

    const v14, 0x1150020

    goto :goto_1

    :cond_1
    const v14, 0x115001f

    :goto_1
    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v8, v10

    aput-object v3, v8, v9

    invoke-virtual {v6, v14, v11, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v10

    invoke-virtual {v6, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_2
    const/16 v11, 0x5a0

    if-ge v2, v11, :cond_5

    int-to-float v11, v2

    const/high16 v12, 0x42700000    # 60.0f

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    if-eqz p5, :cond_3

    const v12, 0x115001e

    goto :goto_2

    :cond_3
    const v12, 0x115001d

    :goto_2
    new-array v13, v8, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    aput-object v3, v13, v9

    invoke-virtual {v6, v12, v11, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-eqz p5, :cond_4

    const v14, 0x115001c

    goto :goto_3

    :cond_4
    const v14, 0x115001b

    :goto_3
    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v8, v10

    aput-object v3, v8, v9

    invoke-virtual {v6, v14, v11, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v10

    invoke-virtual {v6, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_5
    new-array v8, v9, [Ljava/lang/Object;

    aput-object v3, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    move-object v8, v13

    :goto_4
    move-object/from16 v16, v13

    invoke-static {v0, v1, v10}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Landroid/service/notification/Condition;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object v14, v10

    move-object v15, v9

    move-object/from16 v17, v8

    move-object/from16 v18, v7

    invoke-direct/range {v14 .. v21}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v10
.end method

.method public static tryParseCountdownConditionId(Landroid/net/Uri;)J
    .locals 6

    const-string v0, "android"

    invoke-static {p0, v0}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    const-string v0, "countdown"

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    :catch_0
    move-exception v0

    sget-object v3, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing countdown condition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v1

    :cond_2
    :goto_0
    return-wide v1
.end method

.method private static tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    array-length v2, v1

    new-array v2, v2, [I

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    aget-object v4, v1, v3

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    return-object v0

    :cond_2
    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public static tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "condition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "event"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    new-instance v3, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    const-string/jumbo v4, "userId"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x2710

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    const-string v4, "calendar"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    const-wide/16 v5, -0x1

    invoke-static {v4, v5, v6}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-eqz v4, :cond_3

    :cond_2
    iput-object v2, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    :cond_3
    const-string/jumbo v2, "reply"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    return-object v3
.end method

.method private static tryParseHourAndMinute(Ljava/lang/String;)[I
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v4, v1, v3

    aput v5, v1, v2

    nop

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method private static tryParseInt(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return p1
.end method

.method private static tryParseLong(Ljava/lang/String;J)J
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    return-wide p1
.end method

.method public static tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "condition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "schedule"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    const-string/jumbo v4, "start"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v4

    const-string v5, "end"

    invoke-virtual {p0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v5

    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    const-string v6, "days"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\."

    invoke-static {v6, v7}, Landroid/service/notification/ZenModeConfig;->tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v6

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    aget v6, v4, v1

    iput v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    aget v6, v4, v0

    iput v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    aget v6, v5, v1

    iput v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    aget v0, v5, v0

    iput v0, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    const-string v0, "exitAtAlarm"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    return-object v3

    :cond_3
    :goto_1
    return-object v3
.end method

.method private static tryParseZenMode(Ljava/lang/String;I)I
    .locals 2

    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method private static unsafeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static writeConditionXml(Landroid/service/notification/Condition;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "id"

    iget-object v1, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "summary"

    iget-object v1, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "line1"

    iget-object v1, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "line2"

    iget-object v1, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "icon"

    iget v1, p0, Landroid/service/notification/Condition;->icon:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "state"

    iget v1, p0, Landroid/service/notification/Condition;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "flags"

    iget v1, p0, Landroid/service/notification/Condition;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "enabled"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "snoozing"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "name"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string/jumbo v0, "zen"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    const-string v0, "component"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_2

    const-string v0, "conditionId"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    const-string v0, "creationTime"

    iget-wide v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "enabler"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeConditionXml(Landroid/service/notification/Condition;Lorg/xmlpull/v1/XmlSerializer;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v1

    :goto_7
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v0, v3}, Landroid/service/notification/ZenModeConfig;->prioritySendersToSource(II)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v0, v3}, Landroid/service/notification/ZenModeConfig;->prioritySendersToSource(II)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_9

    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    :cond_9
    iget v0, p1, Landroid/app/NotificationManager$Policy;->state:I

    if-eq v0, v3, :cond_b

    iget v0, p1, Landroid/app/NotificationManager$Policy;->state:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_a

    move v1, v2

    nop

    :cond_a
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    :cond_b
    return-void
.end method

.method public copy()Landroid/service/notification/ZenModeConfig;
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1, v0}, Landroid/service/notification/ZenModeConfig;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Landroid/service/notification/ZenModeConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/notification/ZenModeConfig;

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->user:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->user:I

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 4

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public toNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x8

    :cond_0
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v3, :cond_4

    or-int/lit8 v0, v0, 0x10

    :cond_4
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-eqz v3, :cond_5

    or-int/lit8 v0, v0, 0x20

    :cond_5
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    if-eqz v3, :cond_6

    or-int/lit8 v0, v0, 0x40

    :cond_6
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    if-eqz v3, :cond_7

    or-int/lit16 v0, v0, 0x80

    :cond_7
    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v3, v1}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    move-result v1

    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v3, v2}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    move-result v2

    new-instance v9, Landroid/app/NotificationManager$Policy;

    iget v7, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    :goto_0
    move v8, v3

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    move-object v3, v9

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-direct/range {v3 .. v8}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    return-object v9
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",allowAlarms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",allowMedia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",allowSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",allowReminders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",allowEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",allowCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",allowRepeatCallers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",allowMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",allowCallsFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",allowMessagesFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",suppressedVisualEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",areChannelsBypassingDnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",automaticRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",manualRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    new-array v3, v0, [Landroid/service/notification/ZenModeConfig$ZenRule;

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_0

    iget-object v5, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v2, v4

    iget-object v5, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Integer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "zen"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "version"

    if-nez p2, :cond_0

    const/16 v2, 0x8

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :goto_1
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "user"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "allow"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "calls"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "repeatCallers"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "messages"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "reminders"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "events"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "callsFrom"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "messagesFrom"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "alarms"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "media"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "system"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "allow"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "disallow"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "visualEffects"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "disallow"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "manual"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v0, "manual"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    const-string v5, "automatic"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "ruleId"

    invoke-interface {p1, v1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v4, p1}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v5, "automatic"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-string/jumbo v2, "state"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "areChannelsBypassingDnd"

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "state"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "zen"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
