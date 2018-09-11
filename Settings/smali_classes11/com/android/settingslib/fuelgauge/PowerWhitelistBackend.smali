.class public Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;
.super Ljava/lang/Object;
.source "PowerWhitelistBackend.java"


# static fields
.field private static final DEVICE_IDLE_SERVICE:Ljava/lang/String; = "deviceidle"

.field private static final TAG:Ljava/lang/String; = "PowerWhitelistBackend"

.field private static sInstance:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mDeviceIdleService:Landroid/os/IDeviceIdleController;

.field private final mSysWhitelistedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSysWhitelistedAppsExceptIdle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhitelistedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    const-string v0, "deviceidle"

    .line 53
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;-><init>(Landroid/content/Context;Landroid/os/IDeviceIdleController;)V

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/IDeviceIdleController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceIdleService"    # Landroid/os/IDeviceIdleController;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    .line 48
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedApps:Landroid/util/ArraySet;

    .line 49
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedAppsExceptIdle:Landroid/util/ArraySet;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mAppContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 60
    invoke-virtual {p0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->refreshList()V

    .line 61
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 171
    sget-object v0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->sInstance:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    invoke-direct {v0, p0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->sInstance:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    .line 174
    :cond_0
    sget-object v0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->sInstance:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    return-object v0
.end method


# virtual methods
.method public addApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PowerWhitelistBackend"

    const-string v2, "Unable to reach IDeviceIdleController"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public getWhitelistSize()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    return v0
.end method

.method public isSysWhitelisted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSysWhitelistedExceptIdle(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSysWhitelistedExceptIdle([Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgs"    # [Ljava/lang/String;

    .line 113
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    return v1

    .line 116
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 117
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isSysWhitelistedExceptIdle(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    const/4 v0, 0x1

    return v0

    .line 116
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_2
    return v1
.end method

.method public isWhitelisted(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 73
    return v1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 80
    return v2

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mAppContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 84
    .local v0, "defaultSms":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    return v1

    .line 88
    :cond_2
    iget-object v3, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "defaultDialer":Ljava/lang/String;
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 90
    return v1

    .line 92
    :cond_3
    return v2
.end method

.method public isWhitelisted([Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgs"    # [Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    return v1

    .line 99
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 100
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    const/4 v0, 0x1

    return v0

    .line 99
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_2
    return v1
.end method

.method public refreshList()V
    .locals 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 146
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 147
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 148
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-nez v0, :cond_0

    .line 149
    return-void

    .line 152
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "whitelistedApps":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 154
    .local v4, "app":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v4    # "app":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v1}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "sysWhitelistedApps":[Ljava/lang/String;
    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 158
    .local v5, "app":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v5    # "app":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 160
    :cond_2
    iget-object v3, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 161
    invoke-interface {v3}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "sysWhitelistedAppsExceptIdle":[Ljava/lang/String;
    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 163
    .restart local v5    # "app":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v5    # "app":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 167
    .end local v0    # "whitelistedApps":[Ljava/lang/String;
    .end local v1    # "sysWhitelistedApps":[Ljava/lang/String;
    .end local v3    # "sysWhitelistedAppsExceptIdle":[Ljava/lang/String;
    :cond_3
    goto :goto_3

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PowerWhitelistBackend"

    const-string v2, "Unable to reach IDeviceIdleController"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void
.end method

.method public removeApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PowerWhitelistBackend"

    const-string v2, "Unable to reach IDeviceIdleController"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
