.class public Lcom/oneplus/settings/better/OPScreenColorMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPScreenColorMode.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
.implements Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;
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

.field private mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 426
    new-instance v0, Lcom/oneplus/settings/better/OPScreenColorMode$2;

    invoke-direct {v0}, Lcom/oneplus/settings/better/OPScreenColorMode$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/better/OPScreenColorMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mDeviceProvision:Z

    .line 120
    new-instance v0, Lcom/oneplus/settings/better/OPScreenColorMode$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode$1;-><init>(Lcom/oneplus/settings/better/OPScreenColorMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPScreenColorMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPScreenColorMode;

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPScreenColorMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPScreenColorMode;

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 42
    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportDcip3:Z

    return v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 42
    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportAdaptive:Z

    return v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 42
    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportSoft:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPScreenColorMode;

    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPScreenColorMode;

    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPScreenColorMode;

    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPScreenColorMode;

    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPScreenColorMode;

    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPScreenColorMode;

    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPSeekBarPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPScreenColorMode;

    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPScreenColorMode;

    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    return-object v0
.end method

.method private resetDefinedScreenColorModeValue()V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    .line 408
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_screen_better_value"

    .line 407
    const/16 v2, 0x2b

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 410
    .local v0, "value":I
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    if-eqz v1, :cond_1

    .line 411
    iget-boolean v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportReadingMode:Z

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;->setActiveMode(I)V

    .line 413
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int/lit8 v2, v0, 0x64

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    goto :goto_0

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int/lit8 v2, v0, 0x64

    add-int/lit16 v2, v2, 0x200

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    .line 417
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v1}, Lcom/oneplus/settings/OneplusColorManager;->saveScreenBetter()V

    .line 419
    :cond_1
    return-void
.end method

.method private updateRadioButtons(I)V
    .locals 3
    .param p1, "value"    # I

    .line 219
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 220
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 221
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 223
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 224
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 225
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 226
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 227
    :cond_0
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 228
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 229
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 232
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 233
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 234
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 235
    :cond_1
    const/4 v2, 0x3

    if-ne v2, p1, :cond_2

    .line 236
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 237
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 238
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 239
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 240
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 241
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 242
    :cond_2
    const/4 v2, 0x4

    if-ne v2, p1, :cond_3

    .line 243
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 244
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 245
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 246
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 247
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 248
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 249
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 250
    :cond_3
    const/4 v2, 0x5

    if-ne v2, p1, :cond_4

    .line 251
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 252
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 253
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 254
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 255
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 256
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 257
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 258
    :cond_4
    const/4 v2, 0x6

    if-ne v2, p1, :cond_5

    .line 259
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 260
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 261
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 262
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 263
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 264
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 265
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    .line 267
    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 368
    const/16 v0, 0x270f

    return v0
.end method

.method public getScreenColorModeSettingsValue()I
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    .line 397
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_color_mode_settings_value"

    .line 396
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 398
    .local v0, "value":I
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f160091

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->addPreferencesFromResource(I)V

    .line 85
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.read_mode.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportReadingMode:Z

    .line 87
    const-string v0, "screen_color_mode_default_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    .line 88
    const-string v0, "screen_color_mode_basic_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    .line 89
    const-string v0, "screen_color_mode_defined_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    .line 90
    const-string v0, "screen_color_mode_dci_p3_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    .line 91
    const-string v0, "screen_color_mode_adaptive_model_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    .line 92
    const-string v0, "screen_color_mode_soft_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    .line 93
    const-string v0, "oneplus_screen_color_mode_title_summary"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    .line 94
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPSeekBarPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ui/OPSeekBarPreference;->setOPColorModeSeekBarChangeListener(Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;)V

    .line 96
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 103
    new-instance v0, Lcom/oneplus/settings/OneplusColorManager;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.dcip3.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportDcip3:Z

    .line 105
    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportDcip3:Z

    if-nez v0, :cond_0

    .line 106
    const-string v0, "screen_color_mode_dci_p3_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.display.adaptive.mode.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportAdaptive:Z

    .line 109
    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportAdaptive:Z

    if-nez v0, :cond_1

    .line 110
    const-string v0, "screen_color_mode_adaptive_model_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.display.soft.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportSoft:Z

    .line 113
    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportSoft:Z

    if-nez v0, :cond_2

    .line 114
    const-string v0, "screen_color_mode_soft_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

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
    iput-boolean v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mDeviceProvision:Z

    .line 117
    const-string v0, "OPScreenColorMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDeviceProvision = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mDeviceProvision:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 207
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 208
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 209
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 373
    iput p2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    .line 374
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    if-eqz v0, :cond_1

    .line 375
    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportReadingMode:Z

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    iget v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    rsub-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    iget v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    rsub-int/lit8 v1, v1, 0x64

    add-int/lit16 v1, v1, 0x200

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    .line 382
    :cond_1
    :goto_0
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 3
    .param p1, "emiter"    # Lcom/android/settings/ui/RadioButtonPreference;

    .line 273
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 275
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 276
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 277
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 278
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 279
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    .line 283
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 284
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 285
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 286
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 287
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 288
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 289
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 293
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 295
    :cond_1
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 296
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_4

    .line 297
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 298
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 299
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 300
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 301
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 302
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 303
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 304
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 307
    :cond_3
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 308
    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_6

    .line 309
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 310
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 311
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 312
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 313
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 314
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 315
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 316
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 321
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_0

    .line 322
    :cond_6
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_8

    .line 323
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 324
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 325
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 326
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 327
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 328
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 329
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    .line 330
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 333
    :cond_7
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 334
    :cond_8
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_a

    .line 335
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 336
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 337
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 338
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 339
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 340
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 341
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    .line 342
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 345
    :cond_9
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 346
    :cond_a
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_c

    .line 347
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 348
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 349
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 350
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 351
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 352
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 353
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_b

    .line 354
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 357
    :cond_b
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    .line 359
    :cond_c
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mDeviceProvision:Z

    if-nez v0, :cond_d

    .line 360
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/OneplusColorManager;->revertStatus()V

    .line 362
    :cond_d
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 156
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 172
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    .line 173
    .local v0, "value":I
    invoke-direct {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->updateRadioButtons(I)V

    .line 178
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "night_display_activated"

    .line 179
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    .line 178
    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 181
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "reading_mode_status_manual"

    .line 182
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    .line 181
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 184
    return-void
.end method

.method public onSaveScreenColorModeSettingsValue(I)V
    .locals 2
    .param p1, "value"    # I

    .line 402
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_color_mode_settings_value"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    return-void
.end method

.method public onSaveScreenColorModeValue(I)V
    .locals 2
    .param p1, "value"    # I

    .line 422
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_screen_better_value"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 424
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 387
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 391
    iget v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeValue(I)V

    .line 392
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/OneplusColorManager;->saveScreenBetter()V

    .line 393
    return-void
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 187
    const-string v0, "0"

    .line 188
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 190
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 191
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 195
    nop

    .line 197
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 200
    :goto_0
    goto :goto_1

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 195
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 192
    :catch_1
    move-exception v2

    .line 193
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 197
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 203
    :cond_0
    :goto_1
    return-object v0

    .line 195
    :goto_2
    if-eqz v1, :cond_1

    .line 197
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 200
    goto :goto_3

    .line 198
    :catch_2
    move-exception v3

    .line 199
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v2
.end method
