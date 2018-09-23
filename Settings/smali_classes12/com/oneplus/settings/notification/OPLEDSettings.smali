.class public Lcom/oneplus/settings/notification/OPLEDSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPLEDSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final BATTERY_LIGHT_FULL_COLOR:Ljava/lang/String; = "battery_light_full_color"

.field public static final BATTERY_LIGHT_LOW_COLOR:Ljava/lang/String; = "battery_light_low_color"

.field public static final BATTERY_LIGHT_MEDIUM_COLOR:Ljava/lang/String; = "battery_light_medium_color"

.field private static final COLOR_BLUE:Ljava/lang/String; = "#FF0000FF"

.field private static final COLOR_BLUE_DRIVER:Ljava/lang/String; = "#FF0000FF"

.field private static final COLOR_CYAN:Ljava/lang/String; = "#FF40FFFF"

.field private static final COLOR_CYAN_DRIVER:Ljava/lang/String; = "#FF40FFFF"

.field private static final COLOR_GREEN:Ljava/lang/String; = "#FF40FF00"

.field private static final COLOR_GREEN_DRIVER:Ljava/lang/String; = "#FF40FF00"

.field private static final COLOR_ORANGE:Ljava/lang/String; = "#FFFFAE00"

.field private static final COLOR_ORANGE_DRIVER:Ljava/lang/String; = "#FFFF4000"

.field private static final COLOR_PINK:Ljava/lang/String; = "#FFEC407A"

.field private static final COLOR_PINK_DRIVER:Ljava/lang/String; = "#FFFF0040"

.field private static final COLOR_PURPLE:Ljava/lang/String; = "#FF9E00F9"

.field private static final COLOR_PURPLE_DRIVER:Ljava/lang/String; = "#FFFF00FF"

.field private static final COLOR_RED:Ljava/lang/String; = "#FFFF0000"

.field private static final COLOR_RED_DRIVER:Ljava/lang/String; = "#FFFF0000"

.field private static final COLOR_YELLOW:Ljava/lang/String; = "#FFFFFF00"

.field private static final COLOR_YELLOW_DRIVER:Ljava/lang/String; = "#FFFFFF00"

.field private static final DEFAULT_COLOR_BATTERY_FULL:Ljava/lang/String; = "#FF00FF00"

.field private static final DEFAULT_COLOR_BATTERY_LOW:Ljava/lang/String; = "#FEFF0000"

.field private static final DEFAULT_COLOR_BATTERY_MEDIUM:Ljava/lang/String; = "#FEFF0000"

.field private static final DEFAULT_COLOR_NOTIFICATION:Ljava/lang/String; = "#FF00FF00"

.field private static final KEY_BATTERY_CHARGING:Ljava/lang/String; = "led_settings_battery_charging"

.field private static final KEY_BATTERY_FULL:Ljava/lang/String; = "led_settings_battery_full"

.field private static final KEY_BATTERY_LOW:Ljava/lang/String; = "led_settings_battery_low"

.field private static final KEY_GLOABL_NOTIFICATION:Ljava/lang/String; = "led_settings_global_notification"

.field public static final NOTIFICATION_LIGHT_PULSE_COLOR:Ljava/lang/String; = "notification_light_pulse_color"

.field private static final TAG:Ljava/lang/String; = "LEDSettings"


# instance fields
.field private mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

.field private mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

.field private mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

.field private mDialogColorPalette:[Ljava/lang/String;

.field private mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "#FF0000FF"

    const-string v1, "#FF40FFFF"

    const-string v2, "#FFFFAE00"

    const-string v3, "#FF40FF00"

    const-string v4, "#FFFF0000"

    const-string v5, "#FFFFFF00"

    const-string v6, "#FF9E00F9"

    const-string v7, "#FFEC407A"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    return-void
.end method

.method private getDialogCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "#FF40FFFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "#FF40FF00"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "#FF0000FF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "#FFFFFF00"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "#FFFF4000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "#FFFF00FF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "#FFFF0040"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_7
    const-string v1, "#FFFF0000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v0, "#FFEC407A"

    goto :goto_2

    :pswitch_1
    const-string v0, "#FF9E00F9"

    goto :goto_2

    :pswitch_2
    const-string v0, "#FFFFFF00"

    goto :goto_2

    :pswitch_3
    const-string v0, "#FFFF0000"

    goto :goto_2

    :pswitch_4
    const-string v0, "#FF40FF00"

    goto :goto_2

    :pswitch_5
    const-string v0, "#FFFFAE00"

    goto :goto_2

    :pswitch_6
    const-string v0, "#FF40FFFF"

    goto :goto_2

    :pswitch_7
    const-string v0, "#FF0000FF"

    nop

    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x60ba255d -> :sswitch_7
        -0x60ba24e1 -> :sswitch_6
        -0x60ba229d -> :sswitch_5
        -0x60b853e1 -> :sswitch_4
        -0x60afd29d -> :sswitch_3
        0x78853aa3 -> :sswitch_2
        0x7f62ed1f -> :sswitch_1
        0x7f62efdf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDriverCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "#FF40FFFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "#FF40FF00"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "#FF0000FF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "#FFFFFF00"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "#FFFFAE00"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "#FFFF0000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_6
    const-string v1, "#FFEC407A"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_7
    const-string v1, "#FF9E00F9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v0, "#FFFF0040"

    goto :goto_2

    :pswitch_1
    const-string v0, "#FFFF00FF"

    goto :goto_2

    :pswitch_2
    const-string v0, "#FFFFFF00"

    goto :goto_2

    :pswitch_3
    const-string v0, "#FFFF0000"

    goto :goto_2

    :pswitch_4
    const-string v0, "#FF40FF00"

    goto :goto_2

    :pswitch_5
    const-string v0, "#FFFF4000"

    goto :goto_2

    :pswitch_6
    const-string v0, "#FF40FFFF"

    goto :goto_2

    :pswitch_7
    const-string v0, "#FF0000FF"

    nop

    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x76f73a3e -> :sswitch_7
        -0x62977219 -> :sswitch_6
        -0x60ba255d -> :sswitch_5
        -0x60b21c39 -> :sswitch_4
        -0x60afd29d -> :sswitch_3
        0x78853aa3 -> :sswitch_2
        0x7f62ed1f -> :sswitch_1
        0x7f62efdf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160083

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPLEDSettings;->addPreferencesFromResource(I)V

    const-string v0, "led_settings_global_notification"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPLEDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    const-string v1, "#FF00FF00"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse_color"

    const-string v2, "#FF00FF00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "#%06X"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    const v4, 0x7f1203e9

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setMessageText(I)V

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v3}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setImageViewVisibility()V

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v3, p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v3, "led_settings_battery_full"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/notification/OPLEDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iput-object v3, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iget-object v6, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    const-string v6, "#FF00FF00"

    invoke-virtual {v3, v6}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "battery_light_full_color"

    const-string v7, "#FF00FF00"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v6, "#%06X"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-direct {p0, v6}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    :cond_1
    iget-object v7, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v7, v4}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setMessageText(I)V

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v7}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setImageViewVisibility()V

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v7, p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v7, "led_settings_battery_charging"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/notification/OPLEDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iput-object v7, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    const-string v8, "#FEFF0000"

    invoke-virtual {v7, v8}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "battery_light_medium_color"

    const-string v9, "#FEFF0000"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "#%06X"

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-direct {p0, v8}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    :cond_2
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v9, v4}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setMessageText(I)V

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v9}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setImageViewVisibility()V

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v9, p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v9, "led_settings_battery_low"

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/notification/OPLEDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iget-object v10, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    const-string v10, "#FEFF0000"

    invoke-virtual {v9, v10}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "battery_light_low_color"

    const-string v11, "#FEFF0000"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const-string v10, "#%06X"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v5

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-direct {p0, v2}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    :cond_3
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v5, v4}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setMessageText(I)V

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v4}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setImageViewVisibility()V

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v4, p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDriverCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "led_settings_global_notification"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_light_pulse_color"

    if-eqz v3, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    const-string v6, "#FF00FF00"

    :goto_1
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    const-string v4, "led_settings_battery_full"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "battery_light_full_color"

    if-eqz v3, :cond_3

    move-object v6, v1

    goto :goto_2

    :cond_3
    const-string v6, "#FF00FF00"

    :goto_2
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    const-string v4, "led_settings_battery_charging"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "battery_light_medium_color"

    if-eqz v3, :cond_5

    move-object v6, v1

    goto :goto_3

    :cond_5
    const-string v6, "#FEFF0000"

    :goto_3
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    const-string v4, "led_settings_battery_low"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "battery_light_low_color"

    if-eqz v3, :cond_7

    move-object v6, v1

    goto :goto_4

    :cond_7
    const-string v6, "#FEFF0000"

    :goto_4
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    return v2
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120824

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " 5%"

    const-string v2, " 15%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
