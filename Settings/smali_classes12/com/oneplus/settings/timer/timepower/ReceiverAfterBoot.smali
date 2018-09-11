.class public Lcom/oneplus/settings/timer/timepower/ReceiverAfterBoot;
.super Landroid/content/BroadcastReceiver;
.source "ReceiverAfterBoot.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_INTERNAL_SDCARD_STATE:Ljava/lang/String; = "persist.sys.oppo.iSdCardState"

.field private static final TAG:Ljava/lang/String; = "ReceiverAfterBoot"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setInternalSdState(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "persist.sys.oppo.iSdCardState"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "state":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted"

    .line 181
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    const-string v0, "mounted"

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "persist.sys.oppo.iSdCardState"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 186
    :cond_0
    return-void
.end method

.method private statisticsPowerOnTimes(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_pwoer_on_times"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 162
    .local v0, "currentTimes":I
    add-int/lit8 v0, v0, 0x1

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_pwoer_on_times"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    return-void
.end method

.method private writeUsingThemeFlag(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isUsingTheme"    # Z

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_is_using_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_is_using_theme"

    .line 173
    nop

    .line 171
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 39
    const-string v0, "BOOTCOMPLETED"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==========ReceiverAfterBoot :["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "BOOTCOMPLETED"

    const-string v2, "==========ReceiverAfterBoot : ACTION_BOOT_COMPLETED====="

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-direct {p0, p1, v1}, Lcom/oneplus/settings/timer/timepower/ReceiverAfterBoot;->writeUsingThemeFlag(Landroid/content/Context;Z)V

    .line 51
    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/ReceiverAfterBoot;->statisticsPowerOnTimes(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/ReceiverAfterBoot;->setInternalSdState(Landroid/content/Context;)V

    .line 57
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 59
    .local v0, "nearestTime":[J
    const-string v2, "persist.sys.quick.test.mode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    .line 60
    nop

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "def_timepower_config"

    .line 60
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "timeConfig":Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v0

    .line 68
    .end local v2    # "timeConfig":Ljava/lang/String;
    goto :goto_0

    .line 69
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 70
    .local v2, "CurrentTime":J
    const-wide/32 v5, 0xea60

    add-long/2addr v5, v2

    aput-wide v5, v0, v4

    .line 71
    const-wide/32 v5, 0x1d4c0

    add-long/2addr v5, v2

    aput-wide v5, v0, v1

    .line 72
    const-string v5, "sp_count"

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 73
    .local v5, "sp":Landroid/content/SharedPreferences;
    const-string v6, "count"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 74
    .local v6, "count":I
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "count"

    add-int/lit8 v9, v6, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    const-string v7, "ReceiverAfterBoot"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-------Total test times:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "--------"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v2    # "CurrentTime":J
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "count":I
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.POWER_ON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, "powerOnIntent":Landroid/content/Intent;
    aget-wide v5, v0, v1

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    .line 95
    aget-wide v5, v0, v1

    invoke-static {p1, v2, v5, v6, v1}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->setAlarm(Landroid/content/Context;Landroid/content/Intent;JI)V

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "oppo.hw.manufacturer.mtk"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 111
    invoke-static {p1, v2, v1}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->cancelAlarm(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 116
    :goto_1
    const-string v1, "android.fpd.boot_completed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 118
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.POWER_OFF"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "powerOffIntent":Landroid/content/Intent;
    aget-wide v5, v0, v4

    cmp-long v3, v5, v7

    if-eqz v3, :cond_3

    .line 129
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v5, "trigger_time"

    aget-wide v6, v0, v4

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 131
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 132
    aget-wide v5, v0, v4

    invoke-static {p1, v1, v5, v6, v4}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->setAlarm(Landroid/content/Context;Landroid/content/Intent;JI)V

    .line 134
    .end local v3    # "bundle":Landroid/os/Bundle;
    goto :goto_2

    .line 140
    :cond_3
    invoke-static {p1, v1, v4}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->cancelAlarm(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 147
    .end local v1    # "powerOffIntent":Landroid/content/Intent;
    :cond_4
    :goto_2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.TIME_SET"

    .line 148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    :cond_5
    return-void
.end method
