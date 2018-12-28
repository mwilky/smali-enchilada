.class public Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerImpl.java"

# interfaces
.implements Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;
.implements Lcom/android/systemui/ConfigurationChangedReceiver;
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/NetworkController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;
    }
.end annotation


# static fields
.field static final CHATTY:Z

.field static final DEBUG:Z

.field public static SOFTSIM_DISABLE:I

.field public static SOFTSIM_ENABLE:I

.field public static SOFTSIM_ENABLE_PILOT:I

.field private static final SOFTSIM_URL:Landroid/net/Uri;


# instance fields
.field private final mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

.field private mAirplaneMode:Z

.field private final mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private final mConnectedTransports:Ljava/util/BitSet;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUserId:I

.field private final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field private final mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

.field private mDemoInetCondition:Z

.field private mDemoMode:Z

.field private mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

.field private mEmergencySource:I

.field final mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

.field private final mHasMobileDataFeature:Z

.field private mHasNoSubs:Z

.field private mInetCondition:Z

.field private mIsEmergency:Z

.field private mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field private mLTEstatus:[Z

.field mLastServiceState:Landroid/telephony/ServiceState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mListening:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLocale:Ljava/util/Locale;

.field final mMobileSignalControllers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field private mProvisionState:[I

.field private final mReceiverHandler:Landroid/os/Handler;

.field private final mRegisterListeners:Ljava/lang/Runnable;

.field private mSimDetected:Z

.field private final mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

.field private mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mUserSetup:Z

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mValidatedTransports:Ljava/util/BitSet;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field final mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private softSimState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    const-string v0, "NetworkControllerChat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_DISABLE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_ENABLE:I

    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_ENABLE_PILOT:I

    const-string v0, "content://com.redteamobile.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_URL:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/settingslib/net/DataUsageController;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p12

    invoke-direct/range {p0 .. p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    const/4 v1, 0x0

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$8;

    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$8;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRegisterListeners:Ljava/lang/Runnable;

    const/4 v1, 0x6

    new-array v1, v1, [Z

    fill-array-data v1, :array_0

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEstatus:[Z

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEstatus:[Z

    array-length v1, v1

    new-array v1, v1, [Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    new-array v1, v1, [I

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->softSimState:[I

    iput-object v7, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v9, p6

    iput-object v9, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    new-instance v1, Landroid/os/Handler;

    move-object/from16 v10, p7

    invoke-direct {v1, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    move-object/from16 v11, p8

    iput-object v11, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    invoke-direct {v1, v7}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-object/from16 v12, p5

    iput-object v12, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v13, p11

    iput-object v13, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    move-object/from16 v14, p2

    iput-object v14, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v15, p3

    iput-object v15, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v5, p4

    iput-object v5, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v4, p9

    iput-object v4, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    move-object/from16 v3, p10

    iput-object v3, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0, v6}, Lcom/android/settingslib/net/DataUsageController;->setNetworkController(Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;)V

    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;

    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->setCallback(Lcom/android/settingslib/net/DataUsageController$Callback;)V

    new-instance v2, Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-boolean v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v3, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v5, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    move/from16 v16, v0

    move-object v0, v2

    move-object v7, v2

    move/from16 v2, v16

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/WifiSignalController;-><init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/wifi/WifiManager;)V

    iput-object v7, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    new-instance v0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-direct {v0, v1, v2, v6}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/content/Context;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;

    invoke-direct {v0, v6, v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    invoke-interface {v8, v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->initProvistionState()V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 15

    move-object v13, p0

    move-object/from16 v14, p1

    const-string v0, "connectivity"

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/ConnectivityManager;

    const-string v0, "phone"

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "wifi"

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v6

    new-instance v8, Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/policy/CallbackHandler;-><init>()V

    new-instance v9, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-direct {v9, v14}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {v10, v14}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-direct {v11}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;-><init>()V

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v7, p2

    move-object/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/settingslib/net/DataUsageController;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    iget-object v0, v13, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    iget-object v1, v13, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRegisterListeners:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onUserSwitched(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setUserSetupComplete(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->registerListeners()V

    return-void
.end method

.method private addSignalController(II)Landroid/telephony/SubscriptionInfo;
    .locals 25

    move-object/from16 v10, p0

    new-instance v0, Landroid/telephony/SubscriptionInfo;

    const-string v13, ""

    const-string v15, ""

    const-string v16, ""

    const-string v19, ""

    const-string v24, ""

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v11, v0

    move/from16 v12, p1

    move/from16 v14, p2

    invoke-direct/range {v11 .. v24}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;)V

    new-instance v12, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v3, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v4, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v5, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v8, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    move-object v0, v12

    move-object v6, v10

    move-object v7, v11

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    return-object v11
.end method

.method private checkVirtualSimcard()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getVirtualIccid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    const-string v5, "1"

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getVirtualPilot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sget v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_DISABLE:I

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    sget v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_ENABLE_PILOT:I

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    sget v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_ENABLE:I

    :cond_2
    :goto_2
    const-string v7, "NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkVirtualSimcard slotId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " virtualSimState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->softSimState:[I

    aget v7, v7, v1

    if-eq v6, v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->softSimState:[I

    aput v6, v7, v1

    sget v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_ENABLE_PILOT:I

    if-ne v6, v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v2}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :cond_3
    const/4 v3, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->softSimState:[I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setVirtualSimstate([I)V

    :cond_6
    return-void
.end method

.method private static final emergencyToString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x12c

    if-le p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ASSUMED_VOICE_CONTROLLER("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit16 v1, p0, -0xc8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-le p0, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NO_SUB("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit16 v1, p0, -0x12c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0xc8

    if-le p0, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VOICE_CONTROLLER("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit16 v1, p0, -0xc8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v0, 0x64

    if-le p0, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FIRST_CONTROLLER("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p0, -0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-nez p0, :cond_4

    const-string v0, "NO_CONTROLLERS"

    return-object v0

    :cond_4
    const-string v0, "UNKNOWN_SOURCE"

    return-object v0
.end method

.method private getDataController()Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultDataSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkController"

    const-string v2, "No data sim selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    return-object v1

    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find controller for data sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    return-object v1
.end method

.method private getMultiLTEIcons([I)[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .locals 11

    array-length v0, p1

    new-array v0, v0, [I

    array-length v1, p1

    new-array v1, v1, [Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    array-length v5, v5

    const/4 v6, 0x1

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    aget v5, v5, v2

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-le v4, v6, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-le v2, v6, :cond_2

    move v2, v6

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-lez v4, :cond_9

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportShowVoLTE()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportShowHD()Z

    move-result v5

    if-eqz v5, :cond_5

    aget v5, p1, v3

    if-nez v5, :cond_3

    const v5, 0x7f08061e

    aput v5, v0, v3

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/util/OPUtils;->isSupportMultiLTEstatus(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    aget v5, p1, v3

    if-lez v5, :cond_4

    aget v5, p1, v3

    sget-object v7, Lcom/android/systemui/statusbar/policy/SignalIcons;->HD_ICONS:[I

    array-length v7, v7

    if-gt v5, v7, :cond_4

    sget-object v5, Lcom/android/systemui/statusbar/policy/SignalIcons;->HD_ICONS:[I

    aget v7, p1, v3

    sub-int/2addr v7, v6

    aget v5, v5, v7

    aput v5, v0, v3

    goto :goto_2

    :cond_4
    const v5, 0x7f08061a

    aput v5, v0, v3

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/util/OPUtils;->isSupportMultiLTEstatus(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    aget v5, p1, v3

    if-lez v5, :cond_6

    aget v5, p1, v3

    sget-object v7, Lcom/android/systemui/statusbar/policy/SignalIcons;->VOLTE_ICONS:[I

    array-length v7, v7

    if-gt v5, v7, :cond_6

    sget-object v5, Lcom/android/systemui/statusbar/policy/SignalIcons;->VOLTE_ICONS:[I

    aget v7, p1, v3

    sub-int/2addr v7, v6

    aget v5, v5, v7

    aput v5, v0, v3

    goto :goto_2

    :cond_6
    aget v5, p1, v3

    if-lez v5, :cond_7

    const v5, 0x7f080864

    aput v5, v0, v3

    :cond_7
    :goto_2
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportShowVoWifi()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/util/OPUtils;->isSupportMultiLTEstatus(Landroid/content/Context;)Z

    move-result v5

    const/4 v7, 0x2

    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    aget v5, p1, v7

    if-lez v5, :cond_8

    aget v5, p1, v7

    sget-object v8, Lcom/android/systemui/statusbar/policy/SignalIcons;->VOWIFI_ICONS:[I

    array-length v8, v8

    if-gt v5, v8, :cond_8

    sget-object v5, Lcom/android/systemui/statusbar/policy/SignalIcons;->VOWIFI_ICONS:[I

    aget v8, p1, v7

    sub-int/2addr v8, v6

    aget v5, v5, v8

    aput v5, v0, v7

    goto :goto_3

    :cond_8
    aget v5, p1, v7

    if-lez v5, :cond_9

    const v5, 0x7f080868

    aput v5, v0, v7

    :cond_9
    :goto_3
    move v5, v3

    :goto_4
    array-length v7, v1

    if-ge v5, v7, :cond_b

    aget v7, v0, v5

    if-lez v7, :cond_a

    move v7, v6

    goto :goto_5

    :cond_a
    move v7, v3

    :goto_5
    new-instance v8, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    aget v9, v0, v5

    const/4 v10, 0x0

    invoke-direct {v8, v7, v9, v10}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    aput-object v8, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    return-object v1
.end method

.method private getSlotProvisionStatus(II)I
    .locals 5

    move v0, p2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-nez v1, :cond_0

    const-string v1, "extphone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    invoke-interface {v2, p1}, Lorg/codeaurora/internal/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    const-string v1, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get pref, slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    const-string v1, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get pref, slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    const-string v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSlotProvisionStatus slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private handleSetUserSetupComplete(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserSetup:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserSetup:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setUserSetupComplete(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private hasAnySim()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    if-eqz v3, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private initProvistionState()V
    .locals 5

    const-string v0, "NetworkController"

    const-string v1, "init provision"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getSlotProvisionStatus(II)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onProvisionChange(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static synthetic lambda$setUserSetupComplete$0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->handleSetUserSetupComplete(Z)V

    return-void
.end method

.method private notifyAllListeners()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListeners()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->notifyListeners()V

    return-void
.end method

.method private notifyListeners()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0805c4

    const v5, 0x7f11004a

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNoSims(ZZ)V

    return-void
.end method

.method private onProvisionChange(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProvisionChange slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " provi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    aput p2, v0, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onLTEStatusUpdate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setProvision(II)V

    :cond_1
    return-void
.end method

.method private onUserSwitched(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->onUserSwitched(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    return-void
.end method

.method private pushConnectivityToSignals()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    :cond_1
    return-void
.end method

.method private refreshLocale()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    :cond_0
    return-void
.end method

.method private registerListeners()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerListener()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    return-void
.end method

.method private setUserSetupComplete(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$ip_KPuTyKF5u8IR4L3OPJ6WObYU;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$ip_KPuTyKF5u8IR4L3OPJ6WObYU;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unregisterListeners()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    nop

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterListener()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateAirplaneMode(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    nop

    :goto_1
    move v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setAirplaneMode(Z)V

    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    :cond_3
    return-void
.end method

.method private updateConnectivity()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget v8, v5, v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    const/16 v9, 0x10

    invoke-virtual {v4, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConnectivity: mConnectedTransports="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConnectivity: mValidatedTransports="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->pushConnectivityToSignals()V

    return-void
.end method

.method private updateMobileControllers()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->doUpdateMobileControllers()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSubs(Ljava/util/List;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0805c4

    const v4, 0x7f11004a

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNoSims(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setLTEStatus([Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    nop

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    aget v1, v1, v0

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setProvision(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->softSimState:[I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setVirtualSimstate([I)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setEmergencyCallsOnly(Z)V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const-string v3, "enter"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "NetworkController"

    const-string v5, "Entering demo mode"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->unregisterListeners()V

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    const-string v4, "DemoMode"

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    goto/16 :goto_25

    :cond_1
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    const-string v3, "exit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "NetworkController"

    const-string v4, "Exiting demo mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    nop

    :goto_0
    move v3, v5

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->resetLastState()V

    add-int/lit8 v5, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->resetLastState()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRegisterListeners:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    goto/16 :goto_25

    :cond_4
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v3, :cond_43

    const-string v3, "network"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    const-string v3, "airplane"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v6, "show"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    new-instance v8, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    const v9, 0x7f0805c4

    const v10, 0x7f11004a

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v8, v6, v9, v10, v11}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    :cond_5
    const-string v6, "fully"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    new-instance v7, Ljava/util/BitSet;

    invoke-direct {v7}, Ljava/util/BitSet;-><init>()V

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget v8, v8, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTransportType:I

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    :cond_6
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v8, v7, v7}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    move v8, v5

    :goto_1
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_8

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-boolean v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    if-eqz v10, :cond_7

    iget v10, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransportType:I

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    :cond_7
    invoke-virtual {v9, v7, v7}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_8
    const-string/jumbo v7, "wifi"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v9, 0x5fb5409

    const v10, 0x1af4e

    const/16 v11, 0xd25

    const/4 v12, 0x2

    if-eqz v7, :cond_12

    const-string v14, "show"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "level"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_b

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    const-string v5, "null"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, -0x1

    goto :goto_2

    :cond_9
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sget v17, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v8, v17, -0x1

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_2
    iput v5, v13, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v8, v8, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    if-ltz v8, :cond_a

    move v8, v4

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    :goto_3
    iput-boolean v8, v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    :cond_b
    const-string v5, "activity"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    if-eq v8, v11, :cond_e

    if-eq v8, v10, :cond_d

    if-eq v8, v9, :cond_c

    goto :goto_4

    :cond_c
    const-string v8, "inout"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x0

    goto :goto_5

    :cond_d
    const-string v8, "out"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    move v8, v12

    goto :goto_5

    :cond_e
    const-string v8, "in"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    move v8, v4

    goto :goto_5

    :cond_f
    :goto_4
    const/4 v8, -0x1

    :goto_5
    packed-switch v8, :pswitch_data_0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto :goto_7

    :pswitch_0
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v8, v12}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto :goto_6

    :pswitch_1
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v8, v4}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto :goto_6

    :pswitch_2
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    const/4 v13, 0x3

    invoke-virtual {v8, v13}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    nop

    :goto_6
    const/4 v13, 0x0

    :goto_7
    goto :goto_8

    :cond_10
    const/4 v13, 0x0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v8, v13}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    :goto_8
    const-string v8, "ssid"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-object v8, v13, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    :cond_11
    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-boolean v14, v13, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListeners()V

    :cond_12
    const-string v5, "sims"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x8

    if-eqz v5, :cond_14

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13, v4, v8}, Landroid/util/MathUtils;->constrain(III)I

    move-result v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-eq v13, v15, :cond_14

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v15}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCountMax()I

    move-result v15

    move/from16 v17, v15

    :goto_9
    move/from16 v18, v17

    add-int v12, v15, v13

    move/from16 v9, v18

    if-ge v9, v12, :cond_13

    invoke-direct {v0, v9, v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalController(II)Landroid/telephony/SubscriptionInfo;

    move-result-object v12

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v9, 0x1

    const v9, 0x5fb5409

    const/4 v12, 0x2

    goto :goto_9

    :cond_13
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v9, v14}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSubs(Ljava/util/List;)V

    const/4 v9, 0x0

    :goto_a
    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v9, v12, :cond_14

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V

    add-int/lit8 v9, v9, 0x1

    const v10, 0x1af4e

    goto :goto_a

    :cond_14
    const-string v9, "nosim"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_15

    const-string v10, "show"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    invoke-virtual {v10, v12, v13}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNoSims(ZZ)V

    :cond_15
    const-string v10, "mobile"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_42

    const-string v12, "show"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "datatype"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "slot"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_16

    const/4 v15, 0x0

    goto :goto_b

    :cond_16
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    :goto_b
    const/4 v11, 0x0

    invoke-static {v15, v11, v8}, Landroid/util/MathUtils;->constrain(III)I

    move-result v15

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_c
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-gt v8, v15, :cond_17

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    invoke-direct {v0, v8, v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalController(II)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    const/4 v4, 0x1

    const/16 v8, 0x8

    goto :goto_c

    :cond_17
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v4, v11}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSubs(Ljava/util/List;)V

    :cond_18
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v13, :cond_19

    const/4 v1, 0x1

    goto :goto_d

    :cond_19
    const/4 v1, 0x0

    :goto_d
    iput-boolean v1, v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v13, :cond_1a

    const/4 v8, 0x1

    goto :goto_e

    :cond_1a
    const/4 v8, 0x0

    :goto_e
    iput-boolean v8, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v13, :cond_1b

    const/4 v8, 0x1

    goto :goto_f

    :cond_1b
    const/4 v8, 0x0

    :goto_f
    iput-boolean v8, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v13, :cond_2a

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string v8, "1x"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_10

    :cond_1c
    const-string v8, "2g"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_10

    :cond_1d
    const-string v8, "3g"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_10

    :cond_1e
    const-string v8, "3g+"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_10

    :cond_1f
    const-string v8, "4g"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_10

    :cond_20
    const-string v8, "4g+"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_10

    :cond_21
    const-string v8, "e"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_10

    :cond_22
    const-string v8, "g"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_10

    :cond_23
    const-string v8, "h"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_10

    :cond_24
    const-string v8, "h+"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_10

    :cond_25
    const-string v8, "lte"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_10

    :cond_26
    const-string v8, "lte+"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_10

    :cond_27
    const-string v8, "dis"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_10

    :cond_28
    const-string v8, "4glte"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_10

    :cond_29
    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    :goto_10
    iput-object v8, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    :cond_2a
    const-string v1, "roam"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string v8, "show"

    move-object/from16 v19, v3

    const-string v3, "roam"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    goto :goto_11

    :cond_2b
    move-object/from16 v19, v3

    :goto_11
    const-string v1, "level"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string v8, "null"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    move-object/from16 v20, v1

    const/4 v1, -0x1

    goto :goto_12

    :cond_2c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v20, v1

    sget v1, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_12
    iput v1, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    if-ltz v3, :cond_2d

    const/4 v3, 0x1

    goto :goto_13

    :cond_2d
    const/4 v3, 0x0

    :goto_13
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    goto :goto_14

    :cond_2e
    move-object/from16 v20, v1

    :goto_14
    const-string v1, "stack"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b

    if-eqz v13, :cond_3b

    const-string v3, "show"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v8, v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v17

    move-object/from16 v29, v1

    move-object/from16 v1, v17

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v17

    move/from16 v30, v3

    move-object/from16 v3, v17

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-object/from16 v31, v5

    const-string v5, "1x"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v17, 0x13

    const/16 v18, 0xd

    const/16 v21, 0x7

    if-eqz v5, :cond_2f

    :goto_15
    move/from16 v23, v21

    goto/16 :goto_1a

    :cond_2f
    const-string v5, "g"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v23, 0x1

    goto :goto_1a

    :cond_30
    const-string v5, "2g"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    const/4 v5, 0x4

    :goto_16
    move/from16 v23, v5

    goto :goto_1a

    :cond_31
    const-string v5, "3g"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    const/16 v5, 0x11

    goto :goto_16

    :cond_32
    const-string v5, "4g"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    :goto_17
    move/from16 v23, v18

    goto :goto_1a

    :cond_33
    const-string v5, "4g+"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    :goto_18
    move/from16 v23, v17

    goto :goto_1a

    :cond_34
    const-string v5, "h"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    :goto_19
    const/16 v23, 0x8

    goto :goto_1a

    :cond_35
    const-string v5, "h+"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    goto :goto_19

    :cond_36
    const-string v5, "lte"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    goto :goto_17

    :cond_37
    const-string v5, "lte+"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    goto :goto_18

    :cond_38
    goto :goto_15

    :goto_1a
    move/from16 v24, v23

    const-string v5, "lte"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    const-string v5, "lte+"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    goto :goto_1b

    :cond_39
    const/16 v28, 0x0

    goto :goto_1c

    :cond_3a
    :goto_1b
    const/16 v28, 0x1

    :goto_1c
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-object/from16 v32, v6

    new-instance v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-object/from16 v21, v6

    move-object/from16 v22, v3

    move/from16 v25, v8

    move/from16 v26, v8

    move/from16 v27, v1

    invoke-direct/range {v21 .. v28}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;IIIIZZ)V

    iput-object v6, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_1d

    :cond_3b
    move-object/from16 v29, v1

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    :goto_1d
    const-string/jumbo v1, "virtual"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string v3, "show"

    const-string/jumbo v5, "virtual"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isVirtual:Z

    :cond_3c
    const-string v1, "activity"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v5, 0xd25

    if-eq v3, v5, :cond_3f

    const v5, 0x1af4e

    if-eq v3, v5, :cond_3e

    const v5, 0x5fb5409

    if-eq v3, v5, :cond_3d

    goto :goto_1e

    :cond_3d
    const-string v3, "inout"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    const/16 v16, 0x0

    goto :goto_1f

    :cond_3e
    const-string v3, "out"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    const/16 v16, 0x2

    goto :goto_1f

    :cond_3f
    const-string v3, "in"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    const/16 v16, 0x1

    goto :goto_1f

    :cond_40
    :goto_1e
    const/16 v16, -0x1

    :goto_1f
    packed-switch v16, :pswitch_data_1

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto :goto_21

    :pswitch_3
    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto :goto_20

    :pswitch_4
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto :goto_20

    :pswitch_5
    const/4 v3, 0x3

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    nop

    :goto_20
    const/4 v3, 0x0

    :goto_21
    goto :goto_22

    :cond_41
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    :goto_22
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v12, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V

    goto :goto_23

    :cond_42
    move-object/from16 v19, v3

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    const/4 v3, 0x0

    :goto_23
    const-string v1, "carriernetworkchange"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    const-string v4, "show"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    :goto_24
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_43

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setCarrierNetworkChangeMode(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_43
    :goto_25
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method doUpdateMobileControllers()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasCorrectMobileControllers(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSims()V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setCurrentSubscriptions(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSims()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  hasVoiceCallingFeature()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mConnectedTransports="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mValidatedTransports="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mAirplaneMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mLocale="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mLastServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mIsEmergency="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsEmergency:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mEmergencySource="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->emergencyToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    return-object v0
.end method

.method public getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    return-object v0
.end method

.method public getMobileDataController()Lcom/android/settingslib/net/DataUsageController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    return-object v0
.end method

.method public getMobileDataNetworkName()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataController()Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public getVirtualIccid(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slot=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_URL:Landroid/net/Uri;

    const-string v4, "slot"

    const-string v5, "iccid"

    const-string v6, "permit_package"

    const-string v7, "forbid_package"

    const-string v8, "pilot"

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "slot"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVirtualIccid SQLiteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Virtual sim slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " iccid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getVirtualPilot(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slot=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_URL:Landroid/net/Uri;

    const-string v4, "slot"

    const-string v5, "iccid"

    const-string v6, "permit_package"

    const-string v7, "forbid_package"

    const-string v8, "pilot"

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "slot"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVirtualIccid SQLiteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Virtual sim slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pilot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method handleConfigurationChanged()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    return-void
.end method

.method hasCorrectMobileControllers(Ljava/util/List;)Z
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-eq v4, v5, :cond_2

    const-string v0, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasCorrectMobileControllers SubId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " change from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public hasEmergencyCryptKeeperText()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    return v0
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    return v0
.end method

.method public hasVoiceCallingFeature()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmergencyOnly()Z
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-nez v5, :cond_3

    const/16 v1, 0x64

    iget-object v5, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found emergency "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_6

    const/16 v1, 0xc8

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting emergency from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    return v1

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v1, :cond_8

    const/16 v1, 0x190

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting assumed emergency from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    return v1

    :cond_8
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find controller for voice sub: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/16 v2, 0x12c

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    return v1
.end method

.method public isRadioOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLTEStatusUpdate()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, Z

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getLTEStatus()[Z

    move-result-object v6

    move v7, v3

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_2

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v8

    array-length v9, v2

    if-ge v8, v9, :cond_1

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v8

    aget-object v8, v2, v8

    aget-boolean v9, v6, v7

    aput-boolean v9, v8, v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    aget-object v4, v2, v3

    aget-boolean v4, v4, v3

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    aget-object v4, v2, v6

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_4

    aput v5, v0, v3

    goto :goto_2

    :cond_4
    aget-object v4, v2, v3

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_5

    aget-object v4, v2, v6

    aget-boolean v4, v4, v3

    if-nez v4, :cond_5

    aput v6, v0, v3

    goto :goto_2

    :cond_5
    aget-object v4, v2, v3

    aget-boolean v4, v4, v3

    if-nez v4, :cond_6

    aget-object v4, v2, v6

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_6

    aput v1, v0, v3

    :cond_6
    :goto_2
    aget-object v4, v2, v3

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_7

    aget-object v4, v2, v6

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_7

    aput v5, v0, v1

    goto :goto_3

    :cond_7
    aget-object v4, v2, v3

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_8

    aget-object v4, v2, v6

    aget-boolean v4, v4, v1

    if-nez v4, :cond_8

    aput v6, v0, v1

    goto :goto_3

    :cond_8
    aget-object v4, v2, v3

    aget-boolean v4, v4, v1

    if-nez v4, :cond_9

    aget-object v4, v2, v6

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_9

    aput v1, v0, v1

    :cond_9
    :goto_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v5, v3

    :goto_4
    array-length v6, v0

    if-ge v5, v6, :cond_a

    aget v6, v0, v5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getMultiLTEIcons([I)[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-result-object v5

    sget-boolean v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v6, :cond_b

    const-string v6, "NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " multiLTEstatus:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " ShowHD:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportShowHD()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    aget-object v6, v6, v3

    aget-object v3, v5, v3

    if-ne v6, v3, :cond_c

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    aget-object v3, v3, v1

    aget-object v1, v5, v1

    if-eq v3, v1, :cond_d

    :cond_c
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setLTEStatus([Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    :cond_d
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_1
    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_6
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_7
    const-string v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_8
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    const-string v1, "subscription"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    :pswitch_0
    const-string v1, "phone"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "newProvisionState"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProvisionChange provisionedState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onProvisionChange(II)V

    goto/16 :goto_3

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/policy/-$$Lambda$ybM43k5QVX_SxWbQACu1XwL3Knk;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ybM43k5QVX_SxWbQACu1XwL3Knk;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    goto :goto_3

    :pswitch_3
    const-string v1, "rebroadcastOnUnlock"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->initProvistionState()V

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->checkVirtualSimcard()V

    goto :goto_3

    :pswitch_4
    nop

    :goto_2
    move v1, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v3, v1, 0x1

    goto :goto_2

    :cond_5
    goto :goto_3

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    goto :goto_3

    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    goto :goto_3

    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->handleBroadcast(Landroid/content/Intent;)V

    :cond_8
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d6de25e -> :sswitch_8
        -0x5753691f -> :sswitch_7
        -0x45e5283a -> :sswitch_6
        -0x43dd7a3f -> :sswitch_5
        -0x402b4235 -> :sswitch_4
        -0xdb21ee7 -> :sswitch_3
        -0x18365bb -> :sswitch_2
        0x2524f753 -> :sswitch_1
        0x7a525f0b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method recalculateEmergency()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsEmergency:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsEmergency:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setEmergencyCallsOnly(Z)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;Z)V

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;Z)V

    return-void
.end method

.method setCurrentSubscriptions(Ljava/util/List;)V
    .locals 19
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v11, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v12, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v12, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    const/4 v0, 0x0

    :goto_1
    move v15, v0

    if-ge v15, v14, :cond_4

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v0

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    :cond_1
    new-instance v16, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v3, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v4, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v5, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    iget-object v8, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v17

    move-object/from16 v0, v16

    move-object v6, v10

    move v13, v9

    move-object/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserSetup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setUserSetupComplete(Z)V

    const-string v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create controller SubId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " SlotIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v13, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    :cond_2
    iget-boolean v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerListener()V

    :cond_3
    :goto_2
    add-int/lit8 v0, v15, 0x1

    goto/16 :goto_1

    :cond_4
    iget-boolean v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    iput-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    :cond_5
    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterListener()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSubs(Ljava/util/List;)V

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setLTEStatus([Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    const/16 v18, 0x0

    :goto_4
    move/from16 v0, v18

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    array-length v1, v1

    if-ge v0, v1, :cond_7

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    aget v2, v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setProvision(II)V

    add-int/lit8 v18, v0, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->softSimState:[I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setVirtualSimstate([I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->pushConnectivityToSignals()V

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    return-void
.end method

.method public setNetworkSpeedController(Lcom/android/systemui/statusbar/phone/NetworkSpeedController;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    :cond_0
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected updateNoSims()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasAnySim()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    if-ne v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    if-eq v1, v2, :cond_2

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNoSims(ZZ)V

    :cond_2
    return-void
.end method
