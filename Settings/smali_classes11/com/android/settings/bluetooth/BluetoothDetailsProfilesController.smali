.class public Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsProfilesController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field static final HIGH_QUALITY_AUDIO_PREF_TAG:Ljava/lang/String; = "A2dpProfileHighQualityAudio"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final KEY_PROFILES_GROUP:Ljava/lang/String; = "bluetooth_profiles"


# instance fields
.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p3, "manager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .param p4, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p5, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 61
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 62
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 63
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 64
    iput-object p4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 65
    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 66
    return-void
.end method

.method private createProfilePreference(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/support/v14/preference/SwitchPreference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 86
    new-instance v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v0, p1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, "pref":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 89
    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 90
    return-object v0
.end method

.method private disableProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroid/bluetooth/BluetoothDevice;Landroid/support/v14/preference/SwitchPreference;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "profilePref"    # Landroid/support/v14/preference/SwitchPreference;

    .line 152
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 153
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 154
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    goto :goto_0

    .line 156
    :cond_0
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 159
    :cond_1
    :goto_0
    return-void
.end method

.method private enableProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroid/bluetooth/BluetoothDevice;Landroid/support/v14/preference/SwitchPreference;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "profilePref"    # Landroid/support/v14/preference/SwitchPreference;

    .line 135
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 138
    return-void

    .line 140
    :cond_0
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 143
    :cond_1
    invoke-interface {p1, p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 145
    return-void
.end method

.method private getProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v0

    .line 196
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;>;"
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    .line 198
    .local v1, "pbapPermission":I
    if-eqz v1, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v2

    .line 200
    .local v2, "psp":Lcom/android/settingslib/bluetooth/PbapServerProfile;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v2    # "psp":Lcom/android/settingslib/bluetooth/PbapServerProfile;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/settingslib/bluetooth/MapProfile;

    move-result-object v2

    .line 204
    .local v2, "mapProfile":Lcom/android/settingslib/bluetooth/MapProfile;
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v3

    .line 205
    .local v3, "mapPermission":I
    if-eqz v3, :cond_1

    .line 206
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_1
    return-object v0
.end method

.method public static synthetic lambda$maybeAddHighQualityAudioPref$0(Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "a2dp"    # Lcom/android/settingslib/bluetooth/A2dpProfile;
    .param p2, "clickedPref"    # Landroid/support/v7/preference/Preference;

    .line 231
    move-object v0, p2

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 232
    .local v0, "enable":Z
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 233
    const/4 v1, 0x1

    return v1
.end method

.method private maybeAddHighQualityAudioPref(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 4
    .param p1, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 220
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    .line 221
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 224
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    move-object v1, p1

    check-cast v1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 225
    .local v1, "a2dp":Lcom/android/settingslib/bluetooth/A2dpProfile;
    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    new-instance v2, Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    .line 227
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 228
    .local v2, "highQualityAudioPref":Landroid/support/v14/preference/SwitchPreference;
    const-string v3, "A2dpProfileHighQualityAudio"

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 229
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 230
    new-instance v3, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$pv2kZi3KDLDrPBqbb1ECR74MeRo;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$pv2kZi3KDLDrPBqbb1ECR74MeRo;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;Lcom/android/settingslib/bluetooth/A2dpProfile;)V

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 235
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 237
    .end local v2    # "highQualityAudioPref":Landroid/support/v14/preference/SwitchPreference;
    :cond_1
    return-void
.end method

.method private refreshProfilePreference(Landroid/support/v14/preference/SwitchPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 6
    .param p1, "profilePref"    # Landroid/support/v14/preference/SwitchPreference;
    .param p2, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 98
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 99
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 100
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 103
    :cond_1
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 106
    :cond_3
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v1, :cond_5

    .line 107
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 110
    :cond_5
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 113
    :goto_3
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v1, :cond_7

    .line 114
    move-object v1, p2

    check-cast v1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 115
    .local v1, "a2dp":Lcom/android/settingslib/bluetooth/A2dpProfile;
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    const-string v5, "A2dpProfileHighQualityAudio"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    .line 117
    .local v4, "highQualityPref":Landroid/support/v14/preference/SwitchPreference;
    if-eqz v4, :cond_7

    .line 118
    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 119
    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 120
    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getHighQualityAudioOptionLabel(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 122
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_4

    .line 124
    :cond_6
    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 128
    .end local v1    # "a2dp":Lcom/android/settingslib/bluetooth/A2dpProfile;
    .end local v4    # "highQualityPref":Landroid/support/v14/preference/SwitchPreference;
    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 266
    const-string v0, "bluetooth_profiles"

    return-object v0
.end method

.method protected init(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->refresh()V

    .line 74
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 167
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 168
    .local v0, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    if-nez v0, :cond_1

    .line 170
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v1

    .line 171
    .local v1, "psp":Lcom/android/settingslib/bluetooth/PbapServerProfile;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    move-object v0, v1

    goto :goto_0

    .line 174
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 177
    .end local v1    # "psp":Lcom/android/settingslib/bluetooth/PbapServerProfile;
    :cond_1
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    .line 178
    .local v1, "profilePref":Landroid/support/v14/preference/SwitchPreference;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 179
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    const-class v3, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profilePref title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " profilePref.isChecked() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->enableProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroid/bluetooth/BluetoothDevice;Landroid/support/v14/preference/SwitchPreference;)V

    goto :goto_1

    .line 183
    :cond_2
    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->disableProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroid/bluetooth/BluetoothDevice;Landroid/support/v14/preference/SwitchPreference;)V

    .line 185
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->refreshProfilePreference(Landroid/support/v14/preference/SwitchPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 186
    const/4 v3, 0x1

    return v3
.end method

.method protected refresh()V
    .locals 4

    .line 245
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 246
    .local v1, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    .line 247
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    .line 248
    .local v2, "pref":Landroid/support/v14/preference/SwitchPreference;
    if-nez v2, :cond_0

    .line 249
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->createProfilePreference(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    .line 250
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 251
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->maybeAddHighQualityAudioPref(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 253
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->refreshProfilePreference(Landroid/support/v14/preference/SwitchPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 254
    .end local v1    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .end local v2    # "pref":Landroid/support/v14/preference/SwitchPreference;
    goto :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 256
    .local v1, "removedProfile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    .line 257
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    .line 258
    .restart local v2    # "pref":Landroid/support/v14/preference/SwitchPreference;
    if-eqz v2, :cond_2

    .line 259
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 261
    .end local v1    # "removedProfile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .end local v2    # "pref":Landroid/support/v14/preference/SwitchPreference;
    :cond_2
    goto :goto_1

    .line 262
    :cond_3
    return-void
.end method
