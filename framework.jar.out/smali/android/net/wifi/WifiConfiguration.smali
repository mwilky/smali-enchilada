.class public Landroid/net/wifi/WifiConfiguration;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$RecentFailure;,
        Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;,
        Landroid/net/wifi/WifiConfiguration$Status;,
        Landroid/net/wifi/WifiConfiguration$SuiteBCipher;,
        Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher;,
        Landroid/net/wifi/WifiConfiguration$GroupCipher;,
        Landroid/net/wifi/WifiConfiguration$PairwiseCipher;,
        Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;,
        Landroid/net/wifi/WifiConfiguration$Protocol;,
        Landroid/net/wifi/WifiConfiguration$KeyMgmt;
    }
.end annotation


# static fields
.field public static final AP_BAND_2GHZ:I = 0x0

.field public static final AP_BAND_5GHZ:I = 0x1

.field public static final AP_BAND_ANY:I = -0x1

.field public static final AP_BAND_DUAL:I = 0x2

.field private static final BACKUP_VERSION:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOME_NETWORK_RSSI_BOOST:I = 0x5

.field public static final INVALID_NETWORK_ID:I = -0x1

.field public static INVALID_RSSI:I = 0x0

.field public static final LOCAL_ONLY_NETWORK_ID:I = -0x2

.field private static final MAXIMUM_RANDOM_MAC_GENERATION_RETRY:I = 0x3

.field public static final METERED_OVERRIDE_METERED:I = 0x1

.field public static final METERED_OVERRIDE_NONE:I = 0x0

.field public static final METERED_OVERRIDE_NOT_METERED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WifiConfiguration"

.field public static final UNKNOWN_UID:I = -0x1

.field public static final USER_APPROVED:I = 0x1

.field public static final USER_BANNED:I = 0x2

.field public static final USER_PENDING:I = 0x3

.field public static final USER_UNSPECIFIED:I = 0x0

.field public static final WAPI_PSK_TYPE_ASCII:I = 0x0

.field public static final WAPI_PSK_TYPE_HEX:I = 0x1

.field public static final bssidVarName:Ljava/lang/String; = "bssid"

.field public static final erpVarName:Ljava/lang/String; = "erp"

.field public static final hiddenSSIDVarName:Ljava/lang/String; = "scan_ssid"

.field public static final pmfVarName:Ljava/lang/String; = "ieee80211w"

.field public static final priorityVarName:Ljava/lang/String; = "priority"

.field public static final pskVarName:Ljava/lang/String; = "psk"

.field public static final shareThisApVarName:Ljava/lang/String; = "share_this_ap"

.field public static final ssidVarName:Ljava/lang/String; = "ssid"

.field public static final updateIdentiferVarName:Ljava/lang/String; = "update_identifier"

.field public static final wapiCertSelModeVarName:Ljava/lang/String; = "wapi_user_cert_mode"

.field public static final wapiCertSelVarName:Ljava/lang/String; = "wapi_user_sel_cert"

.field public static final wapiPskTypeVarName:Ljava/lang/String; = "psk_key_type"

.field public static final wapiPskVarName:Ljava/lang/String; = "wapi_psk"

.field public static final wepKeyVarNames:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final wepTxKeyIdxVarName:Ljava/lang/String; = "wep_tx_keyidx"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public BSSID:Ljava/lang/String;

.field public FQDN:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public allowedAuthAlgorithms:Ljava/util/BitSet;

.field public allowedGroupCiphers:Ljava/util/BitSet;

.field public allowedGroupMgmtCiphers:Ljava/util/BitSet;

.field public allowedKeyManagement:Ljava/util/BitSet;

.field public allowedPairwiseCiphers:Ljava/util/BitSet;

.field public allowedProtocols:Ljava/util/BitSet;

.field public allowedSuiteBCiphers:Ljava/util/BitSet;

.field public apBand:I

.field public apChannel:I

.field public creationTime:Ljava/lang/String;

.field public creatorName:Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public creatorUid:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public defaultGwMacAddress:Ljava/lang/String;

.field public dhcpServer:Ljava/lang/String;

.field public didSelfAdd:Z

.field public dppConnector:Ljava/lang/String;

.field public dppCsign:Ljava/lang/String;

.field public dppNetAccessKey:Ljava/lang/String;

.field public dppNetAccessKeyExpiry:I

.field public dtimInterval:I

.field public enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field public ephemeral:Z

.field public hiddenSSID:Z

.field public isHomeProviderNetwork:Z

.field public isLegacyPasspointConfig:Z

.field public lastConnectUid:I

.field public lastConnected:J

.field public lastDisconnected:J

.field public lastUpdateName:Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public lastUpdateUid:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public linkedConfigurations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCachedConfigKey:Ljava/lang/String;

.field private mIpConfiguration:Landroid/net/IpConfiguration;

.field private mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

.field private mPasspointManagementObjectTree:Ljava/lang/String;

.field private mRandomizedMacAddress:Landroid/net/MacAddress;

.field public meteredHint:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public meteredOverride:I

.field public networkId:I

.field public noInternetAccessExpected:Z

.field public numAssociation:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public numNoInternetAccessReports:I

.field public numScorerOverride:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public numScorerOverrideAndSwitchedNetwork:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public peerWifiConfiguration:Ljava/lang/String;

.field public preSharedKey:Ljava/lang/String;

.field public priority:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public providerFriendlyName:Ljava/lang/String;

.field public final recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

.field public requirePMF:Z

.field public roamingConsortiumIds:[J

.field public selfAdded:Z

.field public shareThisAp:Z

.field public shared:Z

.field public status:I

.field public updateIdentifier:Ljava/lang/String;

.field public updateTime:Ljava/lang/String;

.field public useExternalScores:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public userApproved:I

.field public validatedInternetAccess:Z

.field public wapiCertSel:Ljava/lang/String;

.field public wapiCertSelMode:I

.field public wapiPsk:Ljava/lang/String;

.field public wapiPskType:I

.field public wepKeys:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public wepTxKeyIndex:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "wep_key0"

    const-string/jumbo v1, "wep_key1"

    const-string/jumbo v2, "wep_key2"

    const-string/jumbo v3, "wep_key3"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/16 v0, -0x7f

    sput v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    new-instance v0, Landroid/net/wifi/WifiConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    new-instance v1, Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration$RecentFailure;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    new-array v3, v0, [J

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->shareThisAp:Z

    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move v3, v0

    :goto_0
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v3}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    new-instance v3, Landroid/net/IpConfiguration;

    invoke-direct {v3}, Landroid/net/IpConfiguration;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    const-string v0, "02:00:00:00:00:00"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->dppConnector:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKey:Ljava/lang/String;

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKeyExpiry:I

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->dppCsign:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    new-instance v1, Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration$RecentFailure;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    if-eqz p1, :cond_2

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->shareThisAp:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shareThisAp:Z

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->copy(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    nop

    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    new-instance v0, Landroid/net/IpConfiguration;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-direct {v0, v1}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->getAssociationStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->setAssociationStatus(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppConnector:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->dppConnector:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKey:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKey:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKeyExpiry:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKeyExpiry:I

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppCsign:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->dppCsign:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    :cond_2
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 1

    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiConfiguration;Landroid/net/MacAddress;)Landroid/net/MacAddress;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    return-object p1
.end method

.method public static getWifiConfigFromBackup(Ljava/io/DataInputStream;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/BackupUtils$BadVersionException;
        }
    .end annotation

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-static {p0}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-static {p0}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    return-object v0

    :cond_1
    new-instance v2, Landroid/util/BackupUtils$BadVersionException;

    const-string v3, "Unknown Backup Serialization Version"

    invoke-direct {v2, v3}, Landroid/util/BackupUtils$BadVersionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz p0, :cond_1

    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz p0, :cond_2

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz p0, :cond_3

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    return v0
.end method

.method public static isValidMacAddressForRandomization(Landroid/net/MacAddress;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/MacAddress;->isMulticastAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/MacAddress;->isLocallyAssigned()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "02:00:00:00:00:00"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/MacAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static userApprovedAsString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "INVALID"

    return-object v0

    :pswitch_0
    const-string v0, "USER_BANNED"

    return-object v0

    :pswitch_1
    const-string v0, "USER_APPROVED"

    return-object v0

    :pswitch_2
    const-string v0, "USER_UNSPECIFIED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move v0, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public configKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public configKey(Z)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xbe

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WAPI_PSK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xbf

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WAPI_CERT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_b
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :goto_2
    nop

    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    :cond_d
    :goto_3
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthType()I
    .locals 5

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0xbf

    const/16 v3, 0xbe

    const/4 v4, 0x1

    if-le v0, v4, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "More than one auth type set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "More than one auth type set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return v3

    :cond_b
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_c

    return v2

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public getBytesForBackup()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public getHttpProxy()Landroid/net/ProxyInfo;
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v0, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/net/ProxyInfo;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v1, v1, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v0, v1}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    return-object v0
.end method

.method public getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v0, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    return-object v0
.end method

.method public getIpConfiguration()Landroid/net/IpConfiguration;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    return-object v0
.end method

.method public getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v3

    move-object v1, v2

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v3

    move-object v1, v2

    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz p1, :cond_5

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    nop

    :cond_5
    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Not an EAP network"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid config details"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getMoTree()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    return-object v0
.end method

.method public getOrCreateRandomizedMacAddress()Landroid/net/MacAddress;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    invoke-static {v1}, Landroid/net/wifi/WifiConfiguration;->isValidMacAddressForRandomization(Landroid/net/MacAddress;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/net/MacAddress;->createRandomUnicastAddress()Landroid/net/MacAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    invoke-static {v1}, Landroid/net/wifi/WifiConfiguration;->isValidMacAddressForRandomization(Landroid/net/MacAddress;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "02:00:00:00:00:00"

    invoke-static {v1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    return-object v1
.end method

.method public getPrintableSsid()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-le v0, v2, :cond_1

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_1

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v5, 0x3

    if-le v0, v5, :cond_2

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x50

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object v1
.end method

.method public getProxySettings()Landroid/net/IpConfiguration$ProxySettings;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v0, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    return-object v0
.end method

.method public getRandomizedMacAddress()Landroid/net/MacAddress;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public hasNoInternetAccess()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnterprise()Z
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEphemeral()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    return v0
.end method

.method public isLinked(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNoInternetAccessExpected()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    return v0
.end method

.method public isOpenNetwork()Z
    .locals 7

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    const/4 v4, 0x1

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v5, :cond_3

    move v5, v1

    :goto_2
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v5

    if-eqz v6, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    move v1, v2

    nop

    :cond_4
    return v1
.end method

.method public isPasspoint()Z
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0, v1}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    return-void

    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    new-instance v1, Landroid/net/ProxyInfo;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    new-instance v1, Landroid/net/ProxyInfo;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v2, v0}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v2, v1}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    return-void

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid ProxyInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    return-void
.end method

.method public setIpConfiguration(Landroid/net/IpConfiguration;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Landroid/net/IpConfiguration;

    invoke-direct {v0}, Landroid/net/IpConfiguration;-><init>()V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    return-void
.end method

.method public setNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    return-void
.end method

.method public setPasspointManagementObjectTree(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    return-void
.end method

.method public setProxy(Landroid/net/IpConfiguration$ProxySettings;Landroid/net/ProxyInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p2, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    return-void
.end method

.method public setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    return-void
.end method

.method public setRandomizedMacAddress(Landroid/net/MacAddress;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "WifiConfiguration"

    const-string/jumbo v1, "setRandomizedMacAddress received null MacAddress."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    return-void
.end method

.method public setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0, p1}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v1, :cond_0

    const-string v1, "* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "- DSBLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " SSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PROVIDER-NAME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " BSSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FQDN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PRIO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " HIDDEN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " NetworkSelectionStatus "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_3

    const-string v2, " mNetworkSelectionDisableReason "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move v2, v3

    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    const/16 v4, 0xe

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " counter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, " connect choice: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " connect choice set time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v2, " hasEverConnected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-lez v2, :cond_5

    const-string v2, " numAssociation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v2, :cond_6

    const-string v2, " numNoInternetAccessReports "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v2, " update "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v2, " creation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    if-eqz v2, :cond_9

    const-string v2, " didSelfAdd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v2, :cond_a

    const-string v2, " selfAdded"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-eqz v2, :cond_b

    const-string v2, " validatedInternetAccess"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v2, :cond_c

    const-string v2, " ephemeral"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-eqz v2, :cond_d

    const-string v2, " meteredHint"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    if-eqz v2, :cond_e

    const-string v2, " useExternalScores"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    if-eqz v2, :cond_10

    :cond_f
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    if-eqz v2, :cond_11

    const-string v2, " meteredOverride "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v2, " KeyMgmt:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    :goto_2
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->size()I

    move-result v4

    if-ge v2, v4, :cond_16

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_12

    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_12
    const/16 v4, 0xbe

    if-ne v4, v2, :cond_13

    const-string v4, "WAPI_PSK"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_13
    const/16 v4, 0xbf

    if-ne v4, v2, :cond_14

    const-string v4, "WAPI_CERT"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_14
    const-string v4, "??"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_16
    const-string v2, " Protocols:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    :goto_4
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->size()I

    move-result v4

    if-ge v2, v4, :cond_19

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_17

    sget-object v4, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_17
    const-string v4, "??"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " AuthAlgorithms:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    :goto_6
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->size()I

    move-result v4

    if-ge v2, v4, :cond_1c

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_1a

    sget-object v4, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_1a
    const-string v4, "??"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " PairwiseCiphers:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    :goto_8
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->size()I

    move-result v4

    if-ge v2, v4, :cond_1f

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_1d

    sget-object v4, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_1d
    const-string v4, "??"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " GroupCiphers:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    :goto_a
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->size()I

    move-result v4

    if-ge v2, v4, :cond_22

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_20

    sget-object v4, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_20
    const-string v4, "??"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " GroupMgmtCiphers:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    :goto_c
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->size()I

    move-result v4

    if-ge v2, v4, :cond_25

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher;->strings:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_23

    sget-object v4, Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher;->strings:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_23
    const-string v4, "??"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " SuiteBCiphers:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_e
    move v2, v3

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$SuiteBCipher;->strings:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_26

    sget-object v3, Landroid/net/wifi/WifiConfiguration$SuiteBCipher;->strings:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_26
    const-string v3, "??"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    :goto_f
    add-int/lit8 v3, v2, 0x1

    goto :goto_e

    :cond_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " PSK: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_29

    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2a

    const-string v2, " WapiPskType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    if-eqz v2, :cond_2b

    const-string v2, " WapiPsk: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    if-eq v2, v3, :cond_2c

    const-string v2, " WapiCertSelMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    if-eqz v2, :cond_2d

    const-string v2, " WapiCertSel: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    const-string v2, "\nEnterprise config:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nDPP config:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->dppConnector:Ljava/lang/String;

    if-eqz v2, :cond_2e

    const-string v2, " Dpp Connector: *\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKey:Ljava/lang/String;

    if-eqz v2, :cond_2f

    const-string v2, " Dpp NetAccessKey: *\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->dppCsign:Ljava/lang/String;

    if-eqz v2, :cond_30

    const-string v2, " Dpp Csign: *\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    const-string v2, "IP config:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v2}, Landroid/net/IpConfiguration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " networkSelectionBSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v7

    sub-long v7, v2, v7

    cmp-long v4, v7, v5

    if-gtz v4, :cond_32

    const-string v4, " blackListed since <incorrect>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_32
    const-string v4, " blackListed: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x3e8

    div-long v9, v7, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sec "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    :goto_10
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-eqz v4, :cond_34

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cuid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    if-eqz v4, :cond_35

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cname="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    if-eqz v4, :cond_36

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " luid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    if-eqz v4, :cond_37

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " lname="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " lcuid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " userApproved="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    invoke-static {v7}, Landroid/net/wifi/WifiConfiguration;->userApprovedAsString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " noInternetAccessExpected="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    cmp-long v4, v7, v5

    if-eqz v4, :cond_38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "lastConnected: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v4, :cond_39

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, " linked: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_39
    const-string/jumbo v4, "recentFailure: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Association Rejection code: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->getAssociationStatus()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ShareThisAp: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->shareThisAp:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->shareThisAp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-wide v4, v0, v3

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->dhcpServer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->getAssociationStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->dppConnector:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKeyExpiry:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->dppCsign:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
