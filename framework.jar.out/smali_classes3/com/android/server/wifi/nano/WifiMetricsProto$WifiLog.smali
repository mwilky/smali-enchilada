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

    .line 619
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 620
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    .line 621
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 2

    .line 257
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    if-nez v0, :cond_1

    .line 258
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    if-nez v1, :cond_0

    .line 261
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    .line 263
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 265
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2947
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2941
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

    .line 624
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    .line 625
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    .line 626
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    .line 627
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    .line 628
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    .line 629
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    .line 630
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    .line 631
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    .line 632
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    .line 633
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    .line 634
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    .line 635
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    .line 636
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    .line 637
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    .line 638
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    .line 639
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 640
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 641
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 642
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 643
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    .line 644
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    .line 645
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    .line 646
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    .line 647
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    .line 648
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    .line 649
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    .line 650
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    .line 651
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    .line 652
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    .line 653
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    .line 654
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    .line 655
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    .line 656
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    .line 657
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    .line 658
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 659
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    .line 660
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    .line 661
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    .line 662
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    .line 663
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    .line 664
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    .line 665
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    .line 666
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    .line 667
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    .line 668
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    .line 669
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    .line 670
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 671
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    .line 672
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    .line 673
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    .line 674
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 675
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 676
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    .line 677
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    .line 678
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    .line 679
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    .line 680
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 681
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    .line 682
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    .line 683
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    .line 684
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    .line 685
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    .line 686
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    .line 687
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 688
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 689
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 690
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 691
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 692
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 693
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 694
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 695
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 696
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 697
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    .line 698
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    .line 699
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    .line 700
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 701
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 702
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    .line 703
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    .line 704
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    .line 705
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    .line 706
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 707
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 708
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 709
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 710
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 711
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 712
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 713
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 714
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    .line 715
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    .line 716
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    .line 717
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    .line 718
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 719
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    .line 720
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    .line 721
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    .line 722
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    .line 723
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    .line 724
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    .line 725
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    .line 726
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    .line 727
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    .line 728
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    .line 729
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    .line 730
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    .line 731
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    .line 732
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotHasDfsChannelScans:I

    .line 733
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    .line 734
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    .line 735
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    .line 736
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    .line 737
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    .line 738
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    .line 739
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    .line 740
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    .line 741
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->cachedSize:I

    .line 742
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .line 1269
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1270
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 1271
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .local v1, "size":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1272
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    aget-object v3, v3, v0

    .line 1273
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    if-eqz v3, :cond_0

    .line 1274
    nop

    .line 1275
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1271
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1279
    .end local v0    # "i":I
    :cond_1
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    if-eqz v1, :cond_3

    .line 1280
    const/4 v1, 0x2

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    .line 1281
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1283
    :cond_3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    if-eqz v1, :cond_4

    .line 1284
    const/4 v1, 0x3

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    .line 1285
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1287
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    if-eqz v1, :cond_5

    .line 1288
    const/4 v1, 0x4

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    .line 1289
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1291
    :cond_5
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    if-eqz v1, :cond_6

    .line 1292
    const/4 v1, 0x5

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    .line 1293
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1295
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    if-eqz v1, :cond_7

    .line 1296
    const/4 v1, 0x6

    iget-boolean v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    .line 1297
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1299
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    if-eqz v1, :cond_8

    .line 1300
    const/4 v1, 0x7

    iget-boolean v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    .line 1301
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1303
    :cond_8
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    if-eqz v1, :cond_9

    .line 1304
    const/16 v1, 0x8

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    .line 1305
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1307
    :cond_9
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    if-eqz v1, :cond_a

    .line 1308
    const/16 v1, 0x9

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    .line 1309
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1311
    :cond_a
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    if-eqz v1, :cond_b

    .line 1312
    const/16 v1, 0xa

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    .line 1313
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1315
    :cond_b
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    if-eqz v1, :cond_c

    .line 1316
    const/16 v1, 0xb

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    .line 1317
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1319
    :cond_c
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    if-eqz v1, :cond_d

    .line 1320
    const/16 v1, 0xc

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    .line 1321
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1323
    :cond_d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    if-eqz v1, :cond_e

    .line 1324
    const/16 v1, 0xd

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    .line 1325
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1327
    :cond_e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    if-eqz v1, :cond_f

    .line 1328
    const/16 v1, 0xe

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    .line 1329
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1331
    :cond_f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    if-eqz v1, :cond_10

    .line 1332
    const/16 v1, 0xf

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    .line 1333
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1335
    :cond_10
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v1, v1

    if-lez v1, :cond_13

    .line 1336
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v3, v3

    if-ge v0, v3, :cond_12

    .line 1337
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v3, v3, v0

    .line 1338
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_11

    .line 1339
    const/16 v4, 0x10

    .line 1340
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1336
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1344
    .end local v0    # "i":I
    :cond_12
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_13
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v1, v1

    if-lez v1, :cond_16

    .line 1345
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v3, v3

    if-ge v0, v3, :cond_15

    .line 1346
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v3, v3, v0

    .line 1347
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v3, :cond_14

    .line 1348
    const/16 v4, 0x11

    .line 1349
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1345
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1353
    .end local v0    # "i":I
    :cond_15
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_16
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v1, v1

    if-lez v1, :cond_19

    .line 1354
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_3
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v3, v3

    if-ge v0, v3, :cond_18

    .line 1355
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v3, v3, v0

    .line 1356
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_17

    .line 1357
    const/16 v4, 0x12

    .line 1358
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1354
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1362
    .end local v0    # "i":I
    :cond_18
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_19
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v1, v1

    if-lez v1, :cond_1c

    .line 1363
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_4
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v3, v3

    if-ge v0, v3, :cond_1b

    .line 1364
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v3, v3, v0

    .line 1365
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v3, :cond_1a

    .line 1366
    const/16 v4, 0x13

    .line 1367
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1363
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1371
    .end local v0    # "i":I
    :cond_1b
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_1c
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    if-eqz v1, :cond_1d

    .line 1372
    const/16 v1, 0x14

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    .line 1373
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1375
    :cond_1d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    if-eqz v1, :cond_1e

    .line 1376
    const/16 v1, 0x15

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    .line 1377
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1379
    :cond_1e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    if-eqz v1, :cond_1f

    .line 1380
    const/16 v1, 0x16

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    .line 1381
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1383
    :cond_1f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    if-eqz v1, :cond_20

    .line 1384
    const/16 v1, 0x17

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    .line 1385
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1387
    :cond_20
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    if-eqz v1, :cond_21

    .line 1388
    const/16 v1, 0x18

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    .line 1389
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1391
    :cond_21
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    if-eqz v1, :cond_22

    .line 1392
    const/16 v1, 0x19

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    .line 1393
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1395
    :cond_22
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    if-eqz v1, :cond_23

    .line 1396
    const/16 v1, 0x1a

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    .line 1397
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1399
    :cond_23
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    if-eqz v1, :cond_24

    .line 1400
    const/16 v1, 0x1b

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    .line 1401
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1403
    :cond_24
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    if-eqz v1, :cond_25

    .line 1404
    const/16 v1, 0x1c

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    .line 1405
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1407
    :cond_25
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    if-eqz v1, :cond_26

    .line 1408
    const/16 v1, 0x1d

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    .line 1409
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1411
    :cond_26
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    if-eqz v1, :cond_27

    .line 1412
    const/16 v1, 0x1e

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    .line 1413
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1415
    :cond_27
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    if-eqz v1, :cond_28

    .line 1416
    const/16 v1, 0x1f

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    .line 1417
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1419
    :cond_28
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    if-eqz v1, :cond_29

    .line 1420
    const/16 v1, 0x20

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    .line 1421
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1423
    :cond_29
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    if-eqz v1, :cond_2a

    .line 1424
    const/16 v1, 0x21

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    .line 1425
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1427
    :cond_2a
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    if-eqz v1, :cond_2b

    .line 1428
    const/16 v1, 0x22

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    .line 1429
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1431
    :cond_2b
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v1, v1

    if-lez v1, :cond_2e

    .line 1432
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_5
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v3, v3

    if-ge v0, v3, :cond_2d

    .line 1433
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v3, v3, v0

    .line 1434
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    if-eqz v3, :cond_2c

    .line 1435
    const/16 v4, 0x23

    .line 1436
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1432
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1440
    .end local v0    # "i":I
    :cond_2d
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_2e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    if-eqz v1, :cond_2f

    .line 1441
    const/16 v1, 0x24

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    .line 1442
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1444
    :cond_2f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    if-eqz v1, :cond_30

    .line 1445
    const/16 v1, 0x25

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    .line 1446
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1448
    :cond_30
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    if-eqz v1, :cond_31

    .line 1449
    const/16 v1, 0x26

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    .line 1450
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1452
    :cond_31
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    if-eqz v1, :cond_32

    .line 1453
    const/16 v1, 0x27

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    .line 1454
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1456
    :cond_32
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    if-eqz v1, :cond_33

    .line 1457
    const/16 v1, 0x28

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    .line 1458
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1460
    :cond_33
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    if-eqz v1, :cond_34

    .line 1461
    const/16 v1, 0x29

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    .line 1462
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1464
    :cond_34
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    if-eqz v1, :cond_35

    .line 1465
    const/16 v1, 0x2a

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    .line 1466
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1468
    :cond_35
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    if-eqz v1, :cond_36

    .line 1469
    const/16 v1, 0x2b

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    .line 1470
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1472
    :cond_36
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    if-eqz v1, :cond_37

    .line 1473
    const/16 v1, 0x2c

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    .line 1474
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1476
    :cond_37
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    if-eqz v1, :cond_38

    .line 1477
    const/16 v1, 0x2d

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    .line 1478
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1480
    :cond_38
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    if-eqz v1, :cond_39

    .line 1481
    const/16 v1, 0x2e

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    .line 1482
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1484
    :cond_39
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v1, v1

    if-lez v1, :cond_3c

    .line 1485
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_6
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v3, v3

    if-ge v0, v3, :cond_3b

    .line 1486
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    aget-object v3, v3, v0

    .line 1487
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    if-eqz v3, :cond_3a

    .line 1488
    const/16 v4, 0x2f

    .line 1489
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1485
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1493
    .end local v0    # "i":I
    :cond_3b
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_3c
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v1, v1

    if-lez v1, :cond_3f

    .line 1494
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_7
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v3, v3

    if-ge v0, v3, :cond_3e

    .line 1495
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    aget-object v3, v3, v0

    .line 1496
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    if-eqz v3, :cond_3d

    .line 1497
    const/16 v4, 0x30

    .line 1498
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1494
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1502
    .end local v0    # "i":I
    :cond_3e
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_3f
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v1, v1

    if-lez v1, :cond_42

    .line 1503
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_8
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_41

    .line 1504
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    aget-object v3, v3, v0

    .line 1505
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    if-eqz v3, :cond_40

    .line 1506
    const/16 v4, 0x31

    .line 1507
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1503
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1511
    .end local v0    # "i":I
    :cond_41
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_42
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v1, v1

    if-lez v1, :cond_45

    .line 1512
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_9
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v3, v3

    if-ge v0, v3, :cond_44

    .line 1513
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    aget-object v3, v3, v0

    .line 1514
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    if-eqz v3, :cond_43

    .line 1515
    const/16 v4, 0x32

    .line 1516
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1512
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1520
    .end local v0    # "i":I
    :cond_44
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_45
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v1, v1

    if-lez v1, :cond_48

    .line 1521
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v3, v3

    if-ge v0, v3, :cond_47

    .line 1522
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v3, v3, v0

    .line 1523
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    if-eqz v3, :cond_46

    .line 1524
    const/16 v4, 0x33

    .line 1525
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1521
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1529
    .end local v0    # "i":I
    :cond_47
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_48
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v1, v1

    if-lez v1, :cond_4b

    .line 1530
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v3, v3

    if-ge v0, v3, :cond_4a

    .line 1531
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    aget-object v3, v3, v0

    .line 1532
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    if-eqz v3, :cond_49

    .line 1533
    const/16 v4, 0x34

    .line 1534
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1530
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1538
    .end local v0    # "i":I
    :cond_4a
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_4b
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    if-eqz v1, :cond_4c

    .line 1539
    const/16 v1, 0x35

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    .line 1540
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1542
    :cond_4c
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    if-eqz v1, :cond_4d

    .line 1543
    const/16 v1, 0x36

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    .line 1544
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1546
    :cond_4d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    if-eqz v1, :cond_4e

    .line 1547
    const/16 v1, 0x37

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    .line 1548
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1550
    :cond_4e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    if-eqz v1, :cond_4f

    .line 1551
    const/16 v1, 0x38

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    .line 1552
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1554
    :cond_4f
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-eqz v1, :cond_50

    .line 1555
    const/16 v1, 0x39

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 1556
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1558
    :cond_50
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    if-eqz v1, :cond_51

    .line 1559
    const/16 v1, 0x3a

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    .line 1560
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1562
    :cond_51
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    if-eqz v1, :cond_52

    .line 1563
    const/16 v1, 0x3b

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    .line 1564
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1566
    :cond_52
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    if-eqz v1, :cond_53

    .line 1567
    const/16 v1, 0x3c

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    .line 1568
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1570
    :cond_53
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    if-eqz v1, :cond_54

    .line 1571
    const/16 v1, 0x3d

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    .line 1572
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1574
    :cond_54
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    if-eqz v1, :cond_55

    .line 1575
    const/16 v1, 0x3e

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    .line 1576
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1578
    :cond_55
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    if-eqz v1, :cond_56

    .line 1579
    const/16 v1, 0x3f

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    .line 1580
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1582
    :cond_56
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_59

    .line 1583
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_c
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_58

    .line 1584
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1585
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_57

    .line 1586
    const/16 v4, 0x40

    .line 1587
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1583
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1591
    .end local v0    # "i":I
    :cond_58
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_59
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_5c

    .line 1592
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_d
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_5b

    .line 1593
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1594
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_5a

    .line 1595
    const/16 v4, 0x41

    .line 1596
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1592
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1600
    .end local v0    # "i":I
    :cond_5b
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_5c
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_5f

    .line 1601
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_e
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_5e

    .line 1602
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1603
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_5d

    .line 1604
    const/16 v4, 0x42

    .line 1605
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1601
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1609
    .end local v0    # "i":I
    :cond_5e
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_5f
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_62

    .line 1610
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_f
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_61

    .line 1611
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1612
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_60

    .line 1613
    const/16 v4, 0x43

    .line 1614
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1610
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1618
    .end local v0    # "i":I
    :cond_61
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_62
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_65

    .line 1619
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_10
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_64

    .line 1620
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1621
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_63

    .line 1622
    const/16 v4, 0x44

    .line 1623
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1619
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1627
    .end local v0    # "i":I
    :cond_64
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_65
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_68

    .line 1628
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_11
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_67

    .line 1629
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1630
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_66

    .line 1631
    const/16 v4, 0x45

    .line 1632
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1628
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1636
    .end local v0    # "i":I
    :cond_67
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_68
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_6b

    .line 1637
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_12
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_6a

    .line 1638
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1639
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_69

    .line 1640
    const/16 v4, 0x46

    .line 1641
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1637
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1645
    .end local v0    # "i":I
    :cond_6a
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_6b
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_6e

    .line 1646
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_13
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_6d

    .line 1647
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1648
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_6c

    .line 1649
    const/16 v4, 0x47

    .line 1650
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1646
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1654
    .end local v0    # "i":I
    :cond_6d
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_6e
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_71

    .line 1655
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_14
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_70

    .line 1656
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1657
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_6f

    .line 1658
    const/16 v4, 0x48

    .line 1659
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1655
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1663
    .end local v0    # "i":I
    :cond_70
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_71
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_74

    .line 1664
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_15
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_73

    .line 1665
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1666
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_72

    .line 1667
    const/16 v4, 0x49

    .line 1668
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1664
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1672
    .end local v0    # "i":I
    :cond_73
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_74
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    if-eqz v1, :cond_75

    .line 1673
    const/16 v1, 0x4a

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    .line 1674
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1676
    :cond_75
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    if-eqz v1, :cond_76

    .line 1677
    const/16 v1, 0x4b

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    .line 1678
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1680
    :cond_76
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    if-eqz v1, :cond_77

    .line 1681
    const/16 v1, 0x4c

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    .line 1682
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1684
    :cond_77
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v1, v1

    if-lez v1, :cond_7a

    .line 1685
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_16
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v3, v3

    if-ge v0, v3, :cond_79

    .line 1686
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v3, v3, v0

    .line 1687
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    if-eqz v3, :cond_78

    .line 1688
    const/16 v4, 0x4d

    .line 1689
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1685
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1693
    .end local v0    # "i":I
    :cond_79
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_7a
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v1, v1

    if-lez v1, :cond_7d

    .line 1694
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_17
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v3, v3

    if-ge v0, v3, :cond_7c

    .line 1695
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v3, v3, v0

    .line 1696
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    if-eqz v3, :cond_7b

    .line 1697
    const/16 v4, 0x4e

    .line 1698
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1694
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1702
    .end local v0    # "i":I
    :cond_7c
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_7d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    if-eqz v1, :cond_7e

    .line 1703
    const/16 v1, 0x4f

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    .line 1704
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1706
    :cond_7e
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    if-eqz v1, :cond_7f

    .line 1707
    const/16 v1, 0x50

    iget-boolean v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    .line 1708
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1710
    :cond_7f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    if-eqz v1, :cond_80

    .line 1711
    const/16 v1, 0x51

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    .line 1712
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1714
    :cond_80
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    if-eqz v1, :cond_81

    .line 1715
    const/16 v1, 0x52

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    .line 1716
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1718
    :cond_81
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_84

    .line 1719
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_18
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_83

    .line 1720
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1721
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_82

    .line 1722
    const/16 v4, 0x53

    .line 1723
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1719
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1727
    .end local v0    # "i":I
    :cond_83
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_84
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_87

    .line 1728
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_19
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_86

    .line 1729
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1730
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_85

    .line 1731
    const/16 v4, 0x54

    .line 1732
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1728
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1736
    .end local v0    # "i":I
    :cond_86
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_87
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_8a

    .line 1737
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_1a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_89

    .line 1738
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1739
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_88

    .line 1740
    const/16 v4, 0x55

    .line 1741
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1737
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 1745
    .end local v0    # "i":I
    :cond_89
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_8a
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_8d

    .line 1746
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_1b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_8c

    .line 1747
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1748
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_8b

    .line 1749
    const/16 v4, 0x56

    .line 1750
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1746
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1754
    .end local v0    # "i":I
    :cond_8c
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_8d
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_90

    .line 1755
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_1c
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_8f

    .line 1756
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1757
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_8e

    .line 1758
    const/16 v4, 0x57

    .line 1759
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1755
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 1763
    .end local v0    # "i":I
    :cond_8f
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_90
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_93

    .line 1764
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_1d
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_92

    .line 1765
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1766
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_91

    .line 1767
    const/16 v4, 0x58

    .line 1768
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1764
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1772
    .end local v0    # "i":I
    :cond_92
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_93
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-eqz v1, :cond_96

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v1, v1

    if-lez v1, :cond_96

    .line 1773
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_1e
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v3, v3

    if-ge v0, v3, :cond_95

    .line 1774
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    aget-object v3, v3, v0

    .line 1775
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    if-eqz v3, :cond_94

    .line 1776
    const/16 v4, 0x59

    .line 1777
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1773
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    :cond_94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1781
    .end local v0    # "i":I
    :cond_95
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_96
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-eqz v1, :cond_99

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v1, v1

    if-lez v1, :cond_99

    .line 1782
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_1f
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v3, v3

    if-ge v0, v3, :cond_98

    .line 1783
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    aget-object v3, v3, v0

    .line 1784
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    if-eqz v3, :cond_97

    .line 1785
    const/16 v4, 0x5a

    .line 1786
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1782
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    :cond_97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1790
    .end local v0    # "i":I
    :cond_98
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_99
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    if-eqz v1, :cond_9a

    .line 1791
    const/16 v1, 0x5b

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    .line 1792
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1794
    :cond_9a
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    if-eqz v1, :cond_9b

    .line 1795
    const/16 v1, 0x5c

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    .line 1796
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1798
    :cond_9b
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    if-eqz v1, :cond_9c

    .line 1799
    const/16 v1, 0x5d

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    .line 1800
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1802
    :cond_9c
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    if-eqz v1, :cond_9d

    .line 1803
    const/16 v1, 0x5e

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    .line 1804
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1806
    :cond_9d
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_9f

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_9f

    .line 1807
    nop

    .local v2, "i":I
    :goto_20
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_9f

    .line 1808
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v1

    .line 1809
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_9e

    .line 1810
    const/16 v3, 0x5f

    .line 1811
    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1807
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_9e
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_20

    .line 1815
    .end local v2    # "i":I
    :cond_9f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    if-eqz v1, :cond_a0

    .line 1816
    const/16 v1, 0x60

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    .line 1817
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1819
    :cond_a0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    if-eqz v1, :cond_a1

    .line 1820
    const/16 v1, 0x61

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    .line 1821
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1823
    :cond_a1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    if-eqz v1, :cond_a2

    .line 1824
    const/16 v1, 0x62

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    .line 1825
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1827
    :cond_a2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    if-eqz v1, :cond_a3

    .line 1828
    const/16 v1, 0x63

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    .line 1829
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1831
    :cond_a3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    if-eqz v1, :cond_a4

    .line 1832
    const/16 v1, 0x64

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    .line 1833
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1835
    :cond_a4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    if-eqz v1, :cond_a5

    .line 1836
    const/16 v1, 0x65

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    .line 1837
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1839
    :cond_a5
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    if-eqz v1, :cond_a6

    .line 1840
    const/16 v1, 0x66

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    .line 1841
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1843
    :cond_a6
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    if-eqz v1, :cond_a7

    .line 1844
    const/16 v1, 0x67

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    .line 1845
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1847
    :cond_a7
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    if-eqz v1, :cond_a8

    .line 1848
    const/16 v1, 0x68

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    .line 1849
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1851
    :cond_a8
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    if-eqz v1, :cond_a9

    .line 1852
    const/16 v1, 0x69

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    .line 1853
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1855
    :cond_a9
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    if-eqz v1, :cond_aa

    .line 1856
    const/16 v1, 0x6a

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    .line 1857
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1859
    :cond_aa
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_ab

    .line 1860
    const/16 v1, 0x6b

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    .line 1861
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1863
    :cond_ab
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_ac

    .line 1864
    const/16 v1, 0x6c

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    .line 1865
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1867
    :cond_ac
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotHasDfsChannelScans:I

    if-eqz v1, :cond_ad

    .line 1868
    const/16 v1, 0x6d

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotHasDfsChannelScans:I

    .line 1869
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1871
    :cond_ad
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    if-eqz v1, :cond_ae

    .line 1872
    const/16 v1, 0x6e

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    .line 1873
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1875
    :cond_ae
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    if-eqz v1, :cond_af

    .line 1876
    const/16 v1, 0x6f

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    .line 1877
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1879
    :cond_af
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    if-eqz v1, :cond_b0

    .line 1880
    const/16 v1, 0x70

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    .line 1881
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1883
    :cond_b0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    if-eqz v1, :cond_b1

    .line 1884
    const/16 v1, 0x71

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    .line 1885
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1887
    :cond_b1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    if-eqz v1, :cond_b2

    .line 1888
    const/16 v1, 0x72

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    .line 1889
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1891
    :cond_b2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    if-eqz v1, :cond_b3

    .line 1892
    const/16 v1, 0x73

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    .line 1893
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1895
    :cond_b3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    if-eqz v1, :cond_b4

    .line 1896
    const/16 v1, 0x74

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    .line 1897
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1899
    :cond_b4
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b5

    .line 1900
    const/16 v1, 0x75

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    .line 1901
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1903
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

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 6
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1911
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1912
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 1916
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_69

    .line 1917
    return-object p0

    .line 2932
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    .end local v0    # "tag":I
    goto/16 :goto_43

    .line 2928
    .restart local v0    # "tag":I
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    .line 2929
    goto/16 :goto_43

    .line 2924
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    .line 2925
    goto/16 :goto_43

    .line 2920
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    .line 2921
    goto/16 :goto_43

    .line 2916
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    .line 2917
    goto/16 :goto_43

    .line 2912
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    .line 2913
    goto/16 :goto_43

    .line 2908
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    .line 2909
    goto/16 :goto_43

    .line 2901
    :sswitch_7
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    if-nez v1, :cond_0

    .line 2902
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    .line 2904
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2905
    goto/16 :goto_43

    .line 2897
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotHasDfsChannelScans:I

    .line 2898
    goto/16 :goto_43

    .line 2893
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    .line 2894
    goto/16 :goto_43

    .line 2889
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    .line 2890
    goto/16 :goto_43

    .line 2885
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    .line 2886
    goto/16 :goto_43

    .line 2881
    :sswitch_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    .line 2882
    goto/16 :goto_43

    .line 2877
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    .line 2878
    goto/16 :goto_43

    .line 2873
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    .line 2874
    goto/16 :goto_43

    .line 2869
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    .line 2870
    goto/16 :goto_43

    .line 2865
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    .line 2866
    goto/16 :goto_43

    .line 2861
    :sswitch_11
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    .line 2862
    goto/16 :goto_43

    .line 2857
    :sswitch_12
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    .line 2858
    goto/16 :goto_43

    .line 2853
    :sswitch_13
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    .line 2854
    goto/16 :goto_43

    .line 2849
    :sswitch_14
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    .line 2850
    goto/16 :goto_43

    .line 2845
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    .line 2846
    goto/16 :goto_43

    .line 2825
    :sswitch_16
    const/16 v2, 0x2fa

    .line 2826
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2827
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2828
    .local v3, "i":I
    :goto_1
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2830
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_2

    .line 2831
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2833
    :cond_2
    :goto_2
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3

    .line 2834
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2835
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2836
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2833
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2839
    :cond_3
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2840
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2841
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2842
    goto/16 :goto_43

    .line 2818
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_17
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    if-nez v1, :cond_4

    .line 2819
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    .line 2821
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2822
    goto/16 :goto_43

    .line 2814
    :sswitch_18
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    .line 2815
    goto/16 :goto_43

    .line 2807
    :sswitch_19
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    if-nez v1, :cond_5

    .line 2808
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    .line 2810
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2811
    goto/16 :goto_43

    .line 2800
    :sswitch_1a
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    if-nez v1, :cond_6

    .line 2801
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    .line 2803
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2804
    goto/16 :goto_43

    .line 2780
    :sswitch_1b
    const/16 v2, 0x2d2

    .line 2781
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2782
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v3, v3

    .line 2783
    .restart local v3    # "i":I
    :goto_3
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 2785
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    if-eqz v3, :cond_8

    .line 2786
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2788
    :cond_8
    :goto_4
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_9

    .line 2789
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;-><init>()V

    aput-object v1, v4, v3

    .line 2790
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2791
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2788
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2794
    :cond_9
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;-><init>()V

    aput-object v1, v4, v3

    .line 2795
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2796
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 2797
    goto/16 :goto_43

    .line 2760
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    :sswitch_1c
    const/16 v2, 0x2ca

    .line 2761
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2762
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-nez v3, :cond_a

    move v3, v1

    goto :goto_5

    :cond_a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v3, v3

    .line 2763
    .restart local v3    # "i":I
    :goto_5
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 2765
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    if-eqz v3, :cond_b

    .line 2766
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2768
    :cond_b
    :goto_6
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_c

    .line 2769
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;-><init>()V

    aput-object v1, v4, v3

    .line 2770
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2771
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2768
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2774
    :cond_c
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;-><init>()V

    aput-object v1, v4, v3

    .line 2775
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2776
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 2777
    goto/16 :goto_43

    .line 2740
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    :sswitch_1d
    const/16 v2, 0x2c2

    .line 2741
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2742
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_d

    move v3, v1

    goto :goto_7

    :cond_d
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2743
    .restart local v3    # "i":I
    :goto_7
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2745
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_e

    .line 2746
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2748
    :cond_e
    :goto_8
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_f

    .line 2749
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2750
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2751
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2748
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2754
    :cond_f
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2755
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2756
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2757
    goto/16 :goto_43

    .line 2720
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_1e
    const/16 v2, 0x2ba

    .line 2721
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2722
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_10

    move v3, v1

    goto :goto_9

    :cond_10
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2723
    .restart local v3    # "i":I
    :goto_9
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2725
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_11

    .line 2726
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2728
    :cond_11
    :goto_a
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_12

    .line 2729
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2730
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2731
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2728
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2734
    :cond_12
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2735
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2736
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2737
    goto/16 :goto_43

    .line 2700
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_1f
    const/16 v2, 0x2b2

    .line 2701
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2702
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_13

    move v3, v1

    goto :goto_b

    :cond_13
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2703
    .restart local v3    # "i":I
    :goto_b
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2705
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_14

    .line 2706
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2708
    :cond_14
    :goto_c
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_15

    .line 2709
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2710
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2711
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2708
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2714
    :cond_15
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2715
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2716
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2717
    goto/16 :goto_43

    .line 2680
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_20
    const/16 v2, 0x2aa

    .line 2681
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2682
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_16

    move v3, v1

    goto :goto_d

    :cond_16
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2683
    .restart local v3    # "i":I
    :goto_d
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2685
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_17

    .line 2686
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2688
    :cond_17
    :goto_e
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_18

    .line 2689
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2690
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2691
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2688
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 2694
    :cond_18
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2695
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2696
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2697
    goto/16 :goto_43

    .line 2660
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_21
    const/16 v2, 0x2a2

    .line 2661
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2662
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_19

    move v3, v1

    goto :goto_f

    :cond_19
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2663
    .restart local v3    # "i":I
    :goto_f
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2665
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_1a

    .line 2666
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2668
    :cond_1a
    :goto_10
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_1b

    .line 2669
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2670
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2671
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2668
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2674
    :cond_1b
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2675
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2676
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2677
    goto/16 :goto_43

    .line 2640
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_22
    const/16 v2, 0x29a

    .line 2641
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2642
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_1c

    move v3, v1

    goto :goto_11

    :cond_1c
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2643
    .restart local v3    # "i":I
    :goto_11
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2645
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_1d

    .line 2646
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2648
    :cond_1d
    :goto_12
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_1e

    .line 2649
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2650
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2651
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2648
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2654
    :cond_1e
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2655
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2656
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2657
    goto/16 :goto_43

    .line 2636
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_23
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    .line 2637
    goto/16 :goto_43

    .line 2632
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    .line 2633
    goto/16 :goto_43

    .line 2628
    :sswitch_25
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    .line 2629
    goto/16 :goto_43

    .line 2624
    :sswitch_26
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    .line 2625
    goto/16 :goto_43

    .line 2604
    :sswitch_27
    const/16 v2, 0x272

    .line 2605
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2606
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-nez v3, :cond_1f

    move v3, v1

    goto :goto_13

    :cond_1f
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v3, v3

    .line 2607
    .restart local v3    # "i":I
    :goto_13
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 2609
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    if-eqz v3, :cond_20

    .line 2610
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2612
    :cond_20
    :goto_14
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_21

    .line 2613
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v1, v4, v3

    .line 2614
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2615
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2612
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2618
    :cond_21
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v1, v4, v3

    .line 2619
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2620
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 2621
    goto/16 :goto_43

    .line 2584
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :sswitch_28
    const/16 v2, 0x26a

    .line 2585
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2586
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-nez v3, :cond_22

    move v3, v1

    goto :goto_15

    :cond_22
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v3, v3

    .line 2587
    .restart local v3    # "i":I
    :goto_15
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 2589
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    if-eqz v3, :cond_23

    .line 2590
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2592
    :cond_23
    :goto_16
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_24

    .line 2593
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v1, v4, v3

    .line 2594
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2595
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2592
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 2598
    :cond_24
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v1, v4, v3

    .line 2599
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2600
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 2601
    goto/16 :goto_43

    .line 2577
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :sswitch_29
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    if-nez v1, :cond_25

    .line 2578
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    .line 2580
    :cond_25
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2581
    goto/16 :goto_43

    .line 2573
    :sswitch_2a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    .line 2574
    goto/16 :goto_43

    .line 2569
    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    .line 2570
    goto/16 :goto_43

    .line 2549
    :sswitch_2c
    const/16 v2, 0x24a

    .line 2550
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2551
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_26

    move v3, v1

    goto :goto_17

    :cond_26
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2552
    .restart local v3    # "i":I
    :goto_17
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2554
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_27

    .line 2555
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2557
    :cond_27
    :goto_18
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_28

    .line 2558
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2559
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2560
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2557
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 2563
    :cond_28
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2564
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2565
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2566
    goto/16 :goto_43

    .line 2529
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_2d
    const/16 v2, 0x242

    .line 2530
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2531
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_29

    move v3, v1

    goto :goto_19

    :cond_29
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2532
    .restart local v3    # "i":I
    :goto_19
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2534
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_2a

    .line 2535
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2537
    :cond_2a
    :goto_1a
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_2b

    .line 2538
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2539
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2540
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2537
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 2543
    :cond_2b
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2544
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2545
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2546
    goto/16 :goto_43

    .line 2509
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_2e
    const/16 v2, 0x23a

    .line 2510
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2511
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_2c

    move v3, v1

    goto :goto_1b

    :cond_2c
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2512
    .restart local v3    # "i":I
    :goto_1b
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2514
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_2d

    .line 2515
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2517
    :cond_2d
    :goto_1c
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_2e

    .line 2518
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2519
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2520
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2517
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 2523
    :cond_2e
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2524
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2525
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2526
    goto/16 :goto_43

    .line 2489
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_2f
    const/16 v2, 0x232

    .line 2490
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2491
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_2f

    move v3, v1

    goto :goto_1d

    :cond_2f
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2492
    .restart local v3    # "i":I
    :goto_1d
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2494
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_30

    .line 2495
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2497
    :cond_30
    :goto_1e
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_31

    .line 2498
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2499
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2500
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2497
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 2503
    :cond_31
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2504
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2505
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2506
    goto/16 :goto_43

    .line 2469
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_30
    const/16 v2, 0x22a

    .line 2470
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2471
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_32

    move v3, v1

    goto :goto_1f

    :cond_32
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2472
    .restart local v3    # "i":I
    :goto_1f
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2474
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_33

    .line 2475
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2477
    :cond_33
    :goto_20
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_34

    .line 2478
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2479
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2480
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2477
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 2483
    :cond_34
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2484
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2485
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2486
    goto/16 :goto_43

    .line 2449
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_31
    const/16 v2, 0x222

    .line 2450
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2451
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_35

    move v3, v1

    goto :goto_21

    :cond_35
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2452
    .restart local v3    # "i":I
    :goto_21
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2454
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_36

    .line 2455
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2457
    :cond_36
    :goto_22
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_37

    .line 2458
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2459
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2460
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2457
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 2463
    :cond_37
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2464
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2465
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2466
    goto/16 :goto_43

    .line 2429
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_32
    const/16 v2, 0x21a

    .line 2430
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2431
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_38

    move v3, v1

    goto :goto_23

    :cond_38
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2432
    .restart local v3    # "i":I
    :goto_23
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2434
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_39

    .line 2435
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2437
    :cond_39
    :goto_24
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3a

    .line 2438
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2439
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2440
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2437
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 2443
    :cond_3a
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2444
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2445
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2446
    goto/16 :goto_43

    .line 2409
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_33
    const/16 v2, 0x212

    .line 2410
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2411
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_3b

    move v3, v1

    goto :goto_25

    :cond_3b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2412
    .restart local v3    # "i":I
    :goto_25
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2414
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_3c

    .line 2415
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2417
    :cond_3c
    :goto_26
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3d

    .line 2418
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2419
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2420
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2417
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 2423
    :cond_3d
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2424
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2425
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2426
    goto/16 :goto_43

    .line 2389
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_34
    const/16 v2, 0x20a

    .line 2390
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2391
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_3e

    move v3, v1

    goto :goto_27

    :cond_3e
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2392
    .restart local v3    # "i":I
    :goto_27
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2394
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_3f

    .line 2395
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2397
    :cond_3f
    :goto_28
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_40

    .line 2398
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2399
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2400
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2397
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 2403
    :cond_40
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2404
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2405
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2406
    goto/16 :goto_43

    .line 2369
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_35
    const/16 v2, 0x202

    .line 2370
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2371
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_41

    move v3, v1

    goto :goto_29

    :cond_41
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2372
    .restart local v3    # "i":I
    :goto_29
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2374
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_42

    .line 2375
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2377
    :cond_42
    :goto_2a
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_43

    .line 2378
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2379
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2380
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2377
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 2383
    :cond_43
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2384
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2385
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2386
    goto/16 :goto_43

    .line 2365
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_36
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    .line 2366
    goto/16 :goto_43

    .line 2361
    :sswitch_37
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    .line 2362
    goto/16 :goto_43

    .line 2357
    :sswitch_38
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    .line 2358
    goto/16 :goto_43

    .line 2353
    :sswitch_39
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    .line 2354
    goto/16 :goto_43

    .line 2349
    :sswitch_3a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    .line 2350
    goto/16 :goto_43

    .line 2345
    :sswitch_3b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    .line 2346
    goto/16 :goto_43

    .line 2338
    :sswitch_3c
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-nez v1, :cond_44

    .line 2339
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 2341
    :cond_44
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2342
    goto/16 :goto_43

    .line 2334
    :sswitch_3d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    .line 2335
    goto/16 :goto_43

    .line 2330
    :sswitch_3e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    .line 2331
    goto/16 :goto_43

    .line 2326
    :sswitch_3f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    .line 2327
    goto/16 :goto_43

    .line 2322
    :sswitch_40
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    .line 2323
    goto/16 :goto_43

    .line 2302
    :sswitch_41
    const/16 v2, 0x1a2

    .line 2303
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2304
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-nez v3, :cond_45

    move v3, v1

    goto :goto_2b

    :cond_45
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v3, v3

    .line 2305
    .restart local v3    # "i":I
    :goto_2b
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 2307
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    if-eqz v3, :cond_46

    .line 2308
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2310
    :cond_46
    :goto_2c
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_47

    .line 2311
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    aput-object v1, v4, v3

    .line 2312
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2313
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2310
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 2316
    :cond_47
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    aput-object v1, v4, v3

    .line 2317
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2318
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 2319
    goto/16 :goto_43

    .line 2282
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    :sswitch_42
    const/16 v2, 0x19a

    .line 2283
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2284
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-nez v3, :cond_48

    move v3, v1

    goto :goto_2d

    :cond_48
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v3, v3

    .line 2285
    .restart local v3    # "i":I
    :goto_2d
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 2287
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    if-eqz v3, :cond_49

    .line 2288
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2290
    :cond_49
    :goto_2e
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_4a

    .line 2291
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v1, v4, v3

    .line 2292
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2293
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2290
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 2296
    :cond_4a
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v1, v4, v3

    .line 2297
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2298
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 2299
    goto/16 :goto_43

    .line 2262
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :sswitch_43
    const/16 v2, 0x192

    .line 2263
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2264
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-nez v3, :cond_4b

    move v3, v1

    goto :goto_2f

    :cond_4b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v3, v3

    .line 2265
    .restart local v3    # "i":I
    :goto_2f
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    .line 2267
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    if-eqz v3, :cond_4c

    .line 2268
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2270
    :cond_4c
    :goto_30
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_4d

    .line 2271
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    aput-object v1, v4, v3

    .line 2272
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2273
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2270
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 2276
    :cond_4d
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    aput-object v1, v4, v3

    .line 2277
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2278
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    .line 2279
    goto/16 :goto_43

    .line 2242
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    :sswitch_44
    const/16 v2, 0x18a

    .line 2243
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2244
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-nez v3, :cond_4e

    move v3, v1

    goto :goto_31

    :cond_4e
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v3, v3

    .line 2245
    .restart local v3    # "i":I
    :goto_31
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    .line 2247
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    if-eqz v3, :cond_4f

    .line 2248
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2250
    :cond_4f
    :goto_32
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_50

    .line 2251
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2252
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2253
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2250
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 2256
    :cond_50
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2257
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2258
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    .line 2259
    goto/16 :goto_43

    .line 2222
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    :sswitch_45
    const/16 v2, 0x182

    .line 2223
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2224
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-nez v3, :cond_51

    move v3, v1

    goto :goto_33

    :cond_51
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v3, v3

    .line 2225
    .restart local v3    # "i":I
    :goto_33
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    .line 2227
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    if-eqz v3, :cond_52

    .line 2228
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2230
    :cond_52
    :goto_34
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_53

    .line 2231
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;-><init>()V

    aput-object v1, v4, v3

    .line 2232
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2233
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2230
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 2236
    :cond_53
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;-><init>()V

    aput-object v1, v4, v3

    .line 2237
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2238
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    .line 2239
    goto/16 :goto_43

    .line 2202
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    :sswitch_46
    const/16 v2, 0x17a

    .line 2203
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2204
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-nez v3, :cond_54

    move v3, v1

    goto :goto_35

    :cond_54
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v3, v3

    .line 2205
    .restart local v3    # "i":I
    :goto_35
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 2207
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    if-eqz v3, :cond_55

    .line 2208
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2210
    :cond_55
    :goto_36
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_56

    .line 2211
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    aput-object v1, v4, v3

    .line 2212
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2213
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2210
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 2216
    :cond_56
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    aput-object v1, v4, v3

    .line 2217
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2218
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 2219
    goto/16 :goto_43

    .line 2198
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    :sswitch_47
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    .line 2199
    goto/16 :goto_43

    .line 2194
    :sswitch_48
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    .line 2195
    goto/16 :goto_43

    .line 2190
    :sswitch_49
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    .line 2191
    goto/16 :goto_43

    .line 2186
    :sswitch_4a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    .line 2187
    goto/16 :goto_43

    .line 2182
    :sswitch_4b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    .line 2183
    goto/16 :goto_43

    .line 2178
    :sswitch_4c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    .line 2179
    goto/16 :goto_43

    .line 2174
    :sswitch_4d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    .line 2175
    goto/16 :goto_43

    .line 2170
    :sswitch_4e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    .line 2171
    goto/16 :goto_43

    .line 2166
    :sswitch_4f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    .line 2167
    goto/16 :goto_43

    .line 2162
    :sswitch_50
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    .line 2163
    goto/16 :goto_43

    .line 2158
    :sswitch_51
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    .line 2159
    goto/16 :goto_43

    .line 2138
    :sswitch_52
    const/16 v2, 0x11a

    .line 2139
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2140
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-nez v3, :cond_57

    move v3, v1

    goto :goto_37

    :cond_57
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v3, v3

    .line 2141
    .restart local v3    # "i":I
    :goto_37
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 2143
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    if-eqz v3, :cond_58

    .line 2144
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2146
    :cond_58
    :goto_38
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_59

    .line 2147
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v1, v4, v3

    .line 2148
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2149
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2146
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 2152
    :cond_59
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v1, v4, v3

    .line 2153
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2154
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 2155
    goto/16 :goto_43

    .line 2134
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :sswitch_53
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    .line 2135
    goto/16 :goto_43

    .line 2130
    :sswitch_54
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    .line 2131
    goto/16 :goto_43

    .line 2126
    :sswitch_55
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    .line 2127
    goto/16 :goto_43

    .line 2122
    :sswitch_56
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    .line 2123
    goto/16 :goto_43

    .line 2118
    :sswitch_57
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    .line 2119
    goto/16 :goto_43

    .line 2114
    :sswitch_58
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    .line 2115
    goto/16 :goto_43

    .line 2110
    :sswitch_59
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    .line 2111
    goto/16 :goto_43

    .line 2106
    :sswitch_5a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    .line 2107
    goto/16 :goto_43

    .line 2102
    :sswitch_5b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    .line 2103
    goto/16 :goto_43

    .line 2098
    :sswitch_5c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    .line 2099
    goto/16 :goto_43

    .line 2094
    :sswitch_5d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    .line 2095
    goto/16 :goto_43

    .line 2090
    :sswitch_5e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    .line 2091
    goto/16 :goto_43

    .line 2086
    :sswitch_5f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    .line 2087
    goto/16 :goto_43

    .line 2082
    :sswitch_60
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    .line 2083
    goto/16 :goto_43

    .line 2078
    :sswitch_61
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    .line 2079
    goto/16 :goto_43

    .line 2058
    :sswitch_62
    const/16 v2, 0x9a

    .line 2059
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2060
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-nez v3, :cond_5a

    move v3, v1

    goto :goto_39

    :cond_5a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v3, v3

    .line 2061
    .restart local v3    # "i":I
    :goto_39
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 2063
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v3, :cond_5b

    .line 2064
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2066
    :cond_5b
    :goto_3a
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_5c

    .line 2067
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v1, v4, v3

    .line 2068
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2069
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2066
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 2072
    :cond_5c
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v1, v4, v3

    .line 2073
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2074
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 2075
    goto/16 :goto_43

    .line 2038
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :sswitch_63
    const/16 v2, 0x92

    .line 2039
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2040
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-nez v3, :cond_5d

    move v3, v1

    goto :goto_3b

    :cond_5d
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v3, v3

    .line 2041
    .restart local v3    # "i":I
    :goto_3b
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 2043
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_5e

    .line 2044
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2046
    :cond_5e
    :goto_3c
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_5f

    .line 2047
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v1, v4, v3

    .line 2048
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2049
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2046
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 2052
    :cond_5f
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v1, v4, v3

    .line 2053
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2054
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 2055
    goto/16 :goto_43

    .line 2018
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :sswitch_64
    const/16 v2, 0x8a

    .line 2019
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2020
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-nez v3, :cond_60

    move v3, v1

    goto :goto_3d

    :cond_60
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v3, v3

    .line 2021
    .restart local v3    # "i":I
    :goto_3d
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 2023
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v3, :cond_61

    .line 2024
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2026
    :cond_61
    :goto_3e
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_62

    .line 2027
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v1, v4, v3

    .line 2028
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2029
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2026
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 2032
    :cond_62
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v1, v4, v3

    .line 2033
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2034
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 2035
    goto/16 :goto_43

    .line 1998
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :sswitch_65
    const/16 v2, 0x82

    .line 1999
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2000
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-nez v3, :cond_63

    move v3, v1

    goto :goto_3f

    :cond_63
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v3, v3

    .line 2001
    .restart local v3    # "i":I
    :goto_3f
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 2003
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_64

    .line 2004
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2006
    :cond_64
    :goto_40
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_65

    .line 2007
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v1, v4, v3

    .line 2008
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2009
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2006
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 2012
    :cond_65
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v1, v4, v3

    .line 2013
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2014
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 2015
    goto/16 :goto_43

    .line 1994
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :sswitch_66
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    .line 1995
    goto/16 :goto_43

    .line 1990
    :sswitch_67
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    .line 1991
    goto/16 :goto_43

    .line 1986
    :sswitch_68
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    .line 1987
    goto/16 :goto_43

    .line 1982
    :sswitch_69
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    .line 1983
    goto/16 :goto_43

    .line 1978
    :sswitch_6a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    .line 1979
    goto/16 :goto_43

    .line 1974
    :sswitch_6b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    .line 1975
    goto/16 :goto_43

    .line 1970
    :sswitch_6c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    .line 1971
    goto/16 :goto_43

    .line 1966
    :sswitch_6d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    .line 1967
    goto/16 :goto_43

    .line 1962
    :sswitch_6e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    .line 1963
    goto :goto_43

    .line 1958
    :sswitch_6f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    .line 1959
    goto :goto_43

    .line 1954
    :sswitch_70
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    .line 1955
    goto :goto_43

    .line 1950
    :sswitch_71
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    .line 1951
    goto :goto_43

    .line 1946
    :sswitch_72
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    .line 1947
    goto :goto_43

    .line 1942
    :sswitch_73
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    .line 1943
    goto :goto_43

    .line 1922
    :sswitch_74
    const/16 v2, 0xa

    .line 1923
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1924
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-nez v3, :cond_66

    move v3, v1

    goto :goto_41

    :cond_66
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v3, v3

    .line 1925
    .restart local v3    # "i":I
    :goto_41
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    .line 1927
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    if-eqz v3, :cond_67

    .line 1928
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1930
    :cond_67
    :goto_42
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_68

    .line 1931
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;-><init>()V

    aput-object v1, v4, v3

    .line 1932
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1933
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1930
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 1936
    :cond_68
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;-><init>()V

    aput-object v1, v4, v3

    .line 1937
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1938
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    .line 1939
    goto :goto_43

    .line 1914
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    :sswitch_75
    return-object p0

    .line 2936
    .end local v0    # "tag":I
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
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 749
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 750
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    aget-object v2, v2, v0

    .line 751
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    if-eqz v2, :cond_0

    .line 752
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 749
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    if-eqz v0, :cond_2

    .line 757
    const/4 v0, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 759
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    if-eqz v0, :cond_3

    .line 760
    const/4 v0, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 762
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    if-eqz v0, :cond_4

    .line 763
    const/4 v0, 0x4

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 765
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    if-eqz v0, :cond_5

    .line 766
    const/4 v0, 0x5

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 768
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    if-eqz v0, :cond_6

    .line 769
    const/4 v0, 0x6

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 771
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    if-eqz v0, :cond_7

    .line 772
    const/4 v0, 0x7

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 774
    :cond_7
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    if-eqz v0, :cond_8

    .line 775
    const/16 v0, 0x8

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 777
    :cond_8
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    if-eqz v0, :cond_9

    .line 778
    const/16 v0, 0x9

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 780
    :cond_9
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    if-eqz v0, :cond_a

    .line 781
    const/16 v0, 0xa

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 783
    :cond_a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    if-eqz v0, :cond_b

    .line 784
    const/16 v0, 0xb

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 786
    :cond_b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    if-eqz v0, :cond_c

    .line 787
    const/16 v0, 0xc

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 789
    :cond_c
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    if-eqz v0, :cond_d

    .line 790
    const/16 v0, 0xd

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 792
    :cond_d
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    if-eqz v0, :cond_e

    .line 793
    const/16 v0, 0xe

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 795
    :cond_e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    if-eqz v0, :cond_f

    .line 796
    const/16 v0, 0xf

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 798
    :cond_f
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v0, v0

    if-lez v0, :cond_11

    .line 799
    move v0, v1

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_11

    .line 800
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v2, v2, v0

    .line 801
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v2, :cond_10

    .line 802
    const/16 v3, 0x10

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 799
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 806
    .end local v0    # "i":I
    :cond_11
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v0, v0

    if-lez v0, :cond_13

    .line 807
    move v0, v1

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_13

    .line 808
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v2, v2, v0

    .line 809
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v2, :cond_12

    .line 810
    const/16 v3, 0x11

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 807
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 814
    .end local v0    # "i":I
    :cond_13
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v0, v0

    if-lez v0, :cond_15

    .line 815
    move v0, v1

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_15

    .line 816
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v2, v2, v0

    .line 817
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v2, :cond_14

    .line 818
    const/16 v3, 0x12

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 815
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 822
    .end local v0    # "i":I
    :cond_15
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v0, v0

    if-lez v0, :cond_17

    .line 823
    move v0, v1

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_17

    .line 824
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v2, v2, v0

    .line 825
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v2, :cond_16

    .line 826
    const/16 v3, 0x13

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 823
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 830
    .end local v0    # "i":I
    :cond_17
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    if-eqz v0, :cond_18

    .line 831
    const/16 v0, 0x14

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 833
    :cond_18
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    if-eqz v0, :cond_19

    .line 834
    const/16 v0, 0x15

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 836
    :cond_19
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    if-eqz v0, :cond_1a

    .line 837
    const/16 v0, 0x16

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 839
    :cond_1a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    if-eqz v0, :cond_1b

    .line 840
    const/16 v0, 0x17

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 842
    :cond_1b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    if-eqz v0, :cond_1c

    .line 843
    const/16 v0, 0x18

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 845
    :cond_1c
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    if-eqz v0, :cond_1d

    .line 846
    const/16 v0, 0x19

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 848
    :cond_1d
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    if-eqz v0, :cond_1e

    .line 849
    const/16 v0, 0x1a

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 851
    :cond_1e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    if-eqz v0, :cond_1f

    .line 852
    const/16 v0, 0x1b

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 854
    :cond_1f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    if-eqz v0, :cond_20

    .line 855
    const/16 v0, 0x1c

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 857
    :cond_20
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    if-eqz v0, :cond_21

    .line 858
    const/16 v0, 0x1d

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 860
    :cond_21
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    if-eqz v0, :cond_22

    .line 861
    const/16 v0, 0x1e

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 863
    :cond_22
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    if-eqz v0, :cond_23

    .line 864
    const/16 v0, 0x1f

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 866
    :cond_23
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    if-eqz v0, :cond_24

    .line 867
    const/16 v0, 0x20

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 869
    :cond_24
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    if-eqz v0, :cond_25

    .line 870
    const/16 v0, 0x21

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 872
    :cond_25
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    if-eqz v0, :cond_26

    .line 873
    const/16 v0, 0x22

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 875
    :cond_26
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v0, v0

    if-lez v0, :cond_28

    .line 876
    move v0, v1

    .restart local v0    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v2, v2

    if-ge v0, v2, :cond_28

    .line 877
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v2, v2, v0

    .line 878
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    if-eqz v2, :cond_27

    .line 879
    const/16 v3, 0x23

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 876
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 883
    .end local v0    # "i":I
    :cond_28
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    if-eqz v0, :cond_29

    .line 884
    const/16 v0, 0x24

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 886
    :cond_29
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    if-eqz v0, :cond_2a

    .line 887
    const/16 v0, 0x25

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 889
    :cond_2a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    if-eqz v0, :cond_2b

    .line 890
    const/16 v0, 0x26

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 892
    :cond_2b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    if-eqz v0, :cond_2c

    .line 893
    const/16 v0, 0x27

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 895
    :cond_2c
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    if-eqz v0, :cond_2d

    .line 896
    const/16 v0, 0x28

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 898
    :cond_2d
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    if-eqz v0, :cond_2e

    .line 899
    const/16 v0, 0x29

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 901
    :cond_2e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    if-eqz v0, :cond_2f

    .line 902
    const/16 v0, 0x2a

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 904
    :cond_2f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    if-eqz v0, :cond_30

    .line 905
    const/16 v0, 0x2b

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 907
    :cond_30
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    if-eqz v0, :cond_31

    .line 908
    const/16 v0, 0x2c

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 910
    :cond_31
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    if-eqz v0, :cond_32

    .line 911
    const/16 v0, 0x2d

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 913
    :cond_32
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    if-eqz v0, :cond_33

    .line 914
    const/16 v0, 0x2e

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 916
    :cond_33
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v0, v0

    if-lez v0, :cond_35

    .line 917
    move v0, v1

    .restart local v0    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v2, v2

    if-ge v0, v2, :cond_35

    .line 918
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    aget-object v2, v2, v0

    .line 919
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    if-eqz v2, :cond_34

    .line 920
    const/16 v3, 0x2f

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 917
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 924
    .end local v0    # "i":I
    :cond_35
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v0, v0

    if-lez v0, :cond_37

    .line 925
    move v0, v1

    .restart local v0    # "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v2, v2

    if-ge v0, v2, :cond_37

    .line 926
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    aget-object v2, v2, v0

    .line 927
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    if-eqz v2, :cond_36

    .line 928
    const/16 v3, 0x30

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 925
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 932
    .end local v0    # "i":I
    :cond_37
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v0, v0

    if-lez v0, :cond_39

    .line 933
    move v0, v1

    .restart local v0    # "i":I
    :goto_8
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_39

    .line 934
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    aget-object v2, v2, v0

    .line 935
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    if-eqz v2, :cond_38

    .line 936
    const/16 v3, 0x31

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 933
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 940
    .end local v0    # "i":I
    :cond_39
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v0, v0

    if-lez v0, :cond_3b

    .line 941
    move v0, v1

    .restart local v0    # "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v2, v2

    if-ge v0, v2, :cond_3b

    .line 942
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    aget-object v2, v2, v0

    .line 943
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    if-eqz v2, :cond_3a

    .line 944
    const/16 v3, 0x32

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 941
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 948
    .end local v0    # "i":I
    :cond_3b
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v0, v0

    if-lez v0, :cond_3d

    .line 949
    move v0, v1

    .restart local v0    # "i":I
    :goto_a
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v2, v2

    if-ge v0, v2, :cond_3d

    .line 950
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v2, v2, v0

    .line 951
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    if-eqz v2, :cond_3c

    .line 952
    const/16 v3, 0x33

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 949
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 956
    .end local v0    # "i":I
    :cond_3d
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v0, v0

    if-lez v0, :cond_3f

    .line 957
    move v0, v1

    .restart local v0    # "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v2, v2

    if-ge v0, v2, :cond_3f

    .line 958
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    aget-object v2, v2, v0

    .line 959
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    if-eqz v2, :cond_3e

    .line 960
    const/16 v3, 0x34

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 957
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 964
    .end local v0    # "i":I
    :cond_3f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    if-eqz v0, :cond_40

    .line 965
    const/16 v0, 0x35

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 967
    :cond_40
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    if-eqz v0, :cond_41

    .line 968
    const/16 v0, 0x36

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 970
    :cond_41
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    if-eqz v0, :cond_42

    .line 971
    const/16 v0, 0x37

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 973
    :cond_42
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    if-eqz v0, :cond_43

    .line 974
    const/16 v0, 0x38

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 976
    :cond_43
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-eqz v0, :cond_44

    .line 977
    const/16 v0, 0x39

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 979
    :cond_44
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    if-eqz v0, :cond_45

    .line 980
    const/16 v0, 0x3a

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 982
    :cond_45
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    if-eqz v0, :cond_46

    .line 983
    const/16 v0, 0x3b

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 985
    :cond_46
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    if-eqz v0, :cond_47

    .line 986
    const/16 v0, 0x3c

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 988
    :cond_47
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    if-eqz v0, :cond_48

    .line 989
    const/16 v0, 0x3d

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 991
    :cond_48
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    if-eqz v0, :cond_49

    .line 992
    const/16 v0, 0x3e

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 994
    :cond_49
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    if-eqz v0, :cond_4a

    .line 995
    const/16 v0, 0x3f

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 997
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_4c

    .line 998
    move v0, v1

    .restart local v0    # "i":I
    :goto_c
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_4c

    .line 999
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1000
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_4b

    .line 1001
    const/16 v3, 0x40

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 998
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1005
    .end local v0    # "i":I
    :cond_4c
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_4e

    .line 1006
    move v0, v1

    .restart local v0    # "i":I
    :goto_d
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_4e

    .line 1007
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1008
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_4d

    .line 1009
    const/16 v3, 0x41

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1006
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1013
    .end local v0    # "i":I
    :cond_4e
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_50

    .line 1014
    move v0, v1

    .restart local v0    # "i":I
    :goto_e
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_50

    .line 1015
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1016
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_4f

    .line 1017
    const/16 v3, 0x42

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1014
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1021
    .end local v0    # "i":I
    :cond_50
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_52

    .line 1022
    move v0, v1

    .restart local v0    # "i":I
    :goto_f
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_52

    .line 1023
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1024
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_51

    .line 1025
    const/16 v3, 0x43

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1022
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1029
    .end local v0    # "i":I
    :cond_52
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_54

    .line 1030
    move v0, v1

    .restart local v0    # "i":I
    :goto_10
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_54

    .line 1031
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1032
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_53

    .line 1033
    const/16 v3, 0x44

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1030
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1037
    .end local v0    # "i":I
    :cond_54
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_56

    .line 1038
    move v0, v1

    .restart local v0    # "i":I
    :goto_11
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_56

    .line 1039
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1040
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_55

    .line 1041
    const/16 v3, 0x45

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1038
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1045
    .end local v0    # "i":I
    :cond_56
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_58

    .line 1046
    move v0, v1

    .restart local v0    # "i":I
    :goto_12
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_58

    .line 1047
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1048
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_57

    .line 1049
    const/16 v3, 0x46

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1046
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1053
    .end local v0    # "i":I
    :cond_58
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_5a

    .line 1054
    move v0, v1

    .restart local v0    # "i":I
    :goto_13
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_5a

    .line 1055
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1056
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_59

    .line 1057
    const/16 v3, 0x47

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1054
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1061
    .end local v0    # "i":I
    :cond_5a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_5c

    .line 1062
    move v0, v1

    .restart local v0    # "i":I
    :goto_14
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_5c

    .line 1063
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1064
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_5b

    .line 1065
    const/16 v3, 0x48

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1062
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1069
    .end local v0    # "i":I
    :cond_5c
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_5e

    .line 1070
    move v0, v1

    .restart local v0    # "i":I
    :goto_15
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_5e

    .line 1071
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1072
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_5d

    .line 1073
    const/16 v3, 0x49

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1070
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1077
    .end local v0    # "i":I
    :cond_5e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    if-eqz v0, :cond_5f

    .line 1078
    const/16 v0, 0x4a

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1080
    :cond_5f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    if-eqz v0, :cond_60

    .line 1081
    const/16 v0, 0x4b

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1083
    :cond_60
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    if-eqz v0, :cond_61

    .line 1084
    const/16 v0, 0x4c

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1086
    :cond_61
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v0, v0

    if-lez v0, :cond_63

    .line 1087
    move v0, v1

    .restart local v0    # "i":I
    :goto_16
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v2, v2

    if-ge v0, v2, :cond_63

    .line 1088
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v2, v2, v0

    .line 1089
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    if-eqz v2, :cond_62

    .line 1090
    const/16 v3, 0x4d

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1087
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1094
    .end local v0    # "i":I
    :cond_63
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v0, v0

    if-lez v0, :cond_65

    .line 1095
    move v0, v1

    .restart local v0    # "i":I
    :goto_17
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v2, v2

    if-ge v0, v2, :cond_65

    .line 1096
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v2, v2, v0

    .line 1097
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    if-eqz v2, :cond_64

    .line 1098
    const/16 v3, 0x4e

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1095
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1102
    .end local v0    # "i":I
    :cond_65
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    if-eqz v0, :cond_66

    .line 1103
    const/16 v0, 0x4f

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1105
    :cond_66
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    if-eqz v0, :cond_67

    .line 1106
    const/16 v0, 0x50

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1108
    :cond_67
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    if-eqz v0, :cond_68

    .line 1109
    const/16 v0, 0x51

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1111
    :cond_68
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    if-eqz v0, :cond_69

    .line 1112
    const/16 v0, 0x52

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1114
    :cond_69
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_6b

    .line 1115
    move v0, v1

    .restart local v0    # "i":I
    :goto_18
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_6b

    .line 1116
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1117
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_6a

    .line 1118
    const/16 v3, 0x53

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1115
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1122
    .end local v0    # "i":I
    :cond_6b
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_6d

    .line 1123
    move v0, v1

    .restart local v0    # "i":I
    :goto_19
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_6d

    .line 1124
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1125
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_6c

    .line 1126
    const/16 v3, 0x54

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1123
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1130
    .end local v0    # "i":I
    :cond_6d
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_6f

    .line 1131
    move v0, v1

    .restart local v0    # "i":I
    :goto_1a
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_6f

    .line 1132
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1133
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_6e

    .line 1134
    const/16 v3, 0x55

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1131
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 1138
    .end local v0    # "i":I
    :cond_6f
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_71

    .line 1139
    move v0, v1

    .restart local v0    # "i":I
    :goto_1b
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_71

    .line 1140
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1141
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_70

    .line 1142
    const/16 v3, 0x56

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1139
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1146
    .end local v0    # "i":I
    :cond_71
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_73

    .line 1147
    move v0, v1

    .restart local v0    # "i":I
    :goto_1c
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_73

    .line 1148
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1149
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_72

    .line 1150
    const/16 v3, 0x57

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1147
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 1154
    .end local v0    # "i":I
    :cond_73
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_75

    .line 1155
    move v0, v1

    .restart local v0    # "i":I
    :goto_1d
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_75

    .line 1156
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1157
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_74

    .line 1158
    const/16 v3, 0x58

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1155
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1162
    .end local v0    # "i":I
    :cond_75
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v0, v0

    if-lez v0, :cond_77

    .line 1163
    move v0, v1

    .restart local v0    # "i":I
    :goto_1e
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v2, v2

    if-ge v0, v2, :cond_77

    .line 1164
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    aget-object v2, v2, v0

    .line 1165
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    if-eqz v2, :cond_76

    .line 1166
    const/16 v3, 0x59

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1163
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1170
    .end local v0    # "i":I
    :cond_77
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v0, v0

    if-lez v0, :cond_79

    .line 1171
    move v0, v1

    .restart local v0    # "i":I
    :goto_1f
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v2, v2

    if-ge v0, v2, :cond_79

    .line 1172
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    aget-object v2, v2, v0

    .line 1173
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    if-eqz v2, :cond_78

    .line 1174
    const/16 v3, 0x5a

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1171
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1178
    .end local v0    # "i":I
    :cond_79
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    if-eqz v0, :cond_7a

    .line 1179
    const/16 v0, 0x5b

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1181
    :cond_7a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    if-eqz v0, :cond_7b

    .line 1182
    const/16 v0, 0x5c

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1184
    :cond_7b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    if-eqz v0, :cond_7c

    .line 1185
    const/16 v0, 0x5d

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1187
    :cond_7c
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    if-eqz v0, :cond_7d

    .line 1188
    const/16 v0, 0x5e

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1190
    :cond_7d
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_7f

    .line 1191
    nop

    .local v1, "i":I
    :goto_20
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-ge v0, v1, :cond_7f

    .line 1192
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v1, v1, v0

    .line 1193
    .local v1, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v1, :cond_7e

    .line 1194
    const/16 v2, 0x5f

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1191
    .end local v1    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_7e
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_20

    .line 1198
    .end local v1    # "i":I
    :cond_7f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    if-eqz v0, :cond_80

    .line 1199
    const/16 v0, 0x60

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1201
    :cond_80
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    if-eqz v0, :cond_81

    .line 1202
    const/16 v0, 0x61

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1204
    :cond_81
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    if-eqz v0, :cond_82

    .line 1205
    const/16 v0, 0x62

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1207
    :cond_82
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    if-eqz v0, :cond_83

    .line 1208
    const/16 v0, 0x63

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1210
    :cond_83
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    if-eqz v0, :cond_84

    .line 1211
    const/16 v0, 0x64

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1213
    :cond_84
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    if-eqz v0, :cond_85

    .line 1214
    const/16 v0, 0x65

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1216
    :cond_85
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    if-eqz v0, :cond_86

    .line 1217
    const/16 v0, 0x66

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1219
    :cond_86
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    if-eqz v0, :cond_87

    .line 1220
    const/16 v0, 0x67

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1222
    :cond_87
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    if-eqz v0, :cond_88

    .line 1223
    const/16 v0, 0x68

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1225
    :cond_88
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    if-eqz v0, :cond_89

    .line 1226
    const/16 v0, 0x69

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1228
    :cond_89
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    if-eqz v0, :cond_8a

    .line 1229
    const/16 v0, 0x6a

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1231
    :cond_8a
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8b

    .line 1232
    const/16 v0, 0x6b

    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1234
    :cond_8b
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8c

    .line 1235
    const/16 v0, 0x6c

    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1237
    :cond_8c
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotHasDfsChannelScans:I

    if-eqz v0, :cond_8d

    .line 1238
    const/16 v0, 0x6d

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotHasDfsChannelScans:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1240
    :cond_8d
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    if-eqz v0, :cond_8e

    .line 1241
    const/16 v0, 0x6e

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1243
    :cond_8e
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    if-eqz v0, :cond_8f

    .line 1244
    const/16 v0, 0x6f

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1246
    :cond_8f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    if-eqz v0, :cond_90

    .line 1247
    const/16 v0, 0x70

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1249
    :cond_90
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    if-eqz v0, :cond_91

    .line 1250
    const/16 v0, 0x71

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1252
    :cond_91
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    if-eqz v0, :cond_92

    .line 1253
    const/16 v0, 0x72

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1255
    :cond_92
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    if-eqz v0, :cond_93

    .line 1256
    const/16 v0, 0x73

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1258
    :cond_93
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    if-eqz v0, :cond_94

    .line 1259
    const/16 v0, 0x74

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1261
    :cond_94
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 1262
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1264
    :cond_95
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1265
    return-void
.end method
