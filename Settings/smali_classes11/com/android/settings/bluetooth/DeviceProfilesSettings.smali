.class public final Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ARG_DEVICE_ADDRESS:Ljava/lang/String; = "device_address"

.field static final HIGH_QUALITY_AUDIO_PREF_TAG:Ljava/lang/String; = "A2dpProfileHighQualityAudio"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final KEY_PBAP_SERVER:Ljava/lang/String; = "PBAP Server"

.field private static final KEY_PROFILE_CONTAINER:Ljava/lang/String; = "profile_container"

.field private static final KEY_UNPAIR:Ljava/lang/String; = "unpair"

.field private static final TAG:Ljava/lang/String; = "DeviceProfilesSettings"


# instance fields
.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mProfileContainer:Landroid/view/ViewGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileLabel:Landroid/widget/TextView;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/DeviceProfilesSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/DeviceProfilesSettings;
    .param p1, "x1"    # Landroid/widget/CheckBox;
    .param p2, "x2"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-void
.end method

.method private addPreferencesForProfiles()V
    .locals 7

    .line 174
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 175
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 176
    .local v1, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v2

    .line 178
    .local v2, "pref":Landroid/widget/CheckBox;
    instance-of v3, v1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-nez v3, :cond_0

    instance-of v3, v1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-nez v3, :cond_0

    .line 180
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    :cond_0
    instance-of v3, v1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v3, :cond_2

    .line 184
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 185
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    move-object v4, v1

    check-cast v4, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 186
    .local v4, "a2dpProfile":Lcom/android/settingslib/bluetooth/A2dpProfile;
    invoke-virtual {v4, v3}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    new-instance v5, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 188
    .local v5, "highQualityPref":Landroid/widget/CheckBox;
    const-string v6, "A2dpProfileHighQualityAudio"

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 189
    new-instance v6, Lcom/android/settings/bluetooth/-$$Lambda$DeviceProfilesSettings$qBNrFA8-Smm3qyHXDkezO-CS7tQ;

    invoke-direct {v6, v4, v3, v5}, Lcom/android/settings/bluetooth/-$$Lambda$DeviceProfilesSettings$qBNrFA8-Smm3qyHXDkezO-CS7tQ;-><init>(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothDevice;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 193
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 195
    .end local v5    # "highQualityPref":Landroid/widget/CheckBox;
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 197
    .end local v1    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .end local v2    # "pref":Landroid/widget/CheckBox;
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "a2dpProfile":Lcom/android/settingslib/bluetooth/A2dpProfile;
    :cond_2
    goto :goto_0

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v0

    .line 200
    .local v0, "pbapPermission":I
    const-string v1, "DeviceProfilesSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPreferencesForProfiles: pbapPermission = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-eqz v0, :cond_4

    .line 203
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v1

    .line 204
    .local v1, "psp":Lcom/android/settingslib/bluetooth/PbapServerProfile;
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v2

    .line 205
    .local v2, "pbapPref":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 208
    .end local v1    # "psp":Lcom/android/settingslib/bluetooth/PbapServerProfile;
    .end local v2    # "pbapPref":Landroid/widget/CheckBox;
    :cond_4
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/settingslib/bluetooth/MapProfile;

    move-result-object v1

    .line 209
    .local v1, "mapProfile":Lcom/android/settingslib/bluetooth/MapProfile;
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v2

    .line 210
    .local v2, "mapPermission":I
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPreferencesForProfiles: mapPermission = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-eqz v2, :cond_5

    .line 212
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v3

    .line 213
    .local v3, "mapPreference":Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 216
    .end local v3    # "mapPreference":Landroid/widget/CheckBox;
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 217
    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 297
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 298
    .local v0, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    const v2, 0x7f12029c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "profileName":Ljava/lang/String;
    const v3, 0x7f1202b6

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "title":Ljava/lang/String;
    const v4, 0x7f1202b5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "message":Ljava/lang/String;
    new-instance v5, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v5, p0, v0, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 328
    .local v5, "disconnectListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 329
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    .line 328
    invoke-static {p1, v6, v5, v3, v7}, Lcom/android/settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 330
    return-void
.end method

.method private createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;
    .locals 2
    .param p1, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 241
    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 242
    .local v0, "pref":Landroid/widget/CheckBox;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 243
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 244
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 248
    return-object v0
.end method

.method private findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 1
    .param p1, "profile"    # Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method private getProfileOf(Landroid/view/View;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 429
    instance-of v0, p1, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 430
    return-object v1

    .line 432
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 433
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 436
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 437
    :catch_0
    move-exception v2

    .line 438
    .local v2, "ignored":Ljava/lang/IllegalArgumentException;
    return-object v1
.end method

.method static synthetic lambda$addPreferencesForProfiles$0(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothDevice;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1
    .param p0, "a2dpProfile"    # Lcom/android/settingslib/bluetooth/A2dpProfile;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "highQualityPref"    # Landroid/widget/CheckBox;
    .param p3, "v"    # Landroid/view/View;

    .line 190
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 191
    return-void
.end method

.method private onProfileClicked(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroid/widget/CheckBox;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .param p2, "profilePref"    # Landroid/widget/CheckBox;

    .line 263
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 265
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 267
    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 268
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 270
    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 273
    :cond_1
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 275
    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 277
    return-void

    .line 279
    :cond_2
    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 281
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v1, :cond_3

    .line 282
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 284
    :cond_3
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 287
    :cond_4
    invoke-interface {p1, v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 288
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 290
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 292
    :goto_1
    return-void
.end method

.method private refresh()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f0a032e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 339
    .local v0, "deviceNameField":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 341
    invoke-static {v0}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    .line 345
    return-void
.end method

.method private refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 7
    .param p1, "profilePref"    # Landroid/widget/CheckBox;
    .param p2, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 387
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 390
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 392
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    .line 396
    :cond_1
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_3

    .line 397
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    .line 400
    :cond_3
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/PanProfile;

    const/4 v4, 0x2

    if-eqz v1, :cond_5

    .line 401
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v4, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    .line 404
    :cond_5
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/DunServerProfile;

    if-eqz v1, :cond_7

    .line 405
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v4, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    .line 408
    :cond_7
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 410
    :goto_4
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v1, :cond_9

    .line 411
    move-object v1, p2

    check-cast v1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 412
    .local v1, "a2dpProfile":Lcom/android/settingslib/bluetooth/A2dpProfile;
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    const-string v5, "A2dpProfileHighQualityAudio"

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 413
    .local v4, "v":Landroid/view/View;
    instance-of v5, v4, Landroid/widget/CheckBox;

    if-eqz v5, :cond_9

    .line 414
    move-object v5, v4

    check-cast v5, Landroid/widget/CheckBox;

    .line 415
    .local v5, "highQualityPref":Landroid/widget/CheckBox;
    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getHighQualityAudioOptionLabel(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 416
    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 418
    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 419
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 420
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_5

    .line 422
    :cond_8
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 426
    .end local v1    # "a2dpProfile":Lcom/android/settingslib/bluetooth/A2dpProfile;
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "highQualityPref":Landroid/widget/CheckBox;
    :cond_9
    :goto_5
    return-void
.end method

.method private refreshProfiles()V
    .locals 7

    .line 348
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

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

    .line 349
    .local v1, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v2

    .line 350
    .local v2, "profilePref":Landroid/widget/CheckBox;
    if-nez v2, :cond_0

    .line 351
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v2

    .line 352
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 354
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 356
    .end local v1    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .end local v2    # "profilePref":Landroid/widget/CheckBox;
    :goto_1
    goto :goto_0

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 358
    .restart local v1    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v2

    .line 359
    .restart local v2    # "profilePref":Landroid/widget/CheckBox;
    if-eqz v2, :cond_4

    .line 361
    instance-of v3, v1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v3, :cond_2

    .line 362
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v3

    .line 363
    .local v3, "pbapPermission":I
    const-string v4, "DeviceProfilesSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshProfiles: pbapPermission = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    if-eqz v3, :cond_2

    .line 365
    goto :goto_2

    .line 367
    .end local v3    # "pbapPermission":I
    :cond_2
    instance-of v3, v1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v3, :cond_3

    .line 368
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v3

    .line 369
    .local v3, "mapPermission":I
    const-string v4, "DeviceProfilesSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshProfiles: mapPermission = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    if-eqz v3, :cond_3

    .line 371
    goto :goto_2

    .line 373
    .end local v3    # "mapPermission":I
    :cond_3
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 376
    .end local v1    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .end local v2    # "profilePref":Landroid/widget/CheckBox;
    :cond_4
    goto/16 :goto_2

    .line 378
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 379
    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 221
    .local v0, "numProfiles":I
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 223
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0

    .line 225
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 226
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    .line 230
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 79
    const/16 v0, 0x21b

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 118
    const/4 v0, -0x3

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f0a032e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 121
    .local v0, "deviceName":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 122
    goto :goto_0

    .line 124
    .end local v0    # "deviceName":Landroid/widget/EditText;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 127
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 253
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 254
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/view/View;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 255
    .local v0, "prof":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    if-eqz v0, :cond_0

    .line 256
    move-object v1, p1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 258
    :cond_0
    const-string v1, "DeviceProfilesSettings"

    const-string v2, "Error: Can\'t get the profile for the preference"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v0    # "prof":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 87
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 89
    .local v0, "deviceManager":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "device_address"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "address":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 92
    .local v2, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 93
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 95
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    .line 94
    invoke-virtual {v0, v3, v4, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 98
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0411

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0410

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f0a032e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 107
    .local v0, "deviceName":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 108
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    .line 109
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 110
    const v2, 0x7f1206a1

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 111
    const v2, 0x7f120a37

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 112
    const v2, 0x7f120317

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 108
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .line 131
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDestroy()V

    .line 132
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 139
    :cond_1
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 335
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 164
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onPause()V

    .line 166
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 171
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 148
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onResume()V

    .line 150
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->dismiss()V

    .line 155
    return-void

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 160
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 143
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 144
    return-void
.end method
