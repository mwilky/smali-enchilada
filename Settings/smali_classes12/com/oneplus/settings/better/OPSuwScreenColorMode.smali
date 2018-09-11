.class public Lcom/oneplus/settings/better/OPSuwScreenColorMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPSuwScreenColorMode.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
.implements Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$OPColorModeSeekBarChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final KEY_SCREEN_COLOR_MODE_ADAPTIVE_MODEL_SETTINGS:Ljava/lang/String; = "screen_color_mode_adaptive_model_settings"

.field private static final KEY_SCREEN_COLOR_MODE_BASIC_SETTINGS:Ljava/lang/String; = "screen_color_mode_basic_settings"

.field private static final KEY_SCREEN_COLOR_MODE_DCI_P3_SETTINGS:Ljava/lang/String; = "screen_color_mode_dci_p3_settings"

.field private static final KEY_SCREEN_COLOR_MODE_DEFAULT_SETTINGS:Ljava/lang/String; = "screen_color_mode_default_settings"

.field private static final KEY_SCREEN_COLOR_MODE_DEFINED_SETTINGS:Ljava/lang/String; = "screen_color_mode_defined_settings"

.field private static final KEY_SCREEN_COLOR_MODE_SEEKBAR:Ljava/lang/String; = "screen_color_mode_seekbar"

.field private static final KEY_SCREEN_COLOR_MODE_SOFT_SETTINGS:Ljava/lang/String; = "screen_color_mode_soft_settings"

.field private static final KEY_SCREEN_COLOR_MODE_TITLE_SUMMARY:Ljava/lang/String; = "oneplus_screen_color_mode_title_summary"

.field public static final NIGHT_MODE_ENABLED:Ljava/lang/String; = "night_mode_enabled"

.field private static final SCREEN_COLOR_MODE_ADAPTIVE_MODEL_SETTINGS_VALUE:I = 0x5

.field private static final SCREEN_COLOR_MODE_BASIC_SETTINGS_VALUE:I = 0x2

.field private static final SCREEN_COLOR_MODE_DCI_P3_SETTINGS_VALUE:I = 0x4

.field private static final SCREEN_COLOR_MODE_DEFAULT_SETTINGS_VALUE:I = 0x1

.field private static final SCREEN_COLOR_MODE_DEFINED_SETTINGS_VALUE:I = 0x3

.field private static final SCREEN_COLOR_MODE_SOFT_SETTINGS_VALUE:I = 0x6

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static isSupportAdaptive:Z = false

.field private static isSupportDcip3:Z = false

.field private static isSupportSoft:Z = false

.field private static final sDCI_P3Path:Ljava/lang/String; = "/sys/devices/virtual/graphics/fb0/DCI_P3"

.field private static final sRGBPath:Ljava/lang/String; = "/sys/devices/virtual/graphics/fb0/SRGB"

.field private static final s_OPEN_VALUE:Ljava/lang/String; = "mode = 1"


# instance fields
.field private isSupportReadingMode:Z

.field private mCM:Lcom/oneplus/settings/OneplusColorManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceProvision:Z

.field private mHandler:Landroid/os/Handler;

.field private mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

.field private mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

.field private mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

.field private mScreenColorModeContentObserver:Landroid/database/ContentObserver;

.field private mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

.field private mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

.field private mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

.field private mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

.field private mScreenColorModeValue:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarpreference:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 441
    new-instance v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$3;

    invoke-direct {v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode$3;-><init>()V

    sput-object v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mDeviceProvision:Z

    .line 80
    new-instance v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode$1;-><init>(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mHandler:Landroid/os/Handler;

    .line 135
    new-instance v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;-><init>(Lcom/oneplus/settings/better/OPSuwScreenColorMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    .line 43
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    .line 43
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportDcip3:Z

    return v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportAdaptive:Z

    return v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportSoft:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    return-object v0
.end method

.method private resetDefinedScreenColorModeValue()V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mContext:Landroid/content/Context;

    .line 423
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_screen_better_value"

    .line 422
    const/16 v2, 0x2b

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 425
    .local v0, "value":I
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    if-eqz v1, :cond_1

    .line 426
    iget-boolean v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportReadingMode:Z

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;->setActiveMode(I)V

    .line 428
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int/lit8 v2, v0, 0x64

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    goto :goto_0

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int/lit8 v2, v0, 0x64

    add-int/lit16 v2, v2, 0x200

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    .line 432
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v1}, Lcom/oneplus/settings/OneplusColorManager;->saveScreenBetter()V

    .line 434
    :cond_1
    return-void
.end method

.method private updateRadioButtons(I)V
    .locals 3
    .param p1, "value"    # I

    .line 234
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 235
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 236
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 237
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 238
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 239
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 240
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 241
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 242
    :cond_0
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 243
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 244
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 245
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 246
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 247
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 248
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 249
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 250
    :cond_1
    const/4 v2, 0x3

    if-ne v2, p1, :cond_2

    .line 251
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 252
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 253
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 254
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 255
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 257
    :cond_2
    const/4 v2, 0x4

    if-ne v2, p1, :cond_3

    .line 258
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 259
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 260
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 261
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 262
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 263
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 264
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 265
    :cond_3
    const/4 v2, 0x5

    if-ne v2, p1, :cond_4

    .line 266
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 267
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 268
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 269
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 270
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 271
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 272
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 273
    :cond_4
    const/4 v2, 0x6

    if-ne v2, p1, :cond_5

    .line 274
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 275
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 276
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 277
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 278
    iget-object v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 279
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 280
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->removePreference(Ljava/lang/String;)Z

    .line 282
    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 383
    const/16 v0, 0x270f

    return v0
.end method

.method public getScreenColorModeSettingsValue()I
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mContext:Landroid/content/Context;

    .line 412
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_color_mode_settings_value"

    .line 411
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 413
    .local v0, "value":I
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f160096

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->addPreferencesFromResource(I)V

    .line 100
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mContext:Landroid/content/Context;

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.read_mode.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportReadingMode:Z

    .line 102
    const-string v0, "screen_color_mode_default_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    .line 103
    const-string v0, "screen_color_mode_basic_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    .line 104
    const-string v0, "screen_color_mode_defined_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    .line 105
    const-string v0, "screen_color_mode_dci_p3_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    .line 106
    const-string v0, "screen_color_mode_adaptive_model_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    .line 107
    const-string v0, "screen_color_mode_soft_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    .line 108
    const-string v0, "oneplus_screen_color_mode_title_summary"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    .line 109
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->setOPColorModeSeekBarChangeListener(Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$OPColorModeSeekBarChangeListener;)V

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 118
    new-instance v0, Lcom/oneplus/settings/OneplusColorManager;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    .line 119
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.dcip3.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportDcip3:Z

    .line 120
    sget-boolean v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportDcip3:Z

    if-nez v0, :cond_0

    .line 121
    const-string v0, "screen_color_mode_dci_p3_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->removePreference(Ljava/lang/String;)Z

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.display.adaptive.mode.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportAdaptive:Z

    .line 124
    sget-boolean v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportAdaptive:Z

    if-nez v0, :cond_1

    .line 125
    const-string v0, "screen_color_mode_adaptive_model_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->removePreference(Ljava/lang/String;)Z

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.display.soft.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportSoft:Z

    .line 128
    sget-boolean v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportSoft:Z

    if-nez v0, :cond_2

    .line 129
    const-string v0, "screen_color_mode_soft_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->removePreference(Ljava/lang/String;)Z

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mDeviceProvision:Z

    .line 132
    const-string v0, "OPScreenColorMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDeviceProvision = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mDeviceProvision:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 222
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 223
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 224
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 388
    iput p2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeValue:I

    .line 389
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    if-eqz v0, :cond_1

    .line 390
    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->isSupportReadingMode:Z

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    iget v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeValue:I

    rsub-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    goto :goto_0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    iget v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeValue:I

    rsub-int/lit8 v1, v1, 0x64

    add-int/lit16 v1, v1, 0x200

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    .line 397
    :cond_1
    :goto_0
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 4
    .param p1, "emiter"    # Lcom/android/settings/ui/RadioButtonPreference;

    .line 288
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 290
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 291
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 292
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 293
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 294
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 299
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 300
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 301
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 302
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 303
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 304
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 308
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 310
    :cond_1
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_4

    .line 312
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 313
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 314
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 315
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 316
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 317
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 318
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 319
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 322
    :cond_3
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 323
    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_6

    .line 324
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 325
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 326
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 327
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 328
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 329
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 330
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 331
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 335
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 337
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_0

    .line 338
    :cond_6
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_8

    .line 339
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 340
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 341
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 342
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 343
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 344
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 345
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    .line 346
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 349
    :cond_7
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 350
    :cond_8
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_a

    .line 351
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 352
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 353
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 354
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 355
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 356
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 357
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    .line 358
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 361
    :cond_9
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 362
    :cond_a
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_c

    .line 363
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 364
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 365
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 366
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 367
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 368
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 369
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_b

    .line 370
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 373
    :cond_b
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->removePreference(Ljava/lang/String;)Z

    .line 375
    :cond_c
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mDeviceProvision:Z

    if-nez v0, :cond_d

    .line 376
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/OneplusColorManager;->revertStatus()V

    .line 378
    :cond_d
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 171
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 187
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    .line 188
    .local v0, "value":I
    invoke-direct {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->updateRadioButtons(I)V

    .line 193
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "night_display_activated"

    .line 194
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    .line 193
    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 196
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "reading_mode_status_manual"

    .line 197
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    .line 196
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 199
    return-void
.end method

.method public onSaveScreenColorModeSettingsValue(I)V
    .locals 2
    .param p1, "value"    # I

    .line 417
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_color_mode_settings_value"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 419
    return-void
.end method

.method public onSaveScreenColorModeValue(I)V
    .locals 2
    .param p1, "value"    # I

    .line 437
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_screen_better_value"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 402
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 406
    iget v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mScreenColorModeValue:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->onSaveScreenColorModeValue(I)V

    .line 407
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/OneplusColorManager;->saveScreenBetter()V

    .line 408
    return-void
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 202
    const-string v0, "0"

    .line 203
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 205
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 206
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 210
    nop

    .line 212
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    :goto_0
    goto :goto_1

    .line 213
    :catch_0
    move-exception v2

    .line 214
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 210
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 207
    :catch_1
    move-exception v2

    .line 208
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 212
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 218
    :cond_0
    :goto_1
    return-object v0

    .line 210
    :goto_2
    if-eqz v1, :cond_1

    .line 212
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 215
    goto :goto_3

    .line 213
    :catch_2
    move-exception v3

    .line 214
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 215
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v2
.end method
