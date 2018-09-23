.class Lcom/android/server/am/ActivityManagerDebugConfig;
.super Ljava/lang/Object;
.source "ActivityManagerDebugConfig.java"


# static fields
.field static final APPEND_CATEGORY_NAME:Z = false

.field static DEBUG_ADD_REMOVE:Z = false

.field static DEBUG_ALL:Z = false

.field static DEBUG_ALL_ACTIVITIES:Z = false

.field static DEBUG_ANR:Z = false

.field static DEBUG_APP:Z = false

.field static DEBUG_BACKGROUND_CHECK:Z = false

.field static DEBUG_BACKUP:Z = false

.field static DEBUG_BROADCAST:Z = false

.field static DEBUG_BROADCAST_BACKGROUND:Z = false

.field static DEBUG_BROADCAST_LIGHT:Z = false

.field static DEBUG_CLEANUP:Z = false

.field static DEBUG_CONFIGURATION:Z = false

.field static DEBUG_CONTAINERS:Z = false

.field static DEBUG_FOCUS:Z = false

.field static DEBUG_FOREGROUND_SERVICE:Z = false

.field static DEBUG_IDLE:Z = false

.field static DEBUG_IMMERSIVE:Z = false

.field static DEBUG_LOCKTASK:Z = false

.field static DEBUG_LRU:Z = false

.field static DEBUG_METRICS:Z = false

.field static DEBUG_MU:Z = false

.field static DEBUG_NETWORK:Z = false

.field static DEBUG_OOM_ADJ:Z = false

.field static DEBUG_OOM_ADJ_REASON:Z = false

.field static DEBUG_PAUSE:Z = false

.field static DEBUG_PERMISSIONS_REVIEW:Z = false

.field static DEBUG_POWER:Z = false

.field static DEBUG_POWER_QUICK:Z = false

.field static DEBUG_PROCESSES:Z = false

.field static DEBUG_PROCESS_OBSERVERS:Z = false

.field static DEBUG_PROVIDER:Z = false

.field static DEBUG_PSS:Z = false

.field static DEBUG_RECENTS:Z = false

.field static DEBUG_RECENTS_TRIM_TASKS:Z = false

.field static DEBUG_RELEASE:Z = false

.field static DEBUG_RESULTS:Z = false

.field static DEBUG_SAVED_STATE:Z = false

.field static DEBUG_SERVICE:Z = false

.field static DEBUG_SERVICE_EXECUTING:Z = false

.field static DEBUG_STACK:Z = false

.field static DEBUG_STATES:Z = false

.field static DEBUG_SWITCH:Z = false

.field static DEBUG_TASKS:Z = false

.field static DEBUG_TRANSITION:Z = false

.field static DEBUG_UID_OBSERVERS:Z = false

.field static DEBUG_URI_PERMISSION:Z = false

.field static DEBUG_USAGE_STATS:Z = false

.field static DEBUG_USER_LEAVING:Z = false

.field static DEBUG_VISIBILITY:Z = false

.field static DEBUG_WHITELISTS:Z = false

.field static final LOG_TYPE_ACTIVITY:I = 0x2

.field static final LOG_TYPE_ALL:I = 0x1

.field static final LOG_TYPE_BROADCAST:I = 0x8

.field static final LOG_TYPE_OTHER:I = 0x10

.field static final LOG_TYPE_SERVICE:I = 0x4

.field static final POSTFIX_ADD_REMOVE:Ljava/lang/String; = ""

.field static final POSTFIX_APP:Ljava/lang/String; = ""

.field static final POSTFIX_BACKUP:Ljava/lang/String; = ""

.field static final POSTFIX_BROADCAST:Ljava/lang/String; = ""

.field static final POSTFIX_CLEANUP:Ljava/lang/String; = ""

.field static final POSTFIX_CONFIGURATION:Ljava/lang/String; = ""

.field static final POSTFIX_CONTAINERS:Ljava/lang/String; = ""

.field static final POSTFIX_FOCUS:Ljava/lang/String; = ""

.field static final POSTFIX_IDLE:Ljava/lang/String; = ""

.field static final POSTFIX_IMMERSIVE:Ljava/lang/String; = ""

.field static final POSTFIX_LOCKTASK:Ljava/lang/String; = ""

.field static final POSTFIX_LRU:Ljava/lang/String; = ""

.field static final POSTFIX_MU:Ljava/lang/String; = "_MU"

.field static final POSTFIX_NETWORK:Ljava/lang/String; = "_Network"

.field static final POSTFIX_OOM_ADJ:Ljava/lang/String; = ""

.field static final POSTFIX_PAUSE:Ljava/lang/String; = ""

.field static final POSTFIX_POWER:Ljava/lang/String; = ""

.field static final POSTFIX_PROCESSES:Ljava/lang/String; = ""

.field static final POSTFIX_PROCESS_OBSERVERS:Ljava/lang/String; = ""

.field static final POSTFIX_PROVIDER:Ljava/lang/String; = ""

.field static final POSTFIX_PSS:Ljava/lang/String; = ""

.field static final POSTFIX_RECENTS:Ljava/lang/String; = ""

.field static final POSTFIX_RELEASE:Ljava/lang/String; = ""

.field static final POSTFIX_RESULTS:Ljava/lang/String; = ""

.field static final POSTFIX_SAVED_STATE:Ljava/lang/String; = ""

.field static final POSTFIX_SERVICE:Ljava/lang/String; = ""

.field static final POSTFIX_SERVICE_EXECUTING:Ljava/lang/String; = ""

.field static final POSTFIX_STACK:Ljava/lang/String; = ""

.field static final POSTFIX_STATES:Ljava/lang/String; = ""

.field static final POSTFIX_SWITCH:Ljava/lang/String; = ""

.field static final POSTFIX_TASKS:Ljava/lang/String; = ""

.field static final POSTFIX_TRANSITION:Ljava/lang/String; = ""

.field static final POSTFIX_UID_OBSERVERS:Ljava/lang/String; = ""

.field static final POSTFIX_URI_PERMISSION:Ljava/lang/String; = ""

.field static final POSTFIX_USER_LEAVING:Ljava/lang/String; = ""

.field static final POSTFIX_VISIBILITY:Ljava/lang/String; = ""

.field static final TAG_AM:Ljava/lang/String; = "ActivityManager"

.field static final TAG_WITH_CLASS_NAME:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_APP:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v1, :cond_6

    move v1, v0

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_BACKGROUND:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v1, :cond_7

    move v1, v0

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_8

    move v1, v0

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_9

    move v1, v0

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_a

    move v1, v0

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONTAINERS:Z

    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_b

    move v1, v0

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IDLE:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_c

    move v1, v0

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_d

    move v1, v0

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKTASK:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_e

    move v1, v0

    goto :goto_e

    :cond_e
    move v1, v2

    :goto_e
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_f

    move v1, v0

    goto :goto_f

    :cond_f
    move v1, v2

    :goto_f
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_10

    move v1, v0

    goto :goto_10

    :cond_10
    move v1, v2

    :goto_10
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_11

    move v1, v0

    goto :goto_11

    :cond_11
    move v1, v2

    :goto_11
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_12

    move v1, v0

    goto :goto_12

    :cond_12
    move v1, v2

    :goto_12
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_13

    move v1, v0

    goto :goto_13

    :cond_13
    move v1, v2

    :goto_13
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_14

    move v1, v0

    goto :goto_14

    :cond_14
    move v1, v2

    :goto_14
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    if-nez v1, :cond_15

    move v1, v0

    goto :goto_15

    :cond_15
    move v1, v2

    :goto_15
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER_QUICK:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_16

    move v1, v0

    goto :goto_16

    :cond_16
    move v1, v2

    :goto_16
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_17

    move v1, v0

    goto :goto_17

    :cond_17
    move v1, v2

    :goto_17
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_18

    move v1, v0

    goto :goto_18

    :cond_18
    move v1, v2

    :goto_18
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_19

    move v1, v0

    goto :goto_19

    :cond_19
    move v1, v2

    :goto_19
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_1a

    move v1, v0

    goto :goto_1a

    :cond_1a
    move v1, v2

    :goto_1a
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-nez v1, :cond_1b

    move v1, v0

    goto :goto_1b

    :cond_1b
    move v1, v2

    :goto_1b
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_1c

    move v1, v0

    goto :goto_1c

    :cond_1c
    move v1, v2

    :goto_1c
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_1d

    move v1, v0

    goto :goto_1d

    :cond_1d
    move v1, v2

    :goto_1d
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_1e

    move v1, v0

    goto :goto_1e

    :cond_1e
    move v1, v2

    :goto_1e
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_1f

    move v1, v0

    goto :goto_1f

    :cond_1f
    move v1, v2

    :goto_1f
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_20

    move v1, v0

    goto :goto_20

    :cond_20
    move v1, v2

    :goto_20
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_21

    move v1, v0

    goto :goto_21

    :cond_21
    move v1, v2

    :goto_21
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_22

    move v1, v0

    goto :goto_22

    :cond_22
    move v1, v2

    :goto_22
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_23

    move v1, v0

    goto :goto_23

    :cond_23
    move v1, v2

    :goto_23
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_24

    move v1, v0

    goto :goto_24

    :cond_24
    move v1, v2

    :goto_24
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_25

    move v1, v0

    goto :goto_25

    :cond_25
    move v1, v2

    :goto_25
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_26

    move v1, v0

    goto :goto_26

    :cond_26
    move v1, v2

    :goto_26
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_27

    move v1, v0

    goto :goto_27

    :cond_27
    move v1, v2

    :goto_27
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_28

    move v1, v0

    goto :goto_28

    :cond_28
    move v1, v2

    :goto_28
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_URI_PERMISSION:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_29

    move v1, v0

    goto :goto_29

    :cond_29
    move v1, v2

    :goto_29
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_2a

    move v1, v0

    goto :goto_2a

    :cond_2a
    move v1, v2

    :goto_2a
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_2b

    move v1, v0

    goto :goto_2b

    :cond_2b
    move v1, v2

    :goto_2b
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_2c

    move v1, v0

    goto :goto_2c

    :cond_2c
    move v1, v2

    :goto_2c
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_2d

    move v1, v0

    goto :goto_2d

    :cond_2d
    move v1, v2

    :goto_2d
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_WHITELISTS:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_2e

    goto :goto_2e

    :cond_2e
    move v0, v2

    :goto_2e
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_METRICS:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static switchAMSLog(IZ)V
    .locals 1

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_APP:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONTAINERS:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IDLE:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKTASK:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    :cond_0
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_1

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    :cond_1
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_2

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_BACKGROUND:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    :cond_2
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_3

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER_QUICK:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_URI_PERMISSION:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    :cond_3
    return-void
.end method
