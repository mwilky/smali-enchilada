.class public Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;
.super Lcom/android/settings/applications/AppStateAppOpsBridge;
.source "AppStateChangeWifiStateBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;
    }
.end annotation


# static fields
.field private static final APP_OPS_OP_CODE:I = 0x41

.field public static final FILTER_CHANGE_WIFI_STATE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private static final PM_CHANGE_WIFI_STATE:Ljava/lang/String; = "android.permission.CHANGE_WIFI_STATE"

.field private static final PM_NETWORK_SETTINGS:Ljava/lang/String; = "android.permission.NETWORK_SETTINGS"

.field private static final PM_PERMISSIONS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AppStateChangeWifiStateBridge"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.permission.CHANGE_WIFI_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->PM_PERMISSIONS:[Ljava/lang/String;

    new-instance v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->FILTER_CHANGE_WIFI_STATE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 6

    sget-object v5, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->PM_PERMISSIONS:[Ljava/lang/String;

    const/16 v4, 0x41

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getWifiSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/AppStateAppOpsBridge;->getPermissionInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    invoke-direct {v1, v0}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    return-object v1
.end method

.method protected loadAllExtraInfo()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->getWifiSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
