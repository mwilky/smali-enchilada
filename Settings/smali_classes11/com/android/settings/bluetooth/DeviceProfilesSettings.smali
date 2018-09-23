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

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-void
.end method

.method private addPreferencesForProfiles()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

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

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v2

    instance-of v3, v1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-nez v3, :cond_0

    instance-of v3, v1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    instance-of v3, v1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const-string v6, "A2dpProfileHighQualityAudio"

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    new-instance v6, Lcom/android/settings/bluetooth/-$$Lambda$DeviceProfilesSettings$qBNrFA8-Smm3qyHXDkezO-CS7tQ;

    invoke-direct {v6, v4, v3, v5}, Lcom/android/settings/bluetooth/-$$Lambda$DeviceProfilesSettings$qBNrFA8-Smm3qyHXDkezO-CS7tQ;-><init>(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothDevice;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v0

    const-string v1, "DeviceProfilesSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPreferencesForProfiles: pbapPermission = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/settingslib/bluetooth/MapProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v2

    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPreferencesForProfiles: mapPermission = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f12029c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1202b6

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1202b5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v5, p0, v0, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {p1, v6, v5, v3, v7}, Lcom/android/settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;
    .locals 2

    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-object v0
.end method

.method private findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method private getProfileOf(Landroid/view/View;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .locals 3

    instance-of v0, p1, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    return-object v1
.end method

.method static synthetic lambda$addPreferencesForProfiles$0(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothDevice;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method private onProfileClicked(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroid/widget/CheckBox;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    :cond_1
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-void

    :cond_2
    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, p1, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    :cond_4
    invoke-interface {p1, v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    :goto_1
    return-void
.end method

.method private refresh()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f0a032e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    return-void
.end method

.method private refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    instance-of v1, p2, Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

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

    :cond_1
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_3

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

    :cond_3
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/PanProfile;

    const/4 v4, 0x2

    if-eqz v1, :cond_5

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

    :cond_5
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/DunServerProfile;

    if-eqz v1, :cond_7

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

    :cond_7
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_4
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v1, :cond_9

    move-object v1, p2

    check-cast v1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    const-string v5, "A2dpProfileHighQualityAudio"

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/CheckBox;

    if-eqz v5, :cond_9

    move-object v5, v4

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getHighQualityAudioOptionLabel(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_5

    :cond_8
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_5
    return-void
.end method

.method private refreshProfiles()V
    .locals 7

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

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    :goto_1
    goto :goto_0

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

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v2

    if-eqz v2, :cond_4

    instance-of v3, v1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v3

    const-string v4, "DeviceProfilesSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshProfiles: pbapPermission = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    instance-of v3, v1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v3

    const-string v4, "DeviceProfilesSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshProfiles: mapPermission = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    goto :goto_2

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

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    goto/16 :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x21b

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x3

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f0a032e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/view/View;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroid/widget/CheckBox;)V

    goto :goto_0

    :cond_0
    const-string v1, "DeviceProfilesSettings"

    const-string v2, "Error: Can\'t get the profile for the preference"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "device_address"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0411

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0410

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f0a032e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1206a1

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120a37

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120317

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    :cond_1
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->dismiss()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
