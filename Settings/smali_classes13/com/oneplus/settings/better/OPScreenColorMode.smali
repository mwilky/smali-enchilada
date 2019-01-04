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

    new-instance v0, Lcom/oneplus/settings/better/OPScreenColorMode$2;

    invoke-direct {v0}, Lcom/oneplus/settings/better/OPScreenColorMode$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/better/OPScreenColorMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mDeviceProvision:Z

    new-instance v0, Lcom/oneplus/settings/better/OPScreenColorMode$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode$1;-><init>(Lcom/oneplus/settings/better/OPScreenColorMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPScreenColorMode;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPScreenColorMode;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportDcip3:Z

    return v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportAdaptive:Z

    return v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportSoft:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    return-object v0
.end method

.method private resetDefinedScreenColorModeValue()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_screen_better_value"

    const/16 v2, 0x2b

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportReadingMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;->setActiveMode(I)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int/lit8 v2, v0, 0x64

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int/lit8 v2, v0, 0x64

    add-int/lit16 v2, v2, 0x200

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v1}, Lcom/oneplus/settings/OneplusColorManager;->saveScreenBetter()V

    :cond_1
    return-void
.end method

.method private updateRadioButtons(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v2, p1, :cond_3

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne v2, p1, :cond_4

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    if-ne v2, p1, :cond_5

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public getScreenColorModeSettingsValue()I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_color_mode_settings_value"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160094

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->addPreferencesFromResource(I)V

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.read_mode.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportReadingMode:Z

    const-string v0, "screen_color_mode_default_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "screen_color_mode_basic_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "screen_color_mode_defined_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "screen_color_mode_dci_p3_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "screen_color_mode_adaptive_model_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "screen_color_mode_soft_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "oneplus_screen_color_mode_title_summary"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPSeekBarPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ui/OPSeekBarPreference;->setOPColorModeSeekBarChangeListener(Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    new-instance v0, Lcom/oneplus/settings/OneplusColorManager;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.dcip3.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportDcip3:Z

    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportDcip3:Z

    if-nez v0, :cond_0

    const-string v0, "screen_color_mode_dci_p3_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.display.adaptive.mode.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportAdaptive:Z

    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportAdaptive:Z

    if-nez v0, :cond_1

    const-string v0, "screen_color_mode_adaptive_model_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.display.soft.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportSoft:Z

    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportSoft:Z

    if-nez v0, :cond_2

    const-string v0, "screen_color_mode_soft_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

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

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_screen_better_value"

    const/16 v2, 0x39

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iput p2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportReadingMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    iget v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    rsub-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    iget v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    rsub-int/lit8 v1, v1, 0x64

    add-int/lit16 v1, v1, 0x200

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_1
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_3
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_8

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_7
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_a

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_9
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_a
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_c

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_b

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    :cond_b
    const-string v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)Z

    :cond_c
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mDeviceProvision:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/OneplusColorManager;->revertStatus()V

    :cond_d
    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->updateRadioButtons(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "night_display_activated"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "reading_mode_status_manual"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onSaveScreenColorModeSettingsValue(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_color_mode_settings_value"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForScreenColorMode()V

    return-void
.end method

.method public onSaveScreenColorModeValue(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_screen_better_value"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForScreenCustomColorMode()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeValue(I)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/OneplusColorManager;->saveScreenBetter()V

    return-void
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "0"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_0
    :goto_1
    return-object v0

    :goto_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    throw v2
.end method
