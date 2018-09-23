.class public Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;
.super Landroid/content/BroadcastReceiver;
.source "OPTimerReceiverPowerOff.java"


# static fields
.field private static final ACTION_CANCEL_POWEROFF_ALARM:Ljava/lang/String; = "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

.field private static final ACTION_SET_POWEROFF_ALARM:Ljava/lang/String; = "org.codeaurora.poweroffalarm.action.SET_ALARM"

.field private static final POWER_OFF_ALARM_PACKAGE:Ljava/lang/String; = "com.qualcomm.qti.poweroffalarm"

.field private static final TIME:Ljava/lang/String; = "time"


# instance fields
.field private mLock:Landroid/os/PowerManager$WakeLock;

.field private pm:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->pm:Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private cancleNewPlanLastPowerOn(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [J

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "def_timepower_config"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x11000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "time"

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "com.qualcomm.qti.poweroffalarm"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

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

    invoke-static {v11}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->intToBool(I)Z

    move-result v11

    aput-boolean v11, v10, v1

    aget-object v10, v4, v5

    invoke-virtual {v9, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->intToBool(I)Z

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

    invoke-static {p0, v0}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->checkSwitch(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isPowerOnEnable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->checkSwitch(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [J

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "def_timepower_config"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v3

    const-string v5, "power"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->pm:Landroid/os/PowerManager;

    const-string v5, "com.android.settings.action.REQUEST_POWER_OFF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/high16 v6, 0x8000000

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/high16 v10, 0x11000000

    const/4 v11, 0x0

    if-nez v5, :cond_7

    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v5, "com.android.settings.POWER_OP_OFF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/high16 v12, 0x10000000

    if-eqz v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    aget-wide v15, v3, v9

    sub-long v15, v13, v15

    const-wide/32 v17, 0x5265c00

    sub-long v15, v15, v17

    rem-long v15, v15, v17

    cmp-long v5, v15, v7

    if-ltz v5, :cond_1

    const-wide/32 v17, 0xea60

    cmp-long v5, v15, v17

    if-gtz v5, :cond_2

    :cond_1
    cmp-long v5, v15, v7

    if-gez v5, :cond_3

    const-wide/32 v7, -0x52571a0

    cmp-long v5, v15, v7

    if-lez v5, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-direct {v5, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_4
    const-string v5, "com.android.settings.POWER_CONFIRM_OP_OFF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    :cond_5
    iget-object v5, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->pm:Landroid/os/PowerManager;

    const v7, 0x1000000a

    const-string v8, "TimepowerWakeLock"

    invoke-virtual {v5, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    iget-object v5, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v5, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    const-string v5, "com.android.settings.POWER_CANCEL_OP_OFF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.android.settings.POWER_OP_OFF"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v7, "alarm"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    invoke-static {v1, v11, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_1

    :cond_7
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->isPowerOffEnable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.android.settings.POWER_OP_OFF"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    aget-wide v12, v3, v9

    cmp-long v7, v12, v7

    if-eqz v7, :cond_8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    aget-wide v12, v3, v11

    invoke-virtual {v7, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v8, "boot"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Power on alarm with flag set:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "alarm"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    invoke-static {v1, v11, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    aget-wide v12, v3, v9

    invoke-virtual {v7, v11, v12, v13, v8}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_8
    nop

    :cond_9
    :goto_1
    const-string v5, "com.android.settings.POWER_OP_ON"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_a
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewPlanPowerOffAlarm()Z

    move-result v5

    if-nez v5, :cond_c

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.POWER_OP_ON"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v6, "alarm"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    invoke-static {v1, v9, v5, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->isPowerOnEnable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x5

    aget-wide v9, v3, v11

    invoke-virtual {v6, v8, v9, v10, v7}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_2

    :cond_b
    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :goto_2
    goto :goto_3

    :cond_c
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.android.settings.POWER_OP_ON"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v7, "alarm"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    invoke-static {v1, v11, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->isPowerOnEnable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-direct/range {p0 .. p1}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->cancleNewPlanLastPowerOn(Landroid/content/Context;)V

    aget-wide v8, v3, v11

    invoke-virtual {v7, v11, v8, v9, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    new-instance v8, Landroid/content/Intent;

    const-string v9, "org.codeaurora.poweroffalarm.action.SET_ALARM"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v9, "com.qualcomm.qti.poweroffalarm"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "time"

    aget-wide v10, v3, v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    :cond_d
    invoke-virtual {v7, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_e
    :goto_3
    return-void
.end method
