.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;,
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    }
.end annotation


# static fields
.field public static final FAILURE_WIFI_DISABLED:I = 0x4

.field public static final SCAN_FAILURE_INTERRUPTED:I = 0x2

.field public static final SCAN_FAILURE_INVALID_CONFIGURATION:I = 0x3

.field public static final SCAN_SUCCESS:I = 0x1

.field public static final SCAN_UNKNOWN:I = 0x0

.field public static final WIFI_ASSOCIATED:I = 0x3

.field public static final WIFI_DISABLED:I = 0x1

.field public static final WIFI_DISCONNECTED:I = 0x2

.field public static final WIFI_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;


# instance fields
.field public alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

.field public availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

.field public backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

.field public connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

.field public connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

.field public fullBandAllSingleScanListenerResults:I

.field public isLocationEnabled:Z

.field public isMacRandomizationOn:Z

.field public isScanningAlwaysEnabled:Z

.field public isWifiNetworksAvailableNotificationOn:Z

.field public numBackgroundScans:I

.field public numClientInterfaceDown:I

.field public numConnectivityOneshotScans:I

.field public numConnectivityWatchdogBackgroundBad:I

.field public numConnectivityWatchdogBackgroundGood:I

.field public numConnectivityWatchdogPnoBad:I

.field public numConnectivityWatchdogPnoGood:I

.field public numEmptyScanResults:I

.field public numEnterpriseNetworkScanResults:I

.field public numEnterpriseNetworks:I

.field public numExternalAppOneshotScanRequests:I

.field public numExternalBackgroundAppOneshotScanRequestsThrottled:I

.field public numExternalForegroundAppOneshotScanRequestsThrottled:I

.field public numHalCrashes:I

.field public numHiddenNetworkScanResults:I

.field public numHiddenNetworks:I

.field public numHostapdCrashes:I

.field public numHotspot2R1NetworkScanResults:I

.field public numHotspot2R2NetworkScanResults:I

.field public numLastResortWatchdogAvailableNetworksTotal:I

.field public numLastResortWatchdogBadAssociationNetworksTotal:I

.field public numLastResortWatchdogBadAuthenticationNetworksTotal:I

.field public numLastResortWatchdogBadDhcpNetworksTotal:I

.field public numLastResortWatchdogBadOtherNetworksTotal:I

.field public numLastResortWatchdogSuccesses:I

.field public numLastResortWatchdogTriggers:I

.field public numLastResortWatchdogTriggersWithBadAssociation:I

.field public numLastResortWatchdogTriggersWithBadAuthentication:I

.field public numLastResortWatchdogTriggersWithBadDhcp:I

.field public numLastResortWatchdogTriggersWithBadOther:I

.field public numNetworksAddedByApps:I

.field public numNetworksAddedByUser:I

.field public numNonEmptyScanResults:I

.field public numOneshotHasDfsChannelScans:I

.field public numOneshotScans:I

.field public numOpenNetworkConnectMessageFailedToSend:I

.field public numOpenNetworkRecommendationUpdates:I

.field public numOpenNetworkScanResults:I

.field public numOpenNetworks:I

.field public numPasspointNetworks:I

.field public numPasspointProviderInstallSuccess:I

.field public numPasspointProviderInstallation:I

.field public numPasspointProviderUninstallSuccess:I

.field public numPasspointProviderUninstallation:I

.field public numPasspointProviders:I

.field public numPasspointProvidersSuccessfullyConnected:I

.field public numPersonalNetworkScanResults:I

.field public numPersonalNetworks:I

.field public numRadioModeChangeToDbs:I

.field public numRadioModeChangeToMcc:I

.field public numRadioModeChangeToSbs:I

.field public numRadioModeChangeToScc:I

.field public numSavedNetworks:I

.field public numScans:I

.field public numSetupClientInterfaceFailureDueToHal:I

.field public numSetupClientInterfaceFailureDueToSupplicant:I

.field public numSetupClientInterfaceFailureDueToWificond:I

.field public numSetupSoftApInterfaceFailureDueToHal:I

.field public numSetupSoftApInterfaceFailureDueToHostapd:I

.field public numSetupSoftApInterfaceFailureDueToWificond:I

.field public numSoftApInterfaceDown:I

.field public numSoftApUserBandPreferenceUnsatisfied:I

.field public numSupplicantCrashes:I

.field public numTotalScanResults:I

.field public numWifiToggledViaAirplane:I

.field public numWifiToggledViaSettings:I

.field public numWificondCrashes:I

.field public observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public openNetworkRecommenderBlacklistSize:I

.field public partialAllSingleScanListenerResults:I

.field public pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

.field public recordDurationSec:I

.field public rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

.field public rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

.field public scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public scoreExperimentId:Ljava/lang/String;

.field public softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

.field public softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

.field public softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

.field public softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

.field public staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

.field public totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public watchdogTotalConnectionFailureCountAfterTrigger:J

.field public watchdogTriggerToConnectionSuccessDurationMs:J

.field public wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

.field public wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

.field public wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

.field public wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

.field public wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

.field public wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

.field public wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 4

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotHasDfsChannelScans:I

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v0

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    nop

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x6

    iget-boolean v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x7

    iget-boolean v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    if-eqz v1, :cond_9

    const/16 v1, 0x8

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    if-eqz v1, :cond_a

    const/16 v1, 0x9

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    if-eqz v1, :cond_b

    const/16 v1, 0xa

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    if-eqz v1, :cond_c

    const/16 v1, 0xb

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    if-eqz v1, :cond_d

    const/16 v1, 0xc

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    if-eqz v1, :cond_e

    const/16 v1, 0xd

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    if-eqz v1, :cond_f

    const/16 v1, 0xe

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    if-eqz v1, :cond_10

    const/16 v1, 0xf

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v1, v1

    if-lez v1, :cond_13

    move v1, v0

    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v3, v3

    if-ge v0, v3, :cond_12

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v3, v3, v0

    if-eqz v3, :cond_11

    const/16 v4, 0x10

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    move v0, v1

    :cond_13
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v1, v1

    if-lez v1, :cond_16

    move v1, v0

    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v3, v3

    if-ge v0, v3, :cond_15

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v3, v3, v0

    if-eqz v3, :cond_14

    const/16 v4, 0x11

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_15
    move v0, v1

    :cond_16
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v1, v1

    if-lez v1, :cond_19

    move v1, v0

    move v0, v2

    :goto_3
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v3, v3

    if-ge v0, v3, :cond_18

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v3, v3, v0

    if-eqz v3, :cond_17

    const/16 v4, 0x12

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_18
    move v0, v1

    :cond_19
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v1, v1

    if-lez v1, :cond_1c

    move v1, v0

    move v0, v2

    :goto_4
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v3, v3

    if-ge v0, v3, :cond_1b

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1a

    const/16 v4, 0x13

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1b
    move v0, v1

    :cond_1c
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    if-eqz v1, :cond_1d

    const/16 v1, 0x14

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    if-eqz v1, :cond_1e

    const/16 v1, 0x15

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    if-eqz v1, :cond_1f

    const/16 v1, 0x16

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    if-eqz v1, :cond_20

    const/16 v1, 0x17

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    if-eqz v1, :cond_21

    const/16 v1, 0x18

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    if-eqz v1, :cond_22

    const/16 v1, 0x19

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    if-eqz v1, :cond_23

    const/16 v1, 0x1a

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    if-eqz v1, :cond_24

    const/16 v1, 0x1b

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    if-eqz v1, :cond_25

    const/16 v1, 0x1c

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_25
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    if-eqz v1, :cond_26

    const/16 v1, 0x1d

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    if-eqz v1, :cond_27

    const/16 v1, 0x1e

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_27
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    if-eqz v1, :cond_28

    const/16 v1, 0x1f

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    if-eqz v1, :cond_29

    const/16 v1, 0x20

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_29
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    if-eqz v1, :cond_2a

    const/16 v1, 0x21

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2a
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    if-eqz v1, :cond_2b

    const/16 v1, 0x22

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2b
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v1, v1

    if-lez v1, :cond_2e

    move v1, v0

    move v0, v2

    :goto_5
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v3, v3

    if-ge v0, v3, :cond_2d

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2c

    const/16 v4, 0x23

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2d
    move v0, v1

    :cond_2e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    if-eqz v1, :cond_2f

    const/16 v1, 0x24

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    if-eqz v1, :cond_30

    const/16 v1, 0x25

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_30
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    if-eqz v1, :cond_31

    const/16 v1, 0x26

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_31
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    if-eqz v1, :cond_32

    const/16 v1, 0x27

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_32
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    if-eqz v1, :cond_33

    const/16 v1, 0x28

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_33
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    if-eqz v1, :cond_34

    const/16 v1, 0x29

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_34
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    if-eqz v1, :cond_35

    const/16 v1, 0x2a

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_35
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    if-eqz v1, :cond_36

    const/16 v1, 0x2b

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_36
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    if-eqz v1, :cond_37

    const/16 v1, 0x2c

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_37
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    if-eqz v1, :cond_38

    const/16 v1, 0x2d

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_38
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    if-eqz v1, :cond_39

    const/16 v1, 0x2e

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_39
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v1, v1

    if-lez v1, :cond_3c

    move v1, v0

    move v0, v2

    :goto_6
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v3, v3

    if-ge v0, v3, :cond_3b

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3a

    const/16 v4, 0x2f

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_3b
    move v0, v1

    :cond_3c
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v1, v1

    if-lez v1, :cond_3f

    move v1, v0

    move v0, v2

    :goto_7
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v3, v3

    if-ge v0, v3, :cond_3e

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3d

    const/16 v4, 0x30

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_3e
    move v0, v1

    :cond_3f
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v1, v1

    if-lez v1, :cond_42

    move v1, v0

    move v0, v2

    :goto_8
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_41

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_40

    const/16 v4, 0x31

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_41
    move v0, v1

    :cond_42
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v1, v1

    if-lez v1, :cond_45

    move v1, v0

    move v0, v2

    :goto_9
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v3, v3

    if-ge v0, v3, :cond_44

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    aget-object v3, v3, v0

    if-eqz v3, :cond_43

    const/16 v4, 0x32

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_44
    move v0, v1

    :cond_45
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v1, v1

    if-lez v1, :cond_48

    move v1, v0

    move v0, v2

    :goto_a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v3, v3

    if-ge v0, v3, :cond_47

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v3, v3, v0

    if-eqz v3, :cond_46

    const/16 v4, 0x33

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_47
    move v0, v1

    :cond_48
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v1, v1

    if-lez v1, :cond_4b

    move v1, v0

    move v0, v2

    :goto_b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v3, v3

    if-ge v0, v3, :cond_4a

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    aget-object v3, v3, v0

    if-eqz v3, :cond_49

    const/16 v4, 0x34

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_4a
    move v0, v1

    :cond_4b
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    if-eqz v1, :cond_4c

    const/16 v1, 0x35

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4c
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    if-eqz v1, :cond_4d

    const/16 v1, 0x36

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    if-eqz v1, :cond_4e

    const/16 v1, 0x37

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    if-eqz v1, :cond_4f

    const/16 v1, 0x38

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4f
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-eqz v1, :cond_50

    const/16 v1, 0x39

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_50
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    if-eqz v1, :cond_51

    const/16 v1, 0x3a

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_51
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    if-eqz v1, :cond_52

    const/16 v1, 0x3b

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_52
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    if-eqz v1, :cond_53

    const/16 v1, 0x3c

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_53
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    if-eqz v1, :cond_54

    const/16 v1, 0x3d

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_54
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    if-eqz v1, :cond_55

    const/16 v1, 0x3e

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_55
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    if-eqz v1, :cond_56

    const/16 v1, 0x3f

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_56
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_59

    move v1, v0

    move v0, v2

    :goto_c
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_58

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_57

    const/16 v4, 0x40

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_58
    move v0, v1

    :cond_59
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_5c

    move v1, v0

    move v0, v2

    :goto_d
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_5b

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_5a

    const/16 v4, 0x41

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_5b
    move v0, v1

    :cond_5c
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_5f

    move v1, v0

    move v0, v2

    :goto_e
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_5e

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_5d

    const/16 v4, 0x42

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_5e
    move v0, v1

    :cond_5f
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_62

    move v1, v0

    move v0, v2

    :goto_f
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_61

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_60

    const/16 v4, 0x43

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_61
    move v0, v1

    :cond_62
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_65

    move v1, v0

    move v0, v2

    :goto_10
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_64

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_63

    const/16 v4, 0x44

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_64
    move v0, v1

    :cond_65
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_68

    move v1, v0

    move v0, v2

    :goto_11
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_67

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_66

    const/16 v4, 0x45

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_67
    move v0, v1

    :cond_68
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_6b

    move v1, v0

    move v0, v2

    :goto_12
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_6a

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_69

    const/16 v4, 0x46

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_6a
    move v0, v1

    :cond_6b
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_6e

    move v1, v0

    move v0, v2

    :goto_13
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_6d

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_6c

    const/16 v4, 0x47

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_6d
    move v0, v1

    :cond_6e
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_71

    move v1, v0

    move v0, v2

    :goto_14
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_70

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_6f

    const/16 v4, 0x48

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_70
    move v0, v1

    :cond_71
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_74

    move v1, v0

    move v0, v2

    :goto_15
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_73

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_72

    const/16 v4, 0x49

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_73
    move v0, v1

    :cond_74
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    if-eqz v1, :cond_75

    const/16 v1, 0x4a

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_75
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    if-eqz v1, :cond_76

    const/16 v1, 0x4b

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_76
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    if-eqz v1, :cond_77

    const/16 v1, 0x4c

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_77
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v1, v1

    if-lez v1, :cond_7a

    move v1, v0

    move v0, v2

    :goto_16
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v3, v3

    if-ge v0, v3, :cond_79

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v3, v3, v0

    if-eqz v3, :cond_78

    const/16 v4, 0x4d

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_79
    move v0, v1

    :cond_7a
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v1, v1

    if-lez v1, :cond_7d

    move v1, v0

    move v0, v2

    :goto_17
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v3, v3

    if-ge v0, v3, :cond_7c

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v3, v3, v0

    if-eqz v3, :cond_7b

    const/16 v4, 0x4e

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_7c
    move v0, v1

    :cond_7d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    if-eqz v1, :cond_7e

    const/16 v1, 0x4f

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7e
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    if-eqz v1, :cond_7f

    const/16 v1, 0x50

    iget-boolean v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    if-eqz v1, :cond_80

    const/16 v1, 0x51

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_80
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    if-eqz v1, :cond_81

    const/16 v1, 0x52

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_81
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_84

    move v1, v0

    move v0, v2

    :goto_18
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_83

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_82

    const/16 v4, 0x53

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_83
    move v0, v1

    :cond_84
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_87

    move v1, v0

    move v0, v2

    :goto_19
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_86

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_85

    const/16 v4, 0x54

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_86
    move v0, v1

    :cond_87
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_8a

    move v1, v0

    move v0, v2

    :goto_1a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_89

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_88

    const/16 v4, 0x55

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_89
    move v0, v1

    :cond_8a
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_8d

    move v1, v0

    move v0, v2

    :goto_1b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_8c

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_8b

    const/16 v4, 0x56

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_8c
    move v0, v1

    :cond_8d
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_90

    move v1, v0

    move v0, v2

    :goto_1c
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_8f

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_8e

    const/16 v4, 0x57

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_8f
    move v0, v1

    :cond_90
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_93

    move v1, v0

    move v0, v2

    :goto_1d
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_92

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_91

    const/16 v4, 0x58

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_92
    move v0, v1

    :cond_93
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-eqz v1, :cond_96

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v1, v1

    if-lez v1, :cond_96

    move v1, v0

    move v0, v2

    :goto_1e
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v3, v3

    if-ge v0, v3, :cond_95

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    aget-object v3, v3, v0

    if-eqz v3, :cond_94

    const/16 v4, 0x59

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_95
    move v0, v1

    :cond_96
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-eqz v1, :cond_99

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v1, v1

    if-lez v1, :cond_99

    move v1, v0

    move v0, v2

    :goto_1f
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v3, v3

    if-ge v0, v3, :cond_98

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    aget-object v3, v3, v0

    if-eqz v3, :cond_97

    const/16 v4, 0x5a

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_98
    move v0, v1

    :cond_99
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    if-eqz v1, :cond_9a

    const/16 v1, 0x5b

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9a
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    if-eqz v1, :cond_9b

    const/16 v1, 0x5c

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9b
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    if-eqz v1, :cond_9c

    const/16 v1, 0x5d

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9c
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    if-eqz v1, :cond_9d

    const/16 v1, 0x5e

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9d
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_9f

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_9f

    nop

    :goto_20
    move v1, v2

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_9f

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v1

    if-eqz v2, :cond_9e

    const/16 v3, 0x5f

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_9e
    add-int/lit8 v2, v1, 0x1

    goto :goto_20

    :cond_9f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    if-eqz v1, :cond_a0

    const/16 v1, 0x60

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    if-eqz v1, :cond_a1

    const/16 v1, 0x61

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    if-eqz v1, :cond_a2

    const/16 v1, 0x62

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    if-eqz v1, :cond_a3

    const/16 v1, 0x63

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    if-eqz v1, :cond_a4

    const/16 v1, 0x64

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    if-eqz v1, :cond_a5

    const/16 v1, 0x65

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a5
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    if-eqz v1, :cond_a6

    const/16 v1, 0x66

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a6
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    if-eqz v1, :cond_a7

    const/16 v1, 0x67

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a7
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    if-eqz v1, :cond_a8

    const/16 v1, 0x68

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a8
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    if-eqz v1, :cond_a9

    const/16 v1, 0x69

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a9
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    if-eqz v1, :cond_aa

    const/16 v1, 0x6a

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_aa
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_ab

    const/16 v1, 0x6b

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_ab
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_ac

    const/16 v1, 0x6c

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_ac
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotHasDfsChannelScans:I

    if-eqz v1, :cond_ad

    const/16 v1, 0x6d

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotHasDfsChannelScans:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_ad
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    if-eqz v1, :cond_ae

    const/16 v1, 0x6e

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_ae
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    if-eqz v1, :cond_af

    const/16 v1, 0x6f

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_af
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    if-eqz v1, :cond_b0

    const/16 v1, 0x70

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    if-eqz v1, :cond_b1

    const/16 v1, 0x71

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    if-eqz v1, :cond_b2

    const/16 v1, 0x72

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    if-eqz v1, :cond_b3

    const/16 v1, 0x73

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    if-eqz v1, :cond_b4

    const/16 v1, 0x74

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b4
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b5

    const/16 v1, 0x75

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b5
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_69

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    goto/16 :goto_43

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    goto/16 :goto_43

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    goto/16 :goto_43

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    goto/16 :goto_43

    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    goto/16 :goto_43

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    goto/16 :goto_43

    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    goto/16 :goto_43

    :sswitch_7
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_43

    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotHasDfsChannelScans:I

    goto/16 :goto_43

    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    goto/16 :goto_43

    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    goto/16 :goto_43

    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    goto/16 :goto_43

    :sswitch_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    goto/16 :goto_43

    :sswitch_d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    goto/16 :goto_43

    :sswitch_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    goto/16 :goto_43

    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    goto/16 :goto_43

    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    goto/16 :goto_43

    :sswitch_11
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    goto/16 :goto_43

    :sswitch_12
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    goto/16 :goto_43

    :sswitch_13
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    goto/16 :goto_43

    :sswitch_14
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    goto/16 :goto_43

    :sswitch_15
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    goto/16 :goto_43

    :sswitch_16
    const/16 v2, 0x2fa

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    :goto_1
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_43

    :sswitch_17
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_43

    :sswitch_18
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    goto/16 :goto_43

    :sswitch_19
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    if-nez v1, :cond_5

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_43

    :sswitch_1a
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    if-nez v1, :cond_6

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_43

    :sswitch_1b
    const/16 v2, 0x2d2

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v3, v3

    :goto_3
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-eqz v3, :cond_8

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_4
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_9

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    goto/16 :goto_43

    :sswitch_1c
    const/16 v2, 0x2ca

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-nez v3, :cond_a

    move v3, v1

    goto :goto_5

    :cond_a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v3, v3

    :goto_5
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-eqz v3, :cond_b

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_6
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_c

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    goto/16 :goto_43

    :sswitch_1d
    const/16 v2, 0x2c2

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_d

    move v3, v1

    goto :goto_7

    :cond_d
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    :goto_7
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_e

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_8
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_f

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_f
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_43

    :sswitch_1e
    const/16 v2, 0x2ba

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_10

    move v3, v1

    goto :goto_9

    :cond_10
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    :goto_9
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_11

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_a
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_12

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_12
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_43

    :sswitch_1f
    const/16 v2, 0x2b2

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_13

    move v3, v1

    goto :goto_b

    :cond_13
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    :goto_b
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_14

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    :goto_c
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_15

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_15
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_43

    :sswitch_20
    const/16 v2, 0x2aa

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_16

    move v3, v1

    goto :goto_d

    :cond_16
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    :goto_d
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_17

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    :goto_e
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_18

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_18
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_43

    :sswitch_21
    const/16 v2, 0x2a2

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_19

    move v3, v1

    goto :goto_f

    :cond_19
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    :goto_f
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_1a

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    :goto_10
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_1b

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1b
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_43

    :sswitch_22
    const/16 v2, 0x29a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_1c

    move v3, v1

    goto :goto_11

    :cond_1c
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    :goto_11
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_1d

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d
    :goto_12
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_1e

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1e
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_43

    :sswitch_23
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    goto/16 :goto_43

    :sswitch_24
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    goto/16 :goto_43

    :sswitch_25
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    goto/16 :goto_43

    :sswitch_26
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    goto/16 :goto_43

    :sswitch_27
    const/16 v2, 0x272

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-nez v3, :cond_1f

    move v3, v1

    goto :goto_13

    :cond_1f
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v3, v3

    :goto_13
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v3, :cond_20

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_20
    :goto_14
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_21

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_21
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    goto/16 :goto_43

    :sswitch_28
    const/16 v2, 0x26a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-nez v3, :cond_22

    move v3, v1

    goto :goto_15

    :cond_22
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v3, v3

    :goto_15
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v3, :cond_23

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_23
    :goto_16
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_24

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_24
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    goto/16 :goto_43

    :sswitch_29
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    if-nez v1, :cond_25

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    :cond_25
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_43

    :sswitch_2a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    goto/16 :goto_43

    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    goto/16 :goto_43

    :sswitch_2c
    const/16 v2, 0x24a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_26

    move v3, v1

    goto :goto_17

    :cond_26
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    :goto_17
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_27

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_27
    :goto_18
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_28

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_28
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_43

    :sswitch_2d
    const/16 v2, 0x242

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_29

    move v3, v1

    goto :goto_19

    :cond_29
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    :goto_19
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_2a

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2a
    :goto_1a
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_2b

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_2b
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_43

    :sswitch_2e
    const/16 v2, 0x23a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_2c

    move v3, v1

    goto :goto_1b

    :cond_2c
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    :goto_1b
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_2d

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2d
    :goto_1c
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_2e

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2e
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_43

    :sswitch_2f
    const/16 v2, 0x232

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_2f

    move v3, v1

    goto :goto_1d

    :cond_2f
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    :goto_1d
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_30

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_30
    :goto_1e
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_31

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_31
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_43

    :sswitch_30
    const/16 v2, 0x22a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_32

    move v3, v1

    goto :goto_1f

    :cond_32
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    :goto_1f
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_33

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_33
    :goto_20
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_34

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_34
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_43

    :sswitch_31
    const/16 v2, 0x222

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_35

    move v3, v1

    goto :goto_21

    :cond_35
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    :goto_21
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_36

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    :goto_22
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_37

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_37
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_43

    :sswitch_32
    const/16 v2, 0x21a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_38

    move v3, v1

    goto :goto_23

    :cond_38
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    :goto_23
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_39

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_39
    :goto_24
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3a

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_3a
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_43

    :sswitch_33
    const/16 v2, 0x212

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_3b

    move v3, v1

    goto :goto_25

    :cond_3b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    :goto_25
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_3c

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3c
    :goto_26
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3d

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_3d
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_43

    :sswitch_34
    const/16 v2, 0x20a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_3e

    move v3, v1

    goto :goto_27

    :cond_3e
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    :goto_27
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_3f

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3f
    :goto_28
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_40

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_40
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_43

    :sswitch_35
    const/16 v2, 0x202

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_41

    move v3, v1

    goto :goto_29

    :cond_41
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    :goto_29
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_42

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_42
    :goto_2a
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_43

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_43
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_43

    :sswitch_36
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    goto/16 :goto_43

    :sswitch_37
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    goto/16 :goto_43

    :sswitch_38
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    goto/16 :goto_43

    :sswitch_39
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    goto/16 :goto_43

    :sswitch_3a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    goto/16 :goto_43

    :sswitch_3b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    goto/16 :goto_43

    :sswitch_3c
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-nez v1, :cond_44

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    :cond_44
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_43

    :sswitch_3d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    goto/16 :goto_43

    :sswitch_3e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    goto/16 :goto_43

    :sswitch_3f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    goto/16 :goto_43

    :sswitch_40
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    goto/16 :goto_43

    :sswitch_41
    const/16 v2, 0x1a2

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-nez v3, :cond_45

    move v3, v1

    goto :goto_2b

    :cond_45
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v3, v3

    :goto_2b
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-eqz v3, :cond_46

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    :goto_2c
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_47

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_47
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    goto/16 :goto_43

    :sswitch_42
    const/16 v2, 0x19a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-nez v3, :cond_48

    move v3, v1

    goto :goto_2d

    :cond_48
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v3, v3

    :goto_2d
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v3, :cond_49

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_49
    :goto_2e
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_4a

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_4a
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    goto/16 :goto_43

    :sswitch_43
    const/16 v2, 0x192

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-nez v3, :cond_4b

    move v3, v1

    goto :goto_2f

    :cond_4b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v3, v3

    :goto_2f
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-eqz v3, :cond_4c

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4c
    :goto_30
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_4d

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_4d
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    goto/16 :goto_43

    :sswitch_44
    const/16 v2, 0x18a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-nez v3, :cond_4e

    move v3, v1

    goto :goto_31

    :cond_4e
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v3, v3

    :goto_31
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-eqz v3, :cond_4f

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4f
    :goto_32
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_50

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_50
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    goto/16 :goto_43

    :sswitch_45
    const/16 v2, 0x182

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-nez v3, :cond_51

    move v3, v1

    goto :goto_33

    :cond_51
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v3, v3

    :goto_33
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-eqz v3, :cond_52

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_52
    :goto_34
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_53

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_53
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    goto/16 :goto_43

    :sswitch_46
    const/16 v2, 0x17a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-nez v3, :cond_54

    move v3, v1

    goto :goto_35

    :cond_54
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v3, v3

    :goto_35
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-eqz v3, :cond_55

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_55
    :goto_36
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_56

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_56
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    goto/16 :goto_43

    :sswitch_47
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    goto/16 :goto_43

    :sswitch_48
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    goto/16 :goto_43

    :sswitch_49
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    goto/16 :goto_43

    :sswitch_4a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    goto/16 :goto_43

    :sswitch_4b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    goto/16 :goto_43

    :sswitch_4c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    goto/16 :goto_43

    :sswitch_4d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    goto/16 :goto_43

    :sswitch_4e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    goto/16 :goto_43

    :sswitch_4f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    goto/16 :goto_43

    :sswitch_50
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    goto/16 :goto_43

    :sswitch_51
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    goto/16 :goto_43

    :sswitch_52
    const/16 v2, 0x11a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-nez v3, :cond_57

    move v3, v1

    goto :goto_37

    :cond_57
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v3, v3

    :goto_37
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v3, :cond_58

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_58
    :goto_38
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_59

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_59
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    goto/16 :goto_43

    :sswitch_53
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    goto/16 :goto_43

    :sswitch_54
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    goto/16 :goto_43

    :sswitch_55
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    goto/16 :goto_43

    :sswitch_56
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    goto/16 :goto_43

    :sswitch_57
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    goto/16 :goto_43

    :sswitch_58
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    goto/16 :goto_43

    :sswitch_59
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    goto/16 :goto_43

    :sswitch_5a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    goto/16 :goto_43

    :sswitch_5b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    goto/16 :goto_43

    :sswitch_5c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    goto/16 :goto_43

    :sswitch_5d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    goto/16 :goto_43

    :sswitch_5e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    goto/16 :goto_43

    :sswitch_5f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    goto/16 :goto_43

    :sswitch_60
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    goto/16 :goto_43

    :sswitch_61
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    goto/16 :goto_43

    :sswitch_62
    const/16 v2, 0x9a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-nez v3, :cond_5a

    move v3, v1

    goto :goto_39

    :cond_5a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v3, v3

    :goto_39
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v3, :cond_5b

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5b
    :goto_3a
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_5c

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_5c
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    goto/16 :goto_43

    :sswitch_63
    const/16 v2, 0x92

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-nez v3, :cond_5d

    move v3, v1

    goto :goto_3b

    :cond_5d
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v3, v3

    :goto_3b
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v3, :cond_5e

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5e
    :goto_3c
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_5f

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_5f
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    goto/16 :goto_43

    :sswitch_64
    const/16 v2, 0x8a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-nez v3, :cond_60

    move v3, v1

    goto :goto_3d

    :cond_60
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v3, v3

    :goto_3d
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v3, :cond_61

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_61
    :goto_3e
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_62

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_62
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    goto/16 :goto_43

    :sswitch_65
    const/16 v2, 0x82

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-nez v3, :cond_63

    move v3, v1

    goto :goto_3f

    :cond_63
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v3, v3

    :goto_3f
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v3, :cond_64

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_64
    :goto_40
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_65

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_65
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    goto/16 :goto_43

    :sswitch_66
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    goto/16 :goto_43

    :sswitch_67
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    goto/16 :goto_43

    :sswitch_68
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    goto/16 :goto_43

    :sswitch_69
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    goto/16 :goto_43

    :sswitch_6a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    goto/16 :goto_43

    :sswitch_6b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    goto/16 :goto_43

    :sswitch_6c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    goto/16 :goto_43

    :sswitch_6d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    goto/16 :goto_43

    :sswitch_6e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    goto :goto_43

    :sswitch_6f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    goto :goto_43

    :sswitch_70
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    goto :goto_43

    :sswitch_71
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    goto :goto_43

    :sswitch_72
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    goto :goto_43

    :sswitch_73
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    goto :goto_43

    :sswitch_74
    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-nez v3, :cond_66

    move v3, v1

    goto :goto_41

    :cond_66
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v3, v3

    :goto_41
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-eqz v3, :cond_67

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_67
    :goto_42
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_68

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_68
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    goto :goto_43

    :sswitch_75
    return-object p0

    :cond_69
    :goto_43
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_75
        0xa -> :sswitch_74
        0x10 -> :sswitch_73
        0x18 -> :sswitch_72
        0x20 -> :sswitch_71
        0x28 -> :sswitch_70
        0x30 -> :sswitch_6f
        0x38 -> :sswitch_6e
        0x40 -> :sswitch_6d
        0x48 -> :sswitch_6c
        0x50 -> :sswitch_6b
        0x58 -> :sswitch_6a
        0x60 -> :sswitch_69
        0x68 -> :sswitch_68
        0x70 -> :sswitch_67
        0x78 -> :sswitch_66
        0x82 -> :sswitch_65
        0x8a -> :sswitch_64
        0x92 -> :sswitch_63
        0x9a -> :sswitch_62
        0xa0 -> :sswitch_61
        0xa8 -> :sswitch_60
        0xb0 -> :sswitch_5f
        0xb8 -> :sswitch_5e
        0xc0 -> :sswitch_5d
        0xc8 -> :sswitch_5c
        0xd0 -> :sswitch_5b
        0xd8 -> :sswitch_5a
        0xe0 -> :sswitch_59
        0xe8 -> :sswitch_58
        0xf0 -> :sswitch_57
        0xf8 -> :sswitch_56
        0x100 -> :sswitch_55
        0x108 -> :sswitch_54
        0x110 -> :sswitch_53
        0x11a -> :sswitch_52
        0x120 -> :sswitch_51
        0x128 -> :sswitch_50
        0x130 -> :sswitch_4f
        0x138 -> :sswitch_4e
        0x140 -> :sswitch_4d
        0x148 -> :sswitch_4c
        0x150 -> :sswitch_4b
        0x158 -> :sswitch_4a
        0x160 -> :sswitch_49
        0x168 -> :sswitch_48
        0x170 -> :sswitch_47
        0x17a -> :sswitch_46
        0x182 -> :sswitch_45
        0x18a -> :sswitch_44
        0x192 -> :sswitch_43
        0x19a -> :sswitch_42
        0x1a2 -> :sswitch_41
        0x1a8 -> :sswitch_40
        0x1b0 -> :sswitch_3f
        0x1b8 -> :sswitch_3e
        0x1c0 -> :sswitch_3d
        0x1ca -> :sswitch_3c
        0x1d0 -> :sswitch_3b
        0x1d8 -> :sswitch_3a
        0x1e0 -> :sswitch_39
        0x1e8 -> :sswitch_38
        0x1f0 -> :sswitch_37
        0x1f8 -> :sswitch_36
        0x202 -> :sswitch_35
        0x20a -> :sswitch_34
        0x212 -> :sswitch_33
        0x21a -> :sswitch_32
        0x222 -> :sswitch_31
        0x22a -> :sswitch_30
        0x232 -> :sswitch_2f
        0x23a -> :sswitch_2e
        0x242 -> :sswitch_2d
        0x24a -> :sswitch_2c
        0x250 -> :sswitch_2b
        0x258 -> :sswitch_2a
        0x262 -> :sswitch_29
        0x26a -> :sswitch_28
        0x272 -> :sswitch_27
        0x278 -> :sswitch_26
        0x280 -> :sswitch_25
        0x288 -> :sswitch_24
        0x290 -> :sswitch_23
        0x29a -> :sswitch_22
        0x2a2 -> :sswitch_21
        0x2aa -> :sswitch_20
        0x2b2 -> :sswitch_1f
        0x2ba -> :sswitch_1e
        0x2c2 -> :sswitch_1d
        0x2ca -> :sswitch_1c
        0x2d2 -> :sswitch_1b
        0x2da -> :sswitch_1a
        0x2e2 -> :sswitch_19
        0x2e8 -> :sswitch_18
        0x2f2 -> :sswitch_17
        0x2fa -> :sswitch_16
        0x300 -> :sswitch_15
        0x308 -> :sswitch_14
        0x310 -> :sswitch_13
        0x318 -> :sswitch_12
        0x320 -> :sswitch_11
        0x328 -> :sswitch_10
        0x330 -> :sswitch_f
        0x338 -> :sswitch_e
        0x340 -> :sswitch_d
        0x348 -> :sswitch_c
        0x350 -> :sswitch_b
        0x358 -> :sswitch_a
        0x360 -> :sswitch_9
        0x368 -> :sswitch_8
        0x372 -> :sswitch_7
        0x378 -> :sswitch_6
        0x380 -> :sswitch_5
        0x388 -> :sswitch_4
        0x390 -> :sswitch_3
        0x398 -> :sswitch_2
        0x3a0 -> :sswitch_1
        0x3aa -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_7
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_8
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    if-eqz v0, :cond_a

    const/16 v0, 0xa

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    if-eqz v0, :cond_b

    const/16 v0, 0xb

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    if-eqz v0, :cond_c

    const/16 v0, 0xc

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_c
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    if-eqz v0, :cond_d

    const/16 v0, 0xd

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_d
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    if-eqz v0, :cond_e

    const/16 v0, 0xe

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    if-eqz v0, :cond_f

    const/16 v0, 0xf

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_f
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v0, v0

    if-lez v0, :cond_11

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_11

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v2, v2, v0

    if-eqz v2, :cond_10

    const/16 v3, 0x10

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v0, v0

    if-lez v0, :cond_13

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_13

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v2, v2, v0

    if-eqz v2, :cond_12

    const/16 v3, 0x11

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v0, v0

    if-lez v0, :cond_15

    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_15

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v2, v2, v0

    if-eqz v2, :cond_14

    const/16 v3, 0x12

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_15
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v0, v0

    if-lez v0, :cond_17

    move v0, v1

    :goto_4
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_17

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v2, v2, v0

    if-eqz v2, :cond_16

    const/16 v3, 0x13

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_17
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    if-eqz v0, :cond_18

    const/16 v0, 0x14

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_18
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    if-eqz v0, :cond_19

    const/16 v0, 0x15

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_19
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    if-eqz v0, :cond_1a

    const/16 v0, 0x16

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    if-eqz v0, :cond_1b

    const/16 v0, 0x17

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    if-eqz v0, :cond_1c

    const/16 v0, 0x18

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1c
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    if-eqz v0, :cond_1d

    const/16 v0, 0x19

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1d
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    if-eqz v0, :cond_1e

    const/16 v0, 0x1a

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    if-eqz v0, :cond_1f

    const/16 v0, 0x1b

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    if-eqz v0, :cond_20

    const/16 v0, 0x1c

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_20
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    if-eqz v0, :cond_21

    const/16 v0, 0x1d

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_21
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    if-eqz v0, :cond_22

    const/16 v0, 0x1e

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_22
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    if-eqz v0, :cond_23

    const/16 v0, 0x1f

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_23
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    if-eqz v0, :cond_24

    const/16 v0, 0x20

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_24
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    if-eqz v0, :cond_25

    const/16 v0, 0x21

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_25
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    if-eqz v0, :cond_26

    const/16 v0, 0x22

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_26
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v0, v0

    if-lez v0, :cond_28

    move v0, v1

    :goto_5
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v2, v2

    if-ge v0, v2, :cond_28

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v2, v2, v0

    if-eqz v2, :cond_27

    const/16 v3, 0x23

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_28
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    if-eqz v0, :cond_29

    const/16 v0, 0x24

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_29
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    if-eqz v0, :cond_2a

    const/16 v0, 0x25

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    if-eqz v0, :cond_2b

    const/16 v0, 0x26

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    if-eqz v0, :cond_2c

    const/16 v0, 0x27

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2c
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    if-eqz v0, :cond_2d

    const/16 v0, 0x28

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2d
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    if-eqz v0, :cond_2e

    const/16 v0, 0x29

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    if-eqz v0, :cond_2f

    const/16 v0, 0x2a

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    if-eqz v0, :cond_30

    const/16 v0, 0x2b

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_30
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    if-eqz v0, :cond_31

    const/16 v0, 0x2c

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_31
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    if-eqz v0, :cond_32

    const/16 v0, 0x2d

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_32
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    if-eqz v0, :cond_33

    const/16 v0, 0x2e

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_33
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v0, v0

    if-lez v0, :cond_35

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v2, v2

    if-ge v0, v2, :cond_35

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    aget-object v2, v2, v0

    if-eqz v2, :cond_34

    const/16 v3, 0x2f

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_35
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v0, v0

    if-lez v0, :cond_37

    move v0, v1

    :goto_7
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v2, v2

    if-ge v0, v2, :cond_37

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    aget-object v2, v2, v0

    if-eqz v2, :cond_36

    const/16 v3, 0x30

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_37
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v0, v0

    if-lez v0, :cond_39

    move v0, v1

    :goto_8
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_39

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_38

    const/16 v3, 0x31

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_39
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v0, v0

    if-lez v0, :cond_3b

    move v0, v1

    :goto_9
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v2, v2

    if-ge v0, v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3a

    const/16 v3, 0x32

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_3b
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v0, v0

    if-lez v0, :cond_3d

    move v0, v1

    :goto_a
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v2, v2

    if-ge v0, v2, :cond_3d

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3c

    const/16 v3, 0x33

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_3d
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v0, v0

    if-lez v0, :cond_3f

    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v2, v2

    if-ge v0, v2, :cond_3f

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3e

    const/16 v3, 0x34

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_3f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    if-eqz v0, :cond_40

    const/16 v0, 0x35

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_40
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    if-eqz v0, :cond_41

    const/16 v0, 0x36

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_41
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    if-eqz v0, :cond_42

    const/16 v0, 0x37

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_42
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    if-eqz v0, :cond_43

    const/16 v0, 0x38

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_43
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-eqz v0, :cond_44

    const/16 v0, 0x39

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_44
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    if-eqz v0, :cond_45

    const/16 v0, 0x3a

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_45
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    if-eqz v0, :cond_46

    const/16 v0, 0x3b

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_46
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    if-eqz v0, :cond_47

    const/16 v0, 0x3c

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_47
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    if-eqz v0, :cond_48

    const/16 v0, 0x3d

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_48
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    if-eqz v0, :cond_49

    const/16 v0, 0x3e

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_49
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    if-eqz v0, :cond_4a

    const/16 v0, 0x3f

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_4c

    move v0, v1

    :goto_c
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_4c

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4b

    const/16 v3, 0x40

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_4c
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_4e

    move v0, v1

    :goto_d
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_4e

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4d

    const/16 v3, 0x41

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_4e
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_50

    move v0, v1

    :goto_e
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_50

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4f

    const/16 v3, 0x42

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_50
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_52

    move v0, v1

    :goto_f
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_52

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_51

    const/16 v3, 0x43

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_52
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_54

    move v0, v1

    :goto_10
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_54

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_53

    const/16 v3, 0x44

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_54
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_56

    move v0, v1

    :goto_11
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_56

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_55

    const/16 v3, 0x45

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_56
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_58

    move v0, v1

    :goto_12
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_58

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_57

    const/16 v3, 0x46

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_58
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_5a

    move v0, v1

    :goto_13
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_5a

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_59

    const/16 v3, 0x47

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_5a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_5c

    move v0, v1

    :goto_14
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_5c

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5b

    const/16 v3, 0x48

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_5c
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_5e

    move v0, v1

    :goto_15
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_5e

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5d

    const/16 v3, 0x49

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_5e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    if-eqz v0, :cond_5f

    const/16 v0, 0x4a

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    if-eqz v0, :cond_60

    const/16 v0, 0x4b

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_60
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    if-eqz v0, :cond_61

    const/16 v0, 0x4c

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_61
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v0, v0

    if-lez v0, :cond_63

    move v0, v1

    :goto_16
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v2, v2

    if-ge v0, v2, :cond_63

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v2, v2, v0

    if-eqz v2, :cond_62

    const/16 v3, 0x4d

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_63
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v0, v0

    if-lez v0, :cond_65

    move v0, v1

    :goto_17
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v2, v2

    if-ge v0, v2, :cond_65

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v2, v2, v0

    if-eqz v2, :cond_64

    const/16 v3, 0x4e

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_65
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    if-eqz v0, :cond_66

    const/16 v0, 0x4f

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_66
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    if-eqz v0, :cond_67

    const/16 v0, 0x50

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_67
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    if-eqz v0, :cond_68

    const/16 v0, 0x51

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_68
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    if-eqz v0, :cond_69

    const/16 v0, 0x52

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_69
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_6b

    move v0, v1

    :goto_18
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_6b

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6a

    const/16 v3, 0x53

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_6b
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_6d

    move v0, v1

    :goto_19
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_6d

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6c

    const/16 v3, 0x54

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_6d
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_6f

    move v0, v1

    :goto_1a
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_6f

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6e

    const/16 v3, 0x55

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_6f
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_71

    move v0, v1

    :goto_1b
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_71

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_70

    const/16 v3, 0x56

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_71
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_73

    move v0, v1

    :goto_1c
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_73

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_72

    const/16 v3, 0x57

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_73
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_75

    move v0, v1

    :goto_1d
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_75

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_74

    const/16 v3, 0x58

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_75
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v0, v0

    if-lez v0, :cond_77

    move v0, v1

    :goto_1e
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v2, v2

    if-ge v0, v2, :cond_77

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    aget-object v2, v2, v0

    if-eqz v2, :cond_76

    const/16 v3, 0x59

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_77
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v0, v0

    if-lez v0, :cond_79

    move v0, v1

    :goto_1f
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v2, v2

    if-ge v0, v2, :cond_79

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    aget-object v2, v2, v0

    if-eqz v2, :cond_78

    const/16 v3, 0x5a

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_79
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    if-eqz v0, :cond_7a

    const/16 v0, 0x5b

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_7a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    if-eqz v0, :cond_7b

    const/16 v0, 0x5c

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_7b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    if-eqz v0, :cond_7c

    const/16 v0, 0x5d

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7c
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    if-eqz v0, :cond_7d

    const/16 v0, 0x5e

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_7d
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_7f

    nop

    :goto_20
    move v0, v1

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-ge v0, v1, :cond_7f

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v1, v1, v0

    if-eqz v1, :cond_7e

    const/16 v2, 0x5f

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_7e
    add-int/lit8 v1, v0, 0x1

    goto :goto_20

    :cond_7f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    if-eqz v0, :cond_80

    const/16 v0, 0x60

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_80
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    if-eqz v0, :cond_81

    const/16 v0, 0x61

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_81
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    if-eqz v0, :cond_82

    const/16 v0, 0x62

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_82
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    if-eqz v0, :cond_83

    const/16 v0, 0x63

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_83
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    if-eqz v0, :cond_84

    const/16 v0, 0x64

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_84
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    if-eqz v0, :cond_85

    const/16 v0, 0x65

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_85
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    if-eqz v0, :cond_86

    const/16 v0, 0x66

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_86
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    if-eqz v0, :cond_87

    const/16 v0, 0x67

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_87
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    if-eqz v0, :cond_88

    const/16 v0, 0x68

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_88
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    if-eqz v0, :cond_89

    const/16 v0, 0x69

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_89
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    if-eqz v0, :cond_8a

    const/16 v0, 0x6a

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_8a
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8b

    const/16 v0, 0x6b

    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_8b
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8c

    const/16 v0, 0x6c

    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_8c
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotHasDfsChannelScans:I

    if-eqz v0, :cond_8d

    const/16 v0, 0x6d

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotHasDfsChannelScans:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_8d
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    if-eqz v0, :cond_8e

    const/16 v0, 0x6e

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_8e
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    if-eqz v0, :cond_8f

    const/16 v0, 0x6f

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_8f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    if-eqz v0, :cond_90

    const/16 v0, 0x70

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_90
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    if-eqz v0, :cond_91

    const/16 v0, 0x71

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_91
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    if-eqz v0, :cond_92

    const/16 v0, 0x72

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_92
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    if-eqz v0, :cond_93

    const/16 v0, 0x73

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_93
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    if-eqz v0, :cond_94

    const/16 v0, 0x74

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_94
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    const/16 v0, 0x75

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_95
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
