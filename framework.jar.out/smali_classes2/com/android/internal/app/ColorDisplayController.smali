.class public final Lcom/android/internal/app/ColorDisplayController;
.super Ljava/lang/Object;
.source "ColorDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ColorDisplayController$Callback;,
        Lcom/android/internal/app/ColorDisplayController$ColorMode;,
        Lcom/android/internal/app/ColorDisplayController$AutoMode;
    }
.end annotation


# static fields
.field public static final AUTO_MODE_CUSTOM:I = 0x1

.field public static final AUTO_MODE_DISABLED:I = 0x0

.field public static final AUTO_MODE_TWILIGHT:I = 0x2

.field public static final COLOR_MODE_AUTOMATIC:I = 0x3

.field public static final COLOR_MODE_BOOSTED:I = 0x1

.field public static final COLOR_MODE_NATURAL:I = 0x0

.field public static final COLOR_MODE_SATURATED:I = 0x2

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorDisplayController"


# instance fields
.field private mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mForceTimeBeModified:I

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPreReadingStatus:Ljava/lang/Boolean;

.field private mPreReadingStatusAuto:Ljava/lang/Boolean;

.field public mReadModeStatus:Ljava/lang/Boolean;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ColorDisplayController;->mForceTimeBeModified:I

    .line 131
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mPreReadingStatusAuto:Ljava/lang/Boolean;

    .line 132
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mReadModeStatus:Ljava/lang/Boolean;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    .line 140
    iput p2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 142
    new-instance v0, Lcom/android/internal/app/ColorDisplayController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/ColorDisplayController$1;-><init>(Lcom/android/internal/app/ColorDisplayController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ColorDisplayController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ColorDisplayController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/app/ColorDisplayController;->onSettingChanged(Ljava/lang/String;)V

    return-void
.end method

.method private getCurrentColorModeFromSystemProperties()I
    .locals 5

    .line 429
    const-string/jumbo v0, "persist.sys.sf.native_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 430
    .local v0, "displayColorSetting":I
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 431
    const-string v3, "1.0"

    const-string/jumbo v4, "persist.sys.sf.color_saturation"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 432
    goto :goto_0

    .line 431
    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 433
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v2, :cond_2

    .line 434
    return v1

    .line 435
    :cond_2
    if-ne v0, v1, :cond_3

    .line 436
    const/4 v1, 0x3

    return v1

    .line 438
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method private getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 750
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isColorModeAvailable(I)Z
    .locals 5
    .param p1, "colorMode"    # I

    .line 443
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 445
    .local v0, "availableColorModes":[I
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 446
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 447
    .local v4, "mode":I
    if-ne v4, p1, :cond_0

    .line 448
    const/4 v1, 0x1

    return v1

    .line 446
    .end local v4    # "mode":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 452
    :cond_1
    return v1
.end method

.method private onSettingChanged(Ljava/lang/String;)V
    .locals 7
    .param p1, "setting"    # Ljava/lang/String;

    .line 548
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    if-eqz v0, :cond_c

    .line 549
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "temp_disable_scene_screen_effect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v1, "night_display_custom_start_time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "display_color_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "reset_screen_status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "night_display_activated"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "screen_color_mode_settings_value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const-string v1, "accessibility_display_inversion_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_7
    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "night_display_color_temperature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_9
    const-string/jumbo v1, "night_display_custom_end_time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_a
    const-string/jumbo v1, "night_display_auto_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 666
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_inversion_enabled"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 668
    .local v0, "I_Status":I
    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_daltonizer_enabled"

    iget v5, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 670
    .local v1, "D_Status":I
    const-string v2, "ColorDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AC I_Status:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " D_Status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    if-eq v0, v3, :cond_3

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 676
    :cond_1
    if-nez v0, :cond_c

    if-nez v0, :cond_c

    .line 677
    iget-object v2, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    if-eqz v2, :cond_2

    .line 678
    iget-object v2, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-interface {v2, v4}, Lcom/android/internal/app/ColorDisplayController$Callback;->onDisplayInversionChange(Z)V

    goto/16 :goto_2

    .line 680
    :cond_2
    const-string v2, "ColorDisplayController"

    const-string/jumbo v3, "mCallback is NULL,onDisplayInversionChange is fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .end local v0    # "I_Status":I
    .end local v1    # "D_Status":I
    goto/16 :goto_2

    .line 672
    .restart local v0    # "I_Status":I
    .restart local v1    # "D_Status":I
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    if-eqz v2, :cond_4

    .line 673
    iget-object v2, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-interface {v2, v3}, Lcom/android/internal/app/ColorDisplayController$Callback;->onDisplayInversionChange(Z)V

    goto/16 :goto_2

    .line 675
    :cond_4
    const-string v2, "ColorDisplayController"

    const-string/jumbo v3, "mCallback is NULL,onDisplayInversionChange is fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 662
    .end local v0    # "I_Status":I
    .end local v1    # "D_Status":I
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getColorMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ColorDisplayController$Callback;->onDisplayColorModeChanged(I)V

    .line 663
    goto/16 :goto_2

    .line 656
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    if-eqz v0, :cond_5

    .line 657
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getColorTemperature()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ColorDisplayController$Callback;->onColorTemperatureChanged(I)V

    goto/16 :goto_2

    .line 659
    :cond_5
    const-string v0, "ColorDisplayController"

    const-string/jumbo v1, "mCallback is NULL,onModeSettingChange is fail"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    goto/16 :goto_2

    .line 646
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, -0x2

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 648
    .local v0, "status":I
    const-string v1, "ColorDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "screen_color_mode_settings_value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    if-eqz v1, :cond_6

    .line 650
    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-interface {v1}, Lcom/android/internal/app/ColorDisplayController$Callback;->onModeSettingChange()V

    goto/16 :goto_2

    .line 652
    :cond_6
    const-string v1, "ColorDisplayController"

    const-string/jumbo v2, "mCallback is NULL,onModeSettingChange is fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    goto/16 :goto_2

    .line 630
    .end local v0    # "status":I
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "temp_disable_scene_screen_effect"

    iget v3, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 636
    .local v0, "setV":I
    const-string v1, "ColorDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setV:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    if-ne v0, v2, :cond_7

    .line 638
    const-string v1, "ColorDisplayController"

    const-string/jumbo v2, "only reading mode...enter to notify oimc"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v1}, Lcom/oneplus/oimc/OIMCManager;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    goto/16 :goto_2

    .line 641
    :cond_7
    const-string v1, "ColorDisplayController"

    const-string/jumbo v2, "only reading mode... exit to notify oimc"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v1}, Lcom/oneplus/oimc/OIMCManager;->removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 644
    goto/16 :goto_2

    .line 591
    .end local v0    # "setV":I
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "reset_screen_status"

    iget v5, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 593
    .local v0, "setStatus":I
    const-string v1, "ColorDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    if-nez v0, :cond_8

    .line 595
    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    if-eqz v1, :cond_8

    .line 596
    const-string v1, "FingerPrintMode"

    invoke-static {v1, v2, v4}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V

    .line 599
    :cond_8
    if-ne v0, v3, :cond_c

    .line 600
    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    if-eqz v1, :cond_c

    .line 601
    const-string v1, "FingerPrintMode"

    invoke-static {v1, v3, v4}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_2

    .line 570
    .end local v0    # "setStatus":I
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    if-eqz v0, :cond_9

    .line 571
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ColorDisplayController$Callback;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    goto :goto_2

    .line 573
    :cond_9
    const-string v0, "ColorDisplayController"

    const-string/jumbo v1, "mCallback is NULL,onCustomEndTimeChanged is fail"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    goto :goto_2

    .line 564
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    if-eqz v0, :cond_a

    .line 565
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ColorDisplayController$Callback;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    goto :goto_2

    .line 567
    :cond_a
    const-string v0, "ColorDisplayController"

    const-string/jumbo v1, "mCallback is NULL,onCustomStartTimeChanged is fail"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    goto :goto_2

    .line 558
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    if-eqz v0, :cond_b

    .line 559
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ColorDisplayController$Callback;->onAutoModeChanged(I)V

    goto :goto_2

    .line 561
    :cond_b
    const-string v0, "ColorDisplayController"

    const-string/jumbo v1, "mCallback is NULL,onAutoModeChanged is fail"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    goto :goto_2

    .line 553
    :pswitch_9
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    if-eqz v0, :cond_c

    .line 554
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ColorDisplayController$Callback;->onActivated(Z)V

    .line 685
    :cond_c
    :goto_2
    return-void

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x797bb571 -> :sswitch_a
        -0x6900ebe5 -> :sswitch_9
        -0x39c8c50c -> :sswitch_8
        -0x28f198ce -> :sswitch_7
        -0x20db1ad9 -> :sswitch_6
        0xf66fb82 -> :sswitch_5
        0x2fb0ca2d -> :sswitch_4
        0x4261f435 -> :sswitch_3
        0x5d15789c -> :sswitch_2
        0x5e128274 -> :sswitch_1
        0x77e1d08f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAccessibilityTransformActivated()Z
    .locals 5

    .line 535
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 536
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "accessibility_display_inversion_enabled"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 537
    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const-string v1, "accessibility_display_daltonizer_enabled"

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 539
    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    move v2, v3

    goto :goto_1

    .line 539
    :cond_1
    :goto_0
    nop

    .line 536
    :goto_1
    return v2
.end method

.method public getAutoMode()I
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_auto_mode"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 242
    .local v0, "autoMode":I
    if-ne v0, v3, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 250
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 253
    const-string v1, "ColorDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid autoMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, 0x0

    .line 257
    :cond_1
    return v0
.end method

.method public getAutoModeRaw()I
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_auto_mode"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getColorMode()I
    .locals 6

    .line 459
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getAccessibilityTransformActivated()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 460
    invoke-direct {p0, v2}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    return v2

    .line 462
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    return v1

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "display_color_mode"

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v5, -0x1

    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 469
    .local v0, "colorMode":I
    if-ne v0, v5, :cond_2

    .line 472
    invoke-direct {p0}, Lcom/android/internal/app/ColorDisplayController;->getCurrentColorModeFromSystemProperties()I

    move-result v0

    .line 477
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 478
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 479
    const/4 v0, 0x0

    goto :goto_0

    .line 480
    :cond_3
    if-ne v0, v2, :cond_4

    .line 481
    invoke-direct {p0, v1}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 482
    const/4 v0, 0x3

    goto :goto_0

    .line 483
    :cond_4
    if-ne v0, v1, :cond_5

    .line 484
    invoke-direct {p0, v2}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 485
    const/4 v0, 0x2

    goto :goto_0

    .line 487
    :cond_5
    const/4 v0, -0x1

    .line 491
    :cond_6
    :goto_0
    return v0
.end method

.method public getColorTemperature()I
    .locals 4

    .line 392
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_color_temperature"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 394
    .local v0, "colorTemperature":I
    if-ne v0, v3, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getDefaultColorTemperature()I

    move-result v0

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getMinimumColorTemperature()I

    move-result v1

    .line 402
    .local v1, "minimumTemperature":I
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getMaximumColorTemperature()I

    move-result v2

    .line 403
    .local v2, "maximumTemperature":I
    if-ge v0, v1, :cond_1

    .line 404
    move v0, v1

    goto :goto_0

    .line 405
    :cond_1
    if-le v0, v2, :cond_2

    .line 406
    move v0, v2

    .line 409
    :cond_2
    :goto_0
    return v0
.end method

.method public getCustomEndTime()Ljava/time/LocalTime;
    .locals 4

    .line 349
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_custom_end_time"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 351
    .local v0, "endTimeValue":I
    if-ne v0, v3, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 360
    :cond_0
    div-int/lit16 v1, v0, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1
.end method

.method public getCustomStartTime()Ljava/time/LocalTime;
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_custom_start_time"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 306
    .local v0, "startTimeValue":I
    if-ne v0, v3, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 315
    :cond_0
    div-int/lit16 v1, v0, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1
.end method

.method public getDefaultColorTemperature()I
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getLastActivatedTime()Ljava/time/LocalDateTime;
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 218
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "night_display_last_activated_time"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "lastActivatedTime":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 222
    :try_start_0
    invoke-static {v1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v2
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 223
    :catch_0
    move-exception v2

    .line 226
    nop

    .line 227
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    .line 228
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    .line 226
    invoke-static {v2, v3}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v2
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 229
    :catch_1
    move-exception v2

    .line 231
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getMaximumColorTemperature()I
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMinimumColorTemperature()I
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public isActivated()Z
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_activated"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method public isReadingModeActivated()Z
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "reading_mode_status_manual"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 166
    .local v0, "v":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method public setActivated(Z)Z
    .locals 3
    .param p1, "activated"    # Z

    .line 177
    const-string v0, "ColorDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActivated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 179
    const-string v1, "NightMode"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_0

    .line 181
    :cond_0
    const-string v1, "NightMode"

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_activated"

    .line 183
    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 182
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setAutoMode(I)Z
    .locals 4
    .param p1, "autoMode"    # I

    .line 278
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid autoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 285
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_last_activated_time"

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 289
    invoke-direct {p0}, Lcom/android/internal/app/ColorDisplayController;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x51d

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    .line 291
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 292
    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 289
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_auto_mode"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setColorBlanceEnable(Z)Z
    .locals 5
    .param p1, "activated"    # Z

    .line 193
    const/4 v0, 0x0

    move v1, v0

    .line 195
    .local v1, "userid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 199
    .end local v1    # "userid":I
    .local v0, "userid":I
    nop

    .line 200
    const-string v1, "ColorDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setColorBlanceEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " userid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "night_display_last_activated_time"

    .line 204
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "night_display_activated"

    .line 208
    nop

    .line 207
    invoke-static {v1, v2, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v1

    return v1

    .line 196
    .end local v0    # "userid":I
    .restart local v1    # "userid":I
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ColorDisplayController"

    const-string/jumbo v4, "setColorBlanceEnable getCurrentUser is fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return v0
.end method

.method public setColorMode(I)V
    .locals 3
    .param p1, "colorMode"    # I

    .line 500
    invoke-direct {p0, p1}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_color_mode"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 505
    return-void

    .line 501
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid colorMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColorTemperature(I)Z
    .locals 3
    .param p1, "colorTemperature"    # I

    .line 419
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_color_temperature"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setCustomEndTime(Ljava/time/LocalTime;)Z
    .locals 5
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 371
    if-eqz p1, :cond_1

    .line 374
    invoke-direct {p0}, Lcom/android/internal/app/ColorDisplayController;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x51e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    .line 376
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 377
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 374
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_custom_end_time"

    .line 384
    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mForceTimeBeModified:I

    rem-int/2addr v4, v2

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mForceTimeBeModified:I

    add-int/2addr v4, v2

    :goto_0
    iput v4, p0, Lcom/android/internal/app/ColorDisplayController;->mForceTimeBeModified:I

    goto :goto_1

    :cond_0
    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mForceTimeBeModified:I

    sub-int/2addr v4, v2

    goto :goto_0

    :goto_1
    add-int/2addr v3, v4

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 382
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 372
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endTime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCustomStartTime(Ljava/time/LocalTime;)Z
    .locals 4
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 326
    if-eqz p1, :cond_1

    .line 329
    invoke-direct {p0}, Lcom/android/internal/app/ColorDisplayController;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x51e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    .line 331
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x0

    .line 332
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 329
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_custom_start_time"

    .line 339
    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iget v3, p0, Lcom/android/internal/app/ColorDisplayController;->mForceTimeBeModified:I

    rem-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/internal/app/ColorDisplayController;->mForceTimeBeModified:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/app/ColorDisplayController;->mForceTimeBeModified:I

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/internal/app/ColorDisplayController;->mForceTimeBeModified:I

    neg-int v3, v3

    :goto_0
    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 337
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 327
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startTime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/internal/app/ColorDisplayController$Callback;

    .line 691
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    .line 692
    .local v0, "oldCallback":Lcom/android/internal/app/ColorDisplayController$Callback;
    if-eq v0, p1, :cond_1

    .line 693
    iput-object p1, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    .line 695
    if-nez p1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 698
    :cond_0
    if-nez v0, :cond_1

    .line 700
    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 701
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "night_display_activated"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 703
    const-string/jumbo v2, "night_display_auto_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 705
    const-string/jumbo v2, "night_display_custom_start_time"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 707
    const-string/jumbo v2, "night_display_custom_end_time"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 709
    const-string/jumbo v2, "night_display_color_temperature"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 711
    const-string v2, "display_color_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 723
    const-string/jumbo v2, "temp_disable_scene_screen_effect"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 725
    const-string/jumbo v2, "screen_color_mode_settings_value"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 727
    const-string/jumbo v2, "reset_screen_status"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 729
    const-string v2, "accessibility_display_inversion_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 731
    const-string v2, "accessibility_display_daltonizer_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 737
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-void
.end method
