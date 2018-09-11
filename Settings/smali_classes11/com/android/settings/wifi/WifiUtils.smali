.class public Lcom/android/settings/wifi/WifiUtils;
.super Ljava/lang/Object;
.source "WifiUtils.java"


# static fields
.field private static final PASSWORD_MAX_LENGTH:I = 0x3f

.field private static final PASSWORD_MIN_LENGTH:I = 0x8

.field private static final SSID_ASCII_MAX_LENGTH:I = 0x20

.field private static final SSID_ASCII_MIN_LENGTH:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canSignIntoNetwork(Landroid/net/NetworkCapabilities;)Z
    .locals 1
    .param p0, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 116
    if-eqz p0, :cond_0

    const/16 v0, 0x11

    .line 117
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0
.end method

.method public static isHotspotPasswordValid(Ljava/lang/String;)Z
    .locals 3
    .param p0, "password"    # Ljava/lang/String;

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    return v1

    .line 65
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 66
    .local v0, "length":I
    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    const/16 v2, 0x3f

    if-gt v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public static isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 76
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 77
    return v0

    .line 80
    :cond_0
    const-string v1, "device_policy"

    .line 81
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 82
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    new-instance v2, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    .line 86
    .local v2, "pm":Lcom/android/settingslib/wrapper/PackageManagerWrapper;
    const-string v3, "android.software.device_admin"

    invoke-virtual {v2, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 87
    return v4

    .line 90
    :cond_1
    const/4 v3, 0x0

    .line 91
    .local v3, "isConfigEligibleForLockdown":Z
    if-eqz v1, :cond_3

    .line 92
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v5

    .line 93
    .local v5, "deviceOwner":Landroid/content/ComponentName;
    if-eqz v5, :cond_3

    .line 94
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v6

    .line 96
    .local v6, "deviceOwnerUserId":I
    :try_start_0
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v7

    .line 98
    .local v7, "deviceOwnerUid":I
    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v8, :cond_2

    move v8, v4

    goto :goto_0

    :cond_2
    move v8, v0

    :goto_0
    move v3, v8

    .line 101
    .end local v7    # "deviceOwnerUid":I
    goto :goto_1

    .line 99
    :catch_0
    move-exception v7

    .line 104
    .end local v5    # "deviceOwner":Landroid/content/ComponentName;
    .end local v6    # "deviceOwnerUserId":I
    :cond_3
    :goto_1
    if-nez v3, :cond_4

    .line 105
    return v0

    .line 108
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 109
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string v6, "wifi_device_owner_configs_lockdown"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v0, v4

    nop

    .line 111
    .local v0, "isLockdownFeatureEnabled":Z
    :cond_5
    return v0
.end method

.method public static isSSIDTooLong(Ljava/lang/String;)Z
    .locals 3
    .param p0, "ssid"    # Ljava/lang/String;

    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    return v1

    .line 47
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v2, 0x20

    if-le v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public static isSSIDTooShort(Ljava/lang/String;)Z
    .locals 2
    .param p0, "ssid"    # Ljava/lang/String;

    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 53
    return v1

    .line 55
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSupportDualBand()Z
    .locals 4

    .line 122
    const-string v0, "persist.vendor.wifi.softap.dualband"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "propDualband":Ljava/lang/String;
    const-string v1, "WifiUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dualband:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
