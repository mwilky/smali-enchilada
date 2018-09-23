.class Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x8

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "oem_acc_key_define"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    new-array v1, v0, [I

    const/16 v4, 0xb

    aput v4, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "oem_acc_key_lock_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "buttons_force_home_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "buttons_show_on_screen_navkeys"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_home_long_press_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_home_double_tap_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_menu_long_press_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_menu_double_tap_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_back_long_press_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_back_double_tap_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_app_switch_long_press_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_app_switch_double_tap_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "oem_acc_fingerprint_enrolling"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-array v1, v0, [I

    const/16 v4, 0xd

    aput v4, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "oem_acc_sensor_three_finger"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_2
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "op_quickpay_enable"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "op_quickpay_default_way"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "op_fingerprint_long_press_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "op_fingerprint_long_press_camera_shot"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v1, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "op_navigation_bar_type"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "op_gesture_button_guide"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_4
    sget-boolean v1, Lcom/android/server/policy/SystemGesturesPointerEventListener;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v1, :cond_5

    new-array v0, v0, [I

    const/16 v1, 0x3b

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "op_camera_notch_ignore"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->updateSettings()V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->updateSettings()V

    return-void
.end method

.method public updateSettings()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [I

    const/16 v3, 0x8

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "oem_acc_key_define"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYSWAP:Z

    if-eqz v2, :cond_0

    const-string v2, "OemPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mKeysBehavior: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/OemPhoneWindowManager;->updateSwapKey()V

    :cond_1
    new-array v2, v1, [I

    const/16 v3, 0xb

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "oem_acc_key_lock_mode"

    sget-object v5, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v5}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v5

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->values()[Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    move-result-object v3

    aget-object v3, v3, v2

    sput-object v3, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    sget-object v3, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    sget-object v5, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->BACK_SWITCH:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v5, :cond_3

    :try_start_1
    const-string v3, "OnePlus3"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "/proc/s1302/key_disable"

    const-string v5, "disable"

    invoke-static {v3, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "/proc/touchpanel/key_disable"

    const-string v5, "disable"

    invoke-static {v3, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v5, "OemPhoneWindowManager"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    goto :goto_2

    :cond_3
    :try_start_3
    const-string v3, "OnePlus3"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "/proc/s1302/key_disable"

    const-string v5, "enable"

    invoke-static {v3, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v3, "/proc/touchpanel/key_disable"

    const-string v5, "enable"

    invoke-static {v3, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_4
    const-string v5, "OemPhoneWindowManager"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "buttons_force_home_enabled"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    sput-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "oem_acc_fingerprint_enrolling"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_4

    :cond_6
    move v3, v4

    :goto_4
    sput-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    :cond_7
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "buttons_show_on_screen_navkeys"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v1

    goto :goto_5

    :cond_8
    move v2, v4

    :goto_5
    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager;->access$500()Z

    move-result v3

    if-eq v2, v3, :cond_9

    invoke-static {v2}, Lcom/android/server/policy/OemPhoneWindowManager;->access$502(Z)Z

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v9, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1102(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1002(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/policy/OemPhoneWindowManager;->access$902(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->access$802(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/policy/OemPhoneWindowManager;->access$702(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v5

    invoke-static {v3, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->access$602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    :cond_9
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1200(Lcom/android/server/policy/OemPhoneWindowManager;)V

    new-array v3, v1, [I

    const/16 v5, 0xd

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "oem_acc_sensor_three_finger"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1300(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1300(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    move-result-object v6

    if-eqz v3, :cond_a

    nop

    move v7, v1

    goto :goto_6

    :cond_a
    nop

    move v7, v5

    :goto_6
    invoke-virtual {v6, v7}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->sendEmptyMessage(I)Z

    :cond_b
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "op_quickpay_enable"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_c

    move v6, v1

    goto :goto_7

    :cond_c
    move v6, v4

    :goto_7
    iput-boolean v6, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayEnabled:Z

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "op_quickpay_default_way"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayDefault:I

    const-string v3, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QuickPay: ScreenOff enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " which="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayDefault:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "quickpay_button_xy"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    if-lt v7, v5, :cond_d

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    aget-object v7, v6, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    :cond_d
    const-string v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QuickPay: loadXY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "op_fingerprint_long_press_action"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnFingerprintBehavior:I

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "op_fingerprint_long_press_camera_shot"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_f

    move v5, v1

    goto :goto_8

    :cond_f
    move v5, v4

    :goto_8
    iput-boolean v5, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintForShotEnabled:Z

    sget-boolean v3, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "op_navigation_bar_type"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_10

    move v3, v1

    goto :goto_9

    :cond_10
    move v3, v4

    :goto_9
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "op_gesture_button_guide"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_11

    move v5, v1

    goto :goto_a

    :cond_11
    move v5, v4

    :goto_a
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v6, v3, v5}, Lcom/android/server/policy/OemGestureButton;->updateSettings(ZZ)V

    :cond_12
    if-eqz v3, :cond_13

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1400(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-interface {v6, v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v6, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1402(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    :cond_13
    if-nez v3, :cond_14

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1400(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-interface {v6, v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v6, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1402(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    :cond_14
    sget-boolean v3, Lcom/android/server/policy/SystemGesturesPointerEventListener;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v3, :cond_17

    new-array v3, v1, [I

    const/16 v5, 0x3b

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "op_camera_notch_ignore"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_b

    :cond_15
    move v1, v4

    :goto_b
    iput-boolean v1, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mIsIgnoreCameraNotch:Z

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mIsIgnoreCameraNotch:Z

    invoke-virtual {v1, v3}, Lcom/android/server/policy/OemGestureButton;->updateNotchSettings(Z)V

    :cond_16
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/OemPhoneWindowManager;->expandScreenDecor()V

    :cond_17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
