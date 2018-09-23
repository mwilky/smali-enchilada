.class public Lcom/oneplus/settings/timer/timepower/SettingsUtil;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# static fields
.field public static final ACTION_PHONE_STATE:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_POWER_CANCEL_OP_OFF:Ljava/lang/String; = "com.android.settings.POWER_CANCEL_OP_OFF"

.field public static final ACTION_POWER_CONFIRM_OP_OFF:Ljava/lang/String; = "com.android.settings.POWER_CONFIRM_OP_OFF"

.field public static final ACTION_POWER_OFF:Ljava/lang/String; = "com.android.settings.POWER_OFF"

.field public static final ACTION_POWER_ON:Ljava/lang/String; = "com.android.settings.POWER_ON"

.field public static final ACTION_POWER_OP_OFF:Ljava/lang/String; = "com.android.settings.POWER_OP_OFF"

.field public static final ACTION_POWER_OP_ON:Ljava/lang/String; = "com.android.settings.POWER_OP_ON"

.field public static final ACTION_SET_CHANGED:Ljava/lang/String; = "com.android.settings.SET_CHANGED"

.field public static final MILLIS_OF_DAY:J = 0x5265c00L

.field public static final REQUEST_CODE_OFF:I = 0x1

.field public static final REQUEST_CODE_ON:I = 0x0

.field private static final RTC_POWERUP_MTK:I = 0x7

.field private static final RTC_POWERUP_QCOM:I = 0x5

.field public static final TAG:Ljava/lang/String; = "SettingsUtil"

.field public static final TIMEOUT_MILLIS:I = 0xea60

.field private static final TIME_POWER_COUNTS:I = 0x2

.field public static final TRIGGER_TIME:Ljava/lang/String; = "trigger_time"

.field private static mCurrentTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAlarm(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/high16 v1, 0x8000000

    invoke-static {p0, p2, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static checkSwitch(Landroid/content/Context;Z)Z
    .locals 13

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "def_timepower_config"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    filled-new-array {v2, v2}, [I

    move-result-object v3

    const-class v4, I

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    filled-new-array {v2, v2}, [I

    move-result-object v4

    const-class v5, Z

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Z

    const/4 v5, 0x0

    move v6, v5

    move v5, v1

    :goto_0
    const/4 v7, 0x6

    const/4 v8, 0x1

    if-gt v6, v7, :cond_1

    add-int/lit8 v9, v6, 0x6

    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aget-object v10, v3, v5

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v10, v1

    aget-object v10, v3, v5

    const/4 v11, 0x4

    invoke-virtual {v9, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aput v12, v10, v8

    aget-object v10, v4, v5

    const/4 v12, 0x5

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->intToBool(I)Z

    move-result v11

    aput-boolean v11, v10, v1

    aget-object v10, v4, v5

    invoke-virtual {v9, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->intToBool(I)Z

    move-result v7

    aput-boolean v7, v10, v8

    add-int/lit8 v6, v6, 0x6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    aget-object v2, v4, v1

    aget-boolean v2, v2, v8

    if-eqz v2, :cond_3

    return v8

    :cond_2
    aget-object v2, v4, v8

    aget-boolean v2, v2, v8

    if-eqz v2, :cond_3

    return v8

    :cond_3
    return v1
.end method

.method public static getNearestTime(Ljava/lang/String;)[J
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    const/4 v0, 0x2

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    if-gt v5, v0, :cond_3

    if-ne v4, v5, :cond_1

    mul-int/lit8 v6, v5, 0x6

    add-int/lit8 v6, v6, -0x6

    mul-int/lit8 v7, v5, 0x6

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v7, v5, 0x6

    add-int/lit8 v7, v7, -0x4

    mul-int/lit8 v8, v5, 0x6

    sub-int/2addr v8, v0

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getUTC(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-ne v0, v5, :cond_2

    mul-int/lit8 v6, v5, 0x6

    add-int/lit8 v6, v6, -0x6

    mul-int/lit8 v7, v5, 0x6

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v7, v5, 0x6

    add-int/lit8 v7, v7, -0x4

    mul-int/lit8 v8, v5, 0x6

    sub-int/2addr v8, v0

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getUTC(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/32 v5, 0x5265c00

    const/4 v7, 0x0

    if-eqz v0, :cond_5

    sget-wide v8, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-wide v10, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_4

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v8, v5

    aput-wide v8, v1, v7

    goto :goto_2

    :cond_4
    sget-wide v8, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v1, v7

    :cond_5
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    sget-wide v8, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-wide v10, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_6

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v7, v5

    aput-wide v7, v1, v4

    goto :goto_3

    :cond_6
    sget-wide v5, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v1, v4

    :cond_7
    :goto_3
    return-object v1

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private static getUTC(II)J
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-wide v1, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method static intToBool(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPowerOffEnable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->checkSwitch(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isPowerOnEnable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->checkSwitch(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static setAlarm(Landroid/content/Context;Landroid/content/Intent;JI)V
    .locals 3

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/high16 v1, 0x8000000

    invoke-static {p0, p4, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x5

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
