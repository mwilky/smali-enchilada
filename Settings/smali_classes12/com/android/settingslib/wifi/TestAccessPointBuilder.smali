.class public Lcom/android/settingslib/wifi/TestAccessPointBuilder;
.super Ljava/lang/Object;
.source "TestAccessPointBuilder.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mCarrierName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mFqdn:Ljava/lang/String;

.field private mIsCarrierAp:Z

.field private mNetworkId:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mProviderFriendlyName:Ljava/lang/String;

.field private mRssi:I

.field private mScanResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScoredNetworkCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mSecurity:I

.field private mSpeed:I

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mBssid:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSpeed:I

    sget v2, Lcom/android/settingslib/wifi/AccessPoint;->UNREACHABLE_RSSI:I

    iput v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    const-string v2, "TestSsid"

    iput-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->ssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mFqdn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mProviderFriendlyName:Ljava/lang/String;

    iput v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSecurity:I

    iput-boolean v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mIsCarrierAp:Z

    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mCarrierName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settingslib/wifi/AccessPoint;
    .locals 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mBssid:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string v2, "key_ssid"

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_config"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "key_networkinfo"

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "key_wifiinfo"

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mFqdn:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "key_fqdn"

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mFqdn:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mProviderFriendlyName:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "key_provider_friendly_name"

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mProviderFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScanResults:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    const-string v2, "key_scanresults"

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScanResults:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScanResults:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_2
    iget-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScoredNetworkCache:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    const-string v2, "key_scorednetworkcache"

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScoredNetworkCache:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    const-string v2, "key_security"

    iget v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSecurity:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_speed"

    iget v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSpeed:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_is_carrier_ap"

    iget-boolean v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mIsCarrierAp:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mCarrierName:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, "key_carrier_name"

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mCarrierName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v2, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iget v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    invoke-virtual {v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->setRssi(I)V

    return-object v2
.end method

.method public setActive(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 4
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Landroid/net/NetworkInfo;

    const-string v1, "TestNetwork"

    const-string v2, "TestNetwork"

    const/16 v3, 0x8

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    :goto_0
    return-object p0
.end method

.method public setBssid(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mBssid:Ljava/lang/String;

    return-object p0
.end method

.method public setCarrierName(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mCarrierName:Ljava/lang/String;

    return-object p0
.end method

.method public setFqdn(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mFqdn:Ljava/lang/String;

    return-object p0
.end method

.method public setIsCarrierAp(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mIsCarrierAp:Z

    return-object p0
.end method

.method public setLevel(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 4
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    if-nez p1, :cond_0

    const/16 v0, -0x64

    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    const/16 v0, -0x37

    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    goto :goto_0

    :cond_1
    const/high16 v0, 0x42340000    # 45.0f

    const/high16 v1, 0x40800000    # 4.0f

    int-to-float v2, p1

    mul-float/2addr v2, v0

    div-float/2addr v2, v1

    const/high16 v3, -0x3d380000    # -100.0f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    :goto_0
    return-object p0
.end method

.method public setNetworkId(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    return-object p0
.end method

.method public setNetworkInfo(Landroid/net/NetworkInfo;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public setProviderFriendlyName(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mProviderFriendlyName:Ljava/lang/String;

    return-object p0
.end method

.method public setReachable(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    sget v1, Lcom/android/settingslib/wifi/AccessPoint;->UNREACHABLE_RSSI:I

    if-ne v0, v1, :cond_1

    const/16 v0, -0x64

    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settingslib/wifi/AccessPoint;->UNREACHABLE_RSSI:I

    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setRssi(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    return-object p0
.end method

.method public setSaved(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    :goto_0
    return-object p0
.end method

.method public setScanResults(Ljava/util/ArrayList;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Lcom/android/settingslib/wifi/TestAccessPointBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScanResults:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setScoredNetworkCache(Ljava/util/ArrayList;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;)",
            "Lcom/android/settingslib/wifi/TestAccessPointBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScoredNetworkCache:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setSecurity(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSecurity:I

    return-object p0
.end method

.method public setSpeed(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0

    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSpeed:I

    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->ssid:Ljava/lang/String;

    return-object p0
.end method

.method public setWifiInfo(Landroid/net/wifi/WifiInfo;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method
