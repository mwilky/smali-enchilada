.class public Lcom/oneplus/settings/SettingsBaseApplication;
.super Landroid/app/Application;
.source "SettingsBaseApplication.java"


# static fields
.field public static final ONEPLUS_DEBUG:Z

.field public static mApplication:Landroid/app/Application;


# instance fields
.field private mIsBeta:Z

.field private mTracker:Lcom/google/analytics/tracking/android/Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/SettingsBaseApplication;->ONEPLUS_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultTracker()Lcom/google/analytics/tracking/android/Tracker;
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/oneplus/settings/SettingsBaseApplication;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    if-nez v0, :cond_1

    .line 49
    const-class v0, Lcom/oneplus/settings/SettingsBaseApplication;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/SettingsBaseApplication;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    if-nez v1, :cond_0

    .line 51
    invoke-static {p0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v1

    .line 53
    .local v1, "analytics":Lcom/google/analytics/tracking/android/GoogleAnalytics;
    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v2

    sget-object v3, Lcom/google/analytics/tracking/android/Logger$LogLevel;->VERBOSE:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-interface {v2, v3}, Lcom/google/analytics/tracking/android/Logger;->setLogLevel(Lcom/google/analytics/tracking/android/Logger$LogLevel;)V

    .line 54
    const-string v2, "UA-92966593-3"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/SettingsBaseApplication;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 56
    .end local v1    # "analytics":Lcom/google/analytics/tracking/android/GoogleAnalytics;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/SettingsBaseApplication;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    return-object v0
.end method

.method public isBetaRom()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/oneplus/settings/SettingsBaseApplication;->mIsBeta:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 32
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 33
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 23
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 24
    sput-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 25
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBetaRom()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/SettingsBaseApplication;->mIsBeta:Z

    .line 26
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/OPOnlineConfigManager;->getInstence(Landroid/content/Context;)Lcom/oneplus/settings/OPOnlineConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/OPOnlineConfigManager;->init()V

    .line 27
    return-void
.end method
