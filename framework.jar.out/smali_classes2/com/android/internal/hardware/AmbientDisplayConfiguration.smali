.class public Lcom/android/internal/hardware/AmbientDisplayConfiguration;
.super Ljava/lang/Object;
.source "AmbientDisplayConfiguration.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private alwaysOnDisplayAvailable()Z
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private alwaysOnDisplayDebuggingEnabled()Z
    .locals 2

    .line 146
    const-string v0, "debug.doze.aod"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method private boolSetting(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "user"    # I
    .param p3, "def"    # I

    .line 159
    iget-object v0, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private boolSettingDefaultOff(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "user"    # I

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSetting(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private boolSettingDefaultOn(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "user"    # I

    .line 151
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSetting(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private pulseOnLongPressAvailable()Z
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->longPressSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public accessibilityInversionEnabled(I)Z
    .locals 1
    .param p1, "user"    # I

    .line 134
    const-string v0, "accessibility_display_inversion_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSettingDefaultOff(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public alwaysOnAvailable()Z
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnDisplayDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnDisplayAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0
.end method

.method public alwaysOnAvailableForUser(I)Z
    .locals 1
    .param p1, "user"    # I

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->accessibilityInversionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public alwaysOnEnabled(I)Z
    .locals 1
    .param p1, "user"    # I

    .line 116
    const-string v0, "doze_always_on"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->accessibilityInversionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0
.end method

.method public ambientDisplayAvailable()Z
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayComponent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public ambientDisplayComponent()Ljava/lang/String;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104014a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public available()Z
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnDoubleTapAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 56
    :goto_1
    return v0
.end method

.method public doubleTapSensorAvailable()Z
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->doubleTapSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public doubleTapSensorType()Ljava/lang/String;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dozePulsePickupSensorAvailable()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public enabled(I)Z
    .locals 5
    .param p1, "user"    # I

    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x47

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    const-string v4, "fingerprint"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnDoubleTapEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnLongPressEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    move v1, v3

    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    nop

    .line 46
    :goto_1
    return v1
.end method

.method public longPressSensorType()Ljava/lang/String;
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pulseOnDoubleTapAvailable()Z
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->doubleTapSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pulseOnDoubleTapEnabled(I)Z
    .locals 1
    .param p1, "user"    # I

    .line 86
    const-string v0, "doze_pulse_on_double_tap"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnDoubleTapAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0
.end method

.method public pulseOnLongPressEnabled(I)Z
    .locals 1
    .param p1, "user"    # I

    .line 107
    invoke-direct {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnLongPressAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "doze_pulse_on_long_press"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSettingDefaultOff(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pulseOnNotificationAvailable()Z
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    return v0
.end method

.method public pulseOnNotificationEnabled(I)Z
    .locals 1
    .param p1, "user"    # I

    .line 61
    const-string v0, "doze_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pulseOnPickupAvailable()Z
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->dozePulsePickupSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pulseOnPickupCanBeModified(I)Z
    .locals 1
    .param p1, "user"    # I

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public pulseOnPickupEnabled(I)Z
    .locals 2
    .param p1, "user"    # I

    .line 69
    const-string v0, "doze_pulse_on_pick_up"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    .line 70
    .local v0, "settingEnabled":Z
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
