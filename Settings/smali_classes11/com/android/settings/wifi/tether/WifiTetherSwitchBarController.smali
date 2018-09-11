.class public Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;
.super Ljava/lang/Object;
.source "WifiTetherSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# static fields
.field private static final ICCID_INDEX:I = 0x1

.field private static final PILOT_INDEX:I = 0x4

.field private static final SOFTSIM_URL:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "WifiTetherSwitchBarController"

.field private static final WIFI_INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field final mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSoftSimPilotModeEnabled:Z

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    const-string v0, "content://com.redteamobile.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->SOFTSIM_URL:Landroid/net/Uri;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->WIFI_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 80
    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->WIFI_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->WIFI_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings/widget/SwitchWidgetController;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSoftSimPilotModeEnabled:Z

    .line 67
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    .line 136
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    .line 89
    new-instance v1, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v1, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 90
    const-string v1, "connectivity"

    .line 91
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 92
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 93
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->isPilotModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSoftSimPilotModeEnabled:Z

    .line 98
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)Lcom/android/settings/widget/SwitchWidgetController;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    .line 47
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    .line 47
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;
    .param p1, "x1"    # I

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;
    .param p1, "x1"    # Z

    .line 47
    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSoftSimPilotModeEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;
    .param p1, "x1"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->isPilotModeEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getPilotModeFromSim(Landroid/content/Context;I)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slot"    # I

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "iccId":Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .line 230
    .local v2, "isPilotMode":Z
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slot=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .local v3, "where":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->SOFTSIM_URL:Landroid/net/Uri;

    const-string v6, "slot"

    const-string v7, "iccid"

    const-string v8, "permit_package"

    const-string v9, "forbid_package"

    const-string v10, "pilot"

    filled-new-array {v6, v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v6

    .line 232
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "slot"

    .line 231
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 234
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_2

    .line 235
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 236
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_1

    .line 237
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 238
    const/4 v6, 0x4

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move v2, v6

    .line 239
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 240
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 241
    return v5

    .line 243
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 245
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v3    # "where":Ljava/lang/StringBuilder;
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_2
    goto :goto_1

    .line 247
    :catch_0
    move-exception v3

    .line 248
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    const-string v4, "WifiTetherSwitchBarController"

    const-string v5, "getPilotModeFromSim SQLiteException "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_1
    return v1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .line 157
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 187
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    goto :goto_0

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$3;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    .line 175
    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 160
    goto :goto_0

    .line 183
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    .line 185
    goto :goto_0

    .line 177
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 181
    nop

    .line 191
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isPilotModeEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 254
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 255
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .local v1, "slotId":I
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 256
    invoke-direct {p0, p1, v1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->getPilotModeFromSim(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    const-string v3, "WifiTetherSwitchBarController"

    const-string v4, "Soft sim is in pilot mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v3, 0x1

    return v3

    .line 255
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v1    # "slotId":I
    .end local v2    # "count":I
    :cond_1
    const-string v1, "WifiTetherSwitchBarController"

    const-string v2, "No SIM is in pilot mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v1, 0x0

    return v1
.end method

.method private updateWifiSwitch()V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 197
    .local v0, "isAirplaneMode":Z
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSoftSimPilotModeEnabled:Z

    if-nez v3, :cond_1

    .line 203
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_1

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 207
    :goto_1
    return-void
.end method


# virtual methods
.method public onBlacklistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .line 222
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0
    .param p1, "isDataSaving"    # Z

    .line 211
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    .line 212
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->WIFI_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 1
    .param p1, "isChecked"    # Z

    .line 117
    if-nez p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->stopTether()V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->startTether()V

    .line 122
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .line 217
    return-void
.end method

.method startTether()V
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    new-instance v3, Landroid/os/Handler;

    .line 133
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    .line 134
    return-void
.end method

.method stopTether()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 128
    return-void
.end method
