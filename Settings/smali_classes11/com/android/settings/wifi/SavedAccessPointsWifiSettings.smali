.class public Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;


# static fields
.field static final MSG_UPDATE_PREFERENCES:I = 0x1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final SAVED_NETWORK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private static final SAVE_DIALOG_ACCESS_POINT_STATE:Ljava/lang/String; = "wifi_ap_state"

.field private static final TAG:Ljava/lang/String; = "SavedAccessPoints"


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAddNetworkPreference:Landroid/support/v7/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field final mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->SAVED_NETWORK_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 69
    new-instance v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$2;-><init>(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 82
    new-instance v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$3;-><init>(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$4;-><init>(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    .line 50
    invoke-direct {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->postUpdatePreference()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    .line 50
    invoke-direct {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->initPreferences()V

    return-void
.end method

.method private initPreferences()V
    .locals 15

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 153
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    .line 155
    .local v7, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 156
    invoke-static {v7, v1}, Lcom/android/settingslib/wifi/WifiSavedConfigUtils;->getAllConfigs(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v8

    .line 157
    .local v8, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    sget-object v1, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->SAVED_NETWORK_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 160
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 161
    .local v9, "accessPointsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move v10, v1

    .end local v1    # "i":I
    .local v10, "i":I
    if-ge v10, v9, :cond_1

    .line 162
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/settingslib/wifi/AccessPoint;

    .line 163
    .local v11, "ap":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v11}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 164
    .local v12, "key":Ljava/lang/String;
    nop

    .line 165
    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 166
    .local v13, "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    if-nez v13, :cond_0

    .line 167
    new-instance v14, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v5, 0x1

    move-object v1, v14

    move-object v2, v11

    move-object v3, v7

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    move-object v13, v14

    .line 169
    invoke-virtual {v13, v12}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    .line 170
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 171
    invoke-virtual {v0, v13}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 173
    :cond_0
    invoke-virtual {v13, v10}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 161
    .end local v11    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    add-int/lit8 v1, v10, 0x1

    .end local v10    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 176
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 178
    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAddNetworkPreference:Landroid/support/v7/preference/Preference;

    if-nez v1, :cond_2

    .line 179
    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAddNetworkPreference:Landroid/support/v7/preference/Preference;

    .line 180
    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAddNetworkPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f0801c9

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 181
    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAddNetworkPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f12139f

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAddNetworkPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v9}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 184
    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAddNetworkPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 187
    const-string v1, "SavedAccessPoints"

    const-string v2, "Saved networks activity loaded, but there are no saved networks!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_3
    return-void
.end method

.method private postUpdatePreference()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 195
    :cond_0
    return-void
.end method

.method private showWifiDialog(Lcom/android/settings/wifi/LongPressAccessPointPreference;)V
    .locals 3
    .param p1, "accessPoint"    # Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 198
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->removeDialog(I)V

    .line 200
    iput-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 203
    :cond_0
    if-eqz p1, :cond_1

    .line 205
    invoke-virtual {p1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    goto :goto_0

    .line 208
    :cond_1
    iput-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 209
    iput-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 212
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->showDialog(I)V

    .line 213
    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 243
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 247
    const/4 v0, 0x0

    return v0

    .line 245
    :cond_0
    const/16 v0, 0x25a

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 122
    const/16 v0, 0x6a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 140
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 141
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 143
    if-eqz p1, :cond_0

    .line 144
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "wifi_ap_state"

    .line 146
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 149
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v0, 0x7f1600e0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->addPreferencesFromResource(I)V

    .line 129
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 130
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .line 217
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 238
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p0, v2, v0}, Lcom/android/settings/wifi/WifiDialog;->createFullscreen(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_2

    .line 227
    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v3}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 229
    iput-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/android/settings/wifi/WifiDialog;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 236
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v0
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 4
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .line 267
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 271
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getPasspointFqdn()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "SavedAccessPoints"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove Passpoint configuration for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 274
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->postUpdatePreference()V

    goto :goto_1

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 281
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 283
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 292
    instance-of v0, p1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 293
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->showWifiDialog(Lcom/android/settings/wifi/LongPressAccessPointPreference;)V

    .line 294
    return v1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAddNetworkPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->showWifiDialog(Lcom/android/settings/wifi/LongPressAccessPointPreference;)V

    .line 297
    return v1

    .line 299
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .line 134
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 135
    invoke-direct {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->initPreferences()V

    .line 136
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 253
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 259
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 260
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 263
    :cond_0
    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .line 287
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 288
    return-void
.end method
