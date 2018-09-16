.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;,
        Lcom/android/server/net/NetworkPolicyManagerService$ChainToggleType;,
        Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;,
        Lcom/android/server/net/NetworkPolicyManagerService$RestrictType;,
        Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;,
        Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyConfigUpdater;,
        Lcom/android/server/net/NetworkPolicyManagerService$Stats;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.net.action.ALLOW_BACKGROUND"

.field public static final ACTION_DATAUSAGE_ALARM:Ljava/lang/String; = "com.oneplus.security.action.DATAUSAGE_ALARM"

.field private static final ACTION_SNOOZE_RAPID:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_RAPID"

.field private static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field private static ACTION_TEST_COMPRESS_FG_RESTRICT:Ljava/lang/String; = null

.field private static final AGGRESSIVE_POLICY:I = 0x1

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_CYCLE_END:Ljava/lang/String; = "cycleEnd"

.field private static final ATTR_CYCLE_PERIOD:Ljava/lang/String; = "cyclePeriod"

.field private static final ATTR_CYCLE_START:Ljava/lang/String; = "cycleStart"

.field private static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field private static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field private static final ATTR_LIMIT_BEHAVIOR:Ljava/lang/String; = "limitBehavior"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_METERED:Ljava/lang/String; = "metered"

.field private static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_OWNER_PACKAGE:Ljava/lang/String; = "ownerPackage"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_SUB_ID:Ljava/lang/String; = "subId"

.field private static final ATTR_SUMMARY:Ljava/lang/String; = "summary"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_USAGE_BYTES:Ljava/lang/String; = "usageBytes"

.field private static final ATTR_USAGE_TIME:Ljava/lang/String; = "usageTime"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final CHAIN_TOGGLE_DISABLE:I = 0x2

.field private static final CHAIN_TOGGLE_ENABLE:I = 0x1

.field private static final CHAIN_TOGGLE_NONE:I = 0x0

.field private static DEBUG_ONEPLUS:Z = false

.field private static final DEFAULT_POLICY:I = 0x0

.field private static final INVALID_UID:I = -0x1

.field private static LOGD:Z = false

.field private static LOGV:Z = false

.field private static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field private static final MSG_GET_ONLINECONFIG:I = 0x3e8

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_METERED_RESTRICTED_PACKAGES_CHANGED:I = 0x11

.field private static final MSG_POLICIES_CHANGED:I = 0xd

.field private static final MSG_REMOVE_INTERFACE_QUOTA:I = 0xb

.field private static final MSG_RESET_FIREWALL_RULES_BY_UID:I = 0xf

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SCREEN_ON_CHANGED:I = 0x8

.field private static final MSG_SET_NETWORK_TEMPLATE_ENABLED:I = 0x12

.field private static final MSG_SUBSCRIPTION_OVERRIDE:I = 0x10

.field private static final MSG_UPDATE_INTERFACE_QUOTA:I = 0xa

.field private static NETWORKPOLICY_CONFIG_NAME:Ljava/lang/String; = null

.field public static final OPPORTUNISTIC_QUOTA_UNKNOWN:I = -0x1

.field private static final PROP_SUB_PLAN_OWNER:Ljava/lang/String; = "persist.sys.sub_plan_owner"

.field private static final QUOTA_FRAC_JOBS_DEFAULT:F = 0.5f

.field private static final QUOTA_FRAC_MULTIPATH_DEFAULT:F = 0.5f

.field private static final QUOTA_LIMITED_DEFAULT:F = 0.1f

.field private static final QUOTA_UNLIMITED_DEFAULT:J

.field private static SCREEN_DOZE_NETWORKPOLICY:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrict-background"

.field private static final TAG_REVOKED_RESTRICT_BACKGROUND:Ljava/lang/String; = "revoked-restrict-background"

.field private static final TAG_SUBSCRIPTION_PLAN:Ljava/lang/String; = "subscription-plan"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TAG_WHITELIST:Ljava/lang/String; = "whitelist"

.field public static final TYPE_LIMIT:I = 0x23
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TYPE_LIMIT_SNOOZED:I = 0x24
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TYPE_RAPID:I = 0x2d
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TYPE_RESTRICT_BACKGROUND:I = 0x1

.field private static final TYPE_RESTRICT_POWER:I = 0x2

.field public static final TYPE_WARNING:I = 0x22
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final UID_MSG_GONE:I = 0x65

.field private static final UID_MSG_STATE_CHANGED:I = 0x64

.field private static final VERSION_ADDED_CYCLE:I = 0xb

.field private static final VERSION_ADDED_INFERRED:I = 0x7

.field private static final VERSION_ADDED_METERED:I = 0x4

.field private static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_ADDED_TIMEZONE:I = 0x6

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0xb

.field private static final VERSION_SPLIT_SNOOZE:I = 0x5

.field private static final VERSION_SWITCH_APP_ID:I = 0x8

.field private static final VERSION_SWITCH_UID:I = 0xa

.field private static final WAIT_FOR_ADMIN_DATA_TIMEOUT_MS:J = 0x2710L

.field private static isDozeChangeSupport:Z

.field private static mAlarmManager:Landroid/app/AlarmManager;

.field static mAllowFGNetworkAccess:Z

.field private static mDozeNetworkIntent:Landroid/content/Intent;

.field private static mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

.field private static mEnableCloseTempWhiteSocketFeature:Z

.field private static mEnableFGNetworkRestrictFeature:Z

.field static mFirstDeviceMode:Z

.field private static mFirstDeviceModeTime:J

.field private static mFirstFGRestrictDebug:Z

.field private static mPolicy:I

.field static sConfigLock:Ljava/lang/Object;

.field static screenOffCheckDelayTime:J


# instance fields
.field private final mActiveNotifs:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

.field private final mClock:Ljava/time/Clock;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private mDeviceIdleLocalService:Lcom/android/server/DeviceIdleController$LocalService;

.field volatile mDeviceIdleMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mDozeChangeReceiver:Landroid/content/BroadcastReceiver;

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mForceCloseSocketCallback:Ljava/lang/Runnable;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field final mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadedRestrictBackground:Z

.field private final mLogger:Lcom/android/server/net/NetworkPolicyLogger;

.field private mMergedSubscriberIds:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation
.end field

.field private mMeteredIfaces:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeteredRestrictedUids:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNetIdToSubId:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation
.end field

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNetworkMetered:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation
.end field

.field final mNetworkPoliciesSecondLock:Ljava/lang/Object;

.field final mNetworkPolicy:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkPolicyConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private final mNetworkRoaming:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation
.end field

.field private mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

.field private mNmi:Lcom/android/server/NetworkManagementInternal;

.field private final mOverLimitNotified:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "allLocks"
    .end annotation
.end field

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field volatile mRestrictBackground:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private mRestrictBackgroundBeforeBsm:Z

.field volatile mRestrictBackgroundChangedInBsm:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field volatile mRestrictPower:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsObserver:Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;

.field private final mSnoozeReceiver:Landroid/content/BroadcastReceiver;

.field public final mStatLogger:Lcom/android/internal/util/StatLogger;

.field private final mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private final mSubIdToSubscriberId:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation
.end field

.field final mSubscriptionPlans:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation
.end field

.field final mSubscriptionPlansOwner:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuppressDefaultPolicy:Z

.field volatile mSystemReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "allLocks"
    .end annotation
.end field

.field public final mUidEventHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mUidEventHandlerCallback:Landroid/os/Handler$Callback;

.field private final mUidEventThread:Lcom/android/server/ServiceThread;

.field final mUidFirewallDozableRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPolicy:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field final mUidRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mUidRulesFirstLock:Ljava/lang/Object;

.field final mUidState:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 327
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 328
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 333
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->DEBUG_ONEPLUS:Z

    .line 339
    const-string v1, "NetworkPolicyOnlineConfig"

    sput-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->NETWORKPOLICY_CONFIG_NAME:Ljava/lang/String;

    .line 341
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->mEnableFGNetworkRestrictFeature:Z

    .line 342
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mEnableCloseTempWhiteSocketFeature:Z

    .line 343
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/net/NetworkPolicyManagerService;->sConfigLock:Ljava/lang/Object;

    .line 422
    sget-object v2, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v3, 0x14

    invoke-virtual {v2, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    .line 630
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->isDozeChangeSupport:Z

    .line 638
    sput v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicy:I

    .line 642
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstFGRestrictDebug:Z

    .line 1144
    const-string v2, "com.test.compress.fg.restrict"

    sput-object v2, Lcom/android/server/net/NetworkPolicyManagerService;->ACTION_TEST_COMPRESS_FG_RESTRICT:Ljava/lang/String;

    .line 3242
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    .line 3243
    const-wide/high16 v2, -0x8000000000000000L

    sput-wide v2, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceModeTime:J

    .line 3244
    const-wide/32 v2, 0x1b7740

    sput-wide v2, Lcom/android/server/net/NetworkPolicyManagerService;->screenOffCheckDelayTime:J

    .line 3248
    sput-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowFGNetworkAccess:Z

    .line 3251
    const-string v0, "com.oneplus.android.checkDozeNetworkplicy"

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->SCREEN_DOZE_NETWORKPOLICY:Ljava/lang/String;

    .line 3253
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "networkManagement"    # Landroid/os/INetworkManagementService;

    .line 659
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 660
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultClock()Ljava/time/Clock;

    move-result-object v5

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v6

    .line 659
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;Z)V

    .line 661
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "networkManagement"    # Landroid/os/INetworkManagementService;
    .param p4, "pm"    # Landroid/content/pm/IPackageManager;
    .param p5, "clock"    # Ljava/time/Clock;
    .param p6, "systemDir"    # Ljava/io/File;
    .param p7, "suppressDefaultPolicy"    # Z

    .line 674
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 479
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 480
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 492
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 495
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 499
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 502
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    .line 506
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    .line 510
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 512
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 514
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 516
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 518
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 522
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 530
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 538
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 541
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 547
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 555
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 560
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 563
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 567
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 571
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 575
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    .line 578
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    .line 582
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    .line 586
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 589
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:[Ljava/lang/String;

    .line 596
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 599
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 617
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger;

    invoke-direct {v0}, Lcom/android/server/net/NetworkPolicyLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 652
    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string/jumbo v1, "updateNetworkEnabledNL()"

    const-string/jumbo v2, "isUidNetworkingBlocked()"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 1117
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 1146
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    .line 1185
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mForceCloseSocketCallback:Ljava/lang/Runnable;

    .line 1234
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 1244
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 1264
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 1283
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1321
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 1338
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 1352
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    .line 1372
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 1395
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$15;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1423
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$16;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1761
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$17;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$17;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1920
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$18;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$18;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 3327
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$19;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$19;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDozeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 4817
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$20;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$20;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 4949
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$21;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$21;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandlerCallback:Landroid/os/Handler$Callback;

    .line 675
    const-string/jumbo v0, "missing context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 676
    const-string/jumbo v0, "missing activityManager"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 677
    const-string/jumbo v0, "missing networkManagement"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 678
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 680
    const-string/jumbo v0, "missing Clock"

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Clock;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    .line 681
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 682
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 683
    iput-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 685
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkPolicy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 686
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 687
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 690
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "NetworkPolicy.uid"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    .line 692
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 693
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    .line 695
    iput-boolean p7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 697
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "netpolicy.xml"

    invoke-direct {v2, p6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "net-policy"

    invoke-direct {v1, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 699
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 702
    const-class v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 707
    const-class v1, Lcom/android/server/NetworkManagementInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementInternal;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNmi:Lcom/android/server/NetworkManagementInternal;

    .line 708
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSettingsObserver:Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;

    .line 709
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSettingsObserver:Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;->observe()V

    .line 716
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->initOnlineConfig()V

    .line 718
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkPolicyManagerService;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->resolveNetworkPolicyConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$1000()Landroid/app/PendingIntent;
    .locals 1

    .line 318
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/app/AlarmManager;
    .locals 1

    .line 318
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 318
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/DeviceIdleController$LocalService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleLocalService:Lcom/android/server/DeviceIdleController$LocalService;

    return-object v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 318
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mEnableCloseTempWhiteSocketFeature:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/NetworkManagementInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNmi:Lcom/android/server/NetworkManagementInternal;

    return-object v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .line 318
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidUL(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->onUidDeletedUL(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/net/NetworkPolicyManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeWifiMeteredOverrideAL()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .locals 1
    .param p0, "x0"    # Landroid/util/SparseBooleanArray;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/net/Network;

    .line 318
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateMobilePolicyCycleAL(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 318
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 318
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # [Ljava/lang/String;

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # Z

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 318
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Boolean;

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .line 318
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->resetUidFirewallRules(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 318
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/util/Set;
    .param p2, "x2"    # I

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredRestrictedPackagesInternal(Ljava/util/Set;I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # Z

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V

    return-void
.end method

.method static synthetic access$4600(II)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 318
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/net/NetworkPolicyManagerService;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidNetworkingBlockedInternal(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForTempWhitelistChangeUL(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/Network;

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubIdLocked(Landroid/net/Network;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/telephony/SubscriptionPlan;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 318
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->ACTION_TEST_COMPRESS_FG_RESTRICT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 318
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->isDozeChangeSupport:Z

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .line 318
    sget v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicy:I

    return v0
.end method

.method private addDefaultRestrictBackgroundWhitelistUidsUL(I)Z
    .locals 12
    .param p1, "userId"    # I

    .line 837
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 838
    .local v0, "sysConfig":Lcom/android/server/SystemConfig;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 839
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowInDataUsageSave()Landroid/util/ArraySet;

    move-result-object v2

    .line 840
    .local v2, "allowDataUsage":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 841
    .local v3, "changed":Z
    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    .local v3, "i":I
    .local v5, "changed":Z
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 842
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 843
    .local v6, "pkg":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v7, :cond_0

    .line 844
    const-string v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checking restricted background whitelisting for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " and user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_0
    const/high16 v7, 0x100000

    :try_start_0
    invoke-virtual {v1, v6, v7, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    .local v7, "app":Landroid/content/pm/ApplicationInfo;
    nop

    .line 852
    nop

    .line 854
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v8

    if-nez v8, :cond_1

    .line 855
    const-string v8, "NetworkPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addDefaultRestrictBackgroundWhitelistUidsUL(): skipping non-privileged app  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    goto/16 :goto_1

    .line 859
    :cond_1
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    .line 860
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 861
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v9, :cond_2

    .line 862
    const-string v9, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " (user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") to default restricted background whitelist. Revoked status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 864
    invoke-virtual {v11, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 862
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_2
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 866
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v9, :cond_3

    .line 867
    const-string v9, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adding default package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " (uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") to restrict background whitelist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_3
    const/4 v9, 0x4

    invoke-direct {p0, v8, v9, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 870
    const/4 v5, 0x1

    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "uid":I
    goto :goto_1

    .line 849
    .restart local v6    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 850
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v8, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v8, :cond_4

    const-string v8, "NetworkPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No ApplicationInfo for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_4
    nop

    .line 841
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 873
    .end local v3    # "i":I
    :cond_6
    return v5
.end method

.method private adjustUidRulesForStandby(ILandroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .locals 4
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    .line 5126
    move-object v0, p2

    .line 5127
    .local v0, "uidRulesTemp":Landroid/util/SparseIntArray;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 5128
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 5128
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 5129
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 5130
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 5128
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5133
    .end local v2    # "index":I
    :cond_1
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUidFirewallRules uidRulesTemp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5135
    :cond_2
    return-object v0
.end method

.method private broadcastDataUsageAlarm()V
    .locals 2

    .line 5684
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.security.action.DATAUSAGE_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5685
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5686
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5687
    return-void
.end method

.method private broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "changed"    # Ljava/lang/Boolean;

    .line 5003
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5004
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 5005
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 5006
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 5007
    .local v2, "userId":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 5008
    .local v5, "packageName":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5010
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5011
    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5012
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5007
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5015
    .end local v2    # "userId":I
    :cond_0
    return-void
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .locals 2

    .line 5255
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 5273
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5274
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 5275
    const v1, 0x104016d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5274
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5276
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5277
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5278
    return-object v0
.end method

.method private static buildSnoozeRapidIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .line 5266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5267
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5268
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5269
    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .line 5259
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5260
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5261
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5262
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 5282
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5283
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 5284
    const v1, 0x1040137

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5283
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5285
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5286
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5287
    return-object v0
.end method

.method private cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V
    .locals 3
    .param p1, "notificationId"    # Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 1753
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 1754
    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result v2

    .line 1753
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1755
    return-void
.end method

.method private static collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkState;)V
    .locals 4
    .param p1, "state"    # Landroid/net/NetworkState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/NetworkState;",
            ")V"
        }
    .end annotation

    .line 2057
    .local p0, "ifaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2058
    .local v0, "baseIface":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2059
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2061
    :cond_0
    iget-object v1, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 2062
    .local v2, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 2063
    .local v3, "stackedIface":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 2064
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2066
    .end local v2    # "stackedLink":Landroid/net/LinkProperties;
    .end local v3    # "stackedIface":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 2067
    :cond_2
    return-void
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .param p0, "source"    # Landroid/util/SparseIntArray;
    .param p1, "target"    # Landroid/util/SparseBooleanArray;

    .line 5325
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 5326
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5327
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5329
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static defeatNullable([Landroid/net/NetworkState;)[Landroid/net/NetworkState;
    .locals 1
    .param p0, "val"    # [Landroid/net/NetworkState;

    .line 5634
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/NetworkState;

    :goto_0
    return-object v0
.end method

.method private dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "meteredIfaces"    # [Ljava/lang/String;

    .line 4779
    if-eqz p1, :cond_0

    .line 4781
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4783
    goto :goto_0

    .line 4782
    :catch_0
    move-exception v0

    .line 4785
    :cond_0
    :goto_0
    return-void
.end method

.method private dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "restrictBackground"    # Z

    .line 4789
    if-eqz p1, :cond_0

    .line 4791
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4793
    goto :goto_0

    .line 4792
    :catch_0
    move-exception v0

    .line 4795
    :cond_0
    :goto_0
    return-void
.end method

.method private dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "subId"    # I
    .param p3, "overrideMask"    # I
    .param p4, "overrideValue"    # I

    .line 4809
    if-eqz p1, :cond_0

    .line 4811
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/net/INetworkPolicyListener;->onSubscriptionOverride(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4813
    goto :goto_0

    .line 4812
    :catch_0
    move-exception v0

    .line 4815
    :cond_0
    :goto_0
    return-void
.end method

.method private dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "uidPolicies"    # I

    .line 4799
    if-eqz p1, :cond_0

    .line 4801
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidPoliciesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4803
    goto :goto_0

    .line 4802
    :catch_0
    move-exception v0

    .line 4805
    :cond_0
    :goto_0
    return-void
.end method

.method private dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "uidRules"    # I

    .line 4769
    if-eqz p1, :cond_0

    .line 4771
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4773
    goto :goto_0

    .line 4772
    :catch_0
    move-exception v0

    .line 4775
    :cond_0
    :goto_0
    return-void
.end method

.method private enableFirewallChainUL(IZ)V
    .locals 3
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    .line 5183
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableFirewallChainUL, chain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5185
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 5186
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_1

    .line 5188
    return-void

    .line 5190
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V

    .line 5193
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->firewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5196
    :catch_0
    move-exception v0

    goto :goto_1

    .line 5194
    :catch_1
    move-exception v0

    .line 5195
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem enable firewall chain"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5198
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 5199
    :goto_1
    return-void
.end method

.method private enforceSubscriptionPlanAccess(IILjava/lang/String;)V
    .locals 10
    .param p1, "subId"    # I
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 3352
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3358
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 3359
    invoke-virtual {v2, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 3360
    .local v2, "si":Landroid/telephony/SubscriptionInfo;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v3, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3362
    .local v3, "config":Landroid/os/PersistableBundle;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3363
    nop

    .line 3362
    nop

    .line 3366
    if-eqz v2, :cond_0

    .line 3367
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, p3}, Landroid/telephony/SubscriptionInfo;->canManageSubscription(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3368
    return-void

    .line 3373
    :cond_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 3374
    const-string v5, "config_plans_package_override_string"

    .line 3375
    invoke-virtual {v3, v5, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3376
    .local v5, "overridePackage":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3377
    invoke-static {v5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3378
    return-void

    .line 3383
    .end local v5    # "overridePackage":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v5}, Landroid/telephony/CarrierConfigManager;->getDefaultCarrierServicePackageName()Ljava/lang/String;

    move-result-object v5

    .line 3384
    .local v5, "defaultPackage":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3385
    invoke-static {v5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3386
    return-void

    .line 3390
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "persist.sys.sub_plan_owner."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3391
    .local v6, "testPackage":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3392
    invoke-static {v6, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3393
    return-void

    .line 3397
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fw.sub_plan_owner."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3398
    .local v4, "legacyTestPackage":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 3399
    invoke-static {v4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3400
    return-void

    .line 3404
    :cond_4
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    const-string v9, "NetworkPolicy"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3405
    return-void

    .line 3362
    .end local v2    # "si":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "config":Landroid/os/PersistableBundle;
    .end local v4    # "legacyTestPackage":Ljava/lang/String;
    .end local v5    # "defaultPackage":Ljava/lang/String;
    .end local v6    # "testPackage":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V
    .locals 17
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J
    .param p5, "rapidBlame"    # Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    .line 1643
    move-object/from16 v5, p5

    new-instance v6, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkPolicy;I)V

    .line 1644
    .local v6, "notificationId":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1646
    .local v7, "builder":Landroid/app/Notification$Builder;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1647
    const-wide/16 v9, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1648
    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v10, 0x1060157

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1651
    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1654
    .local v9, "res":Landroid/content/res/Resources;
    const/16 v10, 0x2d

    const/4 v13, 0x0

    if-eq v2, v10, :cond_4

    const/4 v10, 0x4

    packed-switch v2, :pswitch_data_0

    .line 1738
    return-void

    .line 1694
    :pswitch_0
    iget-object v14, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v14}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v14

    if-eq v14, v8, :cond_1

    if-eq v14, v10, :cond_0

    .line 1702
    return-void

    .line 1699
    :cond_0
    const v10, 0x104019d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1700
    .local v10, "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1696
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_1
    const v10, 0x1040194

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1697
    .restart local v10    # "title":Ljava/lang/CharSequence;
    nop

    .line 1702
    :goto_0
    nop

    .line 1704
    iget-wide v14, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v14, v3, v14

    .line 1705
    .local v14, "overBytes":J
    const v12, 0x1040193

    new-array v11, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1706
    invoke-static {v8, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v13

    .line 1705
    invoke-virtual {v9, v12, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1708
    .local v8, "body":Ljava/lang/CharSequence;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1709
    const v11, 0x1080078

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1710
    sget-object v11, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1712
    iget-object v11, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 1713
    .local v11, "intent":Landroid/content/Intent;
    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v12, v13, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1715
    goto/16 :goto_3

    .line 1673
    .end local v8    # "body":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v14    # "overBytes":J
    :pswitch_1
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_3

    if-eq v2, v10, :cond_2

    .line 1681
    return-void

    .line 1678
    :cond_2
    const v2, 0x104019e

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1679
    .local v2, "title":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1675
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_3
    const v2, 0x1040195

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1676
    .restart local v2    # "title":Ljava/lang/CharSequence;
    nop

    .line 1681
    :goto_1
    move-object v10, v2

    .line 1683
    .end local v2    # "title":Ljava/lang/CharSequence;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    const v2, 0x1040192

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1685
    .restart local v8    # "body":Ljava/lang/CharSequence;
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1686
    const v2, 0x1080791

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1688
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 1689
    .local v2, "intent":Landroid/content/Intent;
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0x8000000

    invoke-static {v11, v13, v2, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1691
    goto/16 :goto_3

    .line 1656
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "body":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    const v2, 0x104019c

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1657
    .restart local v10    # "title":Ljava/lang/CharSequence;
    const v2, 0x104019b

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1658
    invoke-static {v11, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v13

    .line 1657
    invoke-virtual {v9, v2, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1660
    .restart local v8    # "body":Ljava/lang/CharSequence;
    const v2, 0x1080078

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1662
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 1663
    .local v2, "snoozeIntent":Landroid/content/Intent;
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0x8000000

    invoke-static {v11, v13, v2, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1666
    iget-object v11, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 1667
    .local v11, "viewIntent":Landroid/content/Intent;
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14, v13, v11, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1670
    goto :goto_3

    .line 1718
    .end local v2    # "snoozeIntent":Landroid/content/Intent;
    .end local v8    # "body":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v11    # "viewIntent":Landroid/content/Intent;
    :cond_4
    const v2, 0x1040198

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1719
    .restart local v10    # "title":Ljava/lang/CharSequence;
    if-eqz v5, :cond_5

    .line 1720
    const v2, 0x1040196

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1721
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v8, v13

    .line 1720
    invoke-virtual {v9, v2, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "body":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1723
    .end local v2    # "body":Ljava/lang/CharSequence;
    :cond_5
    const v2, 0x1040197

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "body":Ljava/lang/CharSequence;
    :goto_2
    move-object v8, v2

    .line 1726
    .end local v2    # "body":Ljava/lang/CharSequence;
    .restart local v8    # "body":Ljava/lang/CharSequence;
    const v2, 0x1080078

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1728
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeRapidIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 1729
    .local v2, "snoozeIntent":Landroid/content/Intent;
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0x8000000

    invoke-static {v11, v13, v2, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1732
    iget-object v11, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 1733
    .restart local v11    # "viewIntent":Landroid/content/Intent;
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14, v13, v11, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1735
    nop

    .line 1738
    .end local v2    # "snoozeIntent":Landroid/content/Intent;
    .end local v11    # "viewIntent":Landroid/content/Intent;
    :goto_3
    move-object v2, v10

    .line 1742
    .end local v10    # "title":Ljava/lang/CharSequence;
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1743
    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1744
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1745
    new-instance v10, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v10}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v10, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1747
    iget-object v10, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v11, Landroid/app/NotificationManager;

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    invoke-virtual {v6}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getTag()Ljava/lang/String;

    move-result-object v11

    .line 1748
    invoke-virtual {v6}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result v12

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1747
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1749
    iget-object v10, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v10, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1750
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ensureActiveMobilePolicyAL()V
    .locals 3

    .line 2299
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string v1, "ensureActiveMobilePolicyAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v0, :cond_1

    return-void

    .line 2302
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2303
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2304
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2306
    .local v2, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL(ILjava/lang/String;)Z

    .line 2302
    .end local v1    # "subId":I
    .end local v2    # "subscriberId":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2308
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private ensureActiveMobilePolicyAL(ILjava/lang/String;)Z
    .locals 9
    .param p1, "subId"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;

    .line 2320
    new-instance v8, Landroid/net/NetworkIdentity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v8

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 2322
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2323
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    .line 2324
    .local v3, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2325
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v2, :cond_0

    .line 2326
    const-string v2, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found template "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " which matches subscriber "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2327
    invoke-static {p2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2326
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 2322
    .end local v3    # "template":Landroid/net/NetworkTemplate;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2333
    .end local v1    # "i":I
    :cond_2
    const-string v1, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No policy for subscriber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; generating default policy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildDefaultMobilePolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 2336
    .local v1, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyAL(Landroid/net/NetworkPolicy;)V

    .line 2337
    return v2
.end method

.method private findRapidBlame(Landroid/net/NetworkTemplate;JJ)Landroid/content/pm/ApplicationInfo;
    .locals 14
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    move-object v1, p0

    .line 1565
    const-wide/16 v2, 0x0

    .line 1566
    .local v2, "totalBytes":J
    const-wide/16 v4, 0x0

    .line 1567
    .local v4, "maxBytes":J
    const/4 v0, 0x0

    .line 1569
    .local v0, "maxUid":I
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v6

    .line 1570
    .local v6, "stats":Landroid/net/NetworkStats;
    const/4 v7, 0x0

    .line 1571
    .local v7, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v8, 0x0

    move v9, v0

    move v0, v8

    .local v0, "i":I
    .local v9, "maxUid":I
    :goto_0
    invoke-virtual {v6}, Landroid/net/NetworkStats;->size()I

    move-result v10

    if-ge v0, v10, :cond_1

    .line 1572
    invoke-virtual {v6, v0, v7}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v7

    .line 1573
    iget-wide v10, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    .line 1574
    .local v10, "bytes":J
    add-long/2addr v2, v10

    .line 1575
    cmp-long v12, v10, v4

    if-lez v12, :cond_0

    .line 1576
    move-wide v4, v10

    .line 1577
    iget v9, v7, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1571
    .end local v10    # "bytes":J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1583
    .end local v0    # "i":I
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-lez v0, :cond_2

    const-wide/16 v10, 0x2

    div-long v10, v2, v10

    cmp-long v0, v4, v10

    if-lez v0, :cond_2

    .line 1584
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    .line 1585
    .local v10, "packageNames":[Ljava/lang/String;
    if-eqz v10, :cond_2

    array-length v0, v10

    const/4 v11, 0x1

    if-ne v0, v11, :cond_2

    .line 1587
    :try_start_0
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    aget-object v8, v10, v8

    const v11, 0x4c2200

    invoke-virtual {v0, v8, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1590
    :catch_0
    move-exception v0

    .line 1595
    .end local v10    # "packageNames":[Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I
    .locals 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 1609
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1610
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1611
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1612
    .local v2, "subscriberId":Ljava/lang/String;
    new-instance v11, Landroid/net/NetworkIdentity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v3, v11

    move-object v6, v2

    invoke-direct/range {v3 .. v10}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1615
    .local v3, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v3}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1616
    return v1

    .line 1609
    .end local v1    # "subId":I
    .end local v2    # "subscriberId":Ljava/lang/String;
    .end local v3    # "probeIdent":Landroid/net/NetworkIdentity;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1619
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/PersistableBundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 5639
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method private static getDefaultClock()Ljava/time/Clock;
    .locals 5

    .line 668
    new-instance v0, Landroid/os/BestClock;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/time/Clock;

    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 669
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/os/BestClock;-><init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V

    .line 668
    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .locals 3

    .line 664
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 5226
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsManagerInternal;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 5227
    :catch_0
    move-exception v0

    .line 5228
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read network stats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5229
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 5235
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsManagerInternal;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5236
    :catch_0
    move-exception v0

    .line 5237
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read network stats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5238
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v1
.end method

.method private getPlatformDefaultLimitBytes()J
    .locals 2

    .line 2351
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getPlatformDefaultWarningBytes()J
    .locals 5

    .line 2341
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2343
    .local v0, "dataWarningConfig":I
    int-to-long v1, v0

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2344
    return-wide v3

    .line 2346
    :cond_0
    int-to-long v1, v0

    const-wide/32 v3, 0x100000

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method private getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;
    .locals 6
    .param p1, "subId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .line 5575
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    .line 5576
    .local v0, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5577
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 5578
    .local v3, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/RecurrenceRule;->isRecurring()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5580
    return-object v3

    .line 5583
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    .line 5584
    .local v4, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-static {v5}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5585
    return-object v3

    .line 5577
    .end local v3    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v4    # "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5590
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSubIdLocked(Landroid/net/Network;)I
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .line 5570
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    iget v1, p1, Landroid/net/Network;->netId:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5221
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUidForPackage(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5545
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x402000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5547
    :catch_0
    move-exception v0

    .line 5548
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    return v1
.end method

.method private handleRestrictedPackagesChangeUL(Ljava/util/Set;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 5605
    .local p1, "oldRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "newRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez p1, :cond_1

    .line 5606
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5607
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 5608
    .end local v1    # "uid":I
    goto :goto_0

    .line 5609
    :cond_0
    return-void

    .line 5611
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5612
    .restart local v1    # "uid":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5613
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 5615
    .end local v1    # "uid":I
    :cond_2
    goto :goto_1

    .line 5616
    :cond_3
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5617
    .restart local v1    # "uid":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 5618
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 5620
    .end local v1    # "uid":I
    :cond_4
    goto :goto_2

    .line 5621
    :cond_5
    return-void
.end method

.method private hasInternetPermissions(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 4416
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 4418
    const/4 v0, 0x0

    return v0

    .line 4421
    :cond_0
    goto :goto_0

    .line 4420
    :catch_0
    move-exception v0

    .line 4422
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static hasRule(II)Z
    .locals 1
    .param p0, "uidRules"    # I
    .param p1, "rule"    # I

    .line 5630
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initService(Ljava/util/concurrent/CountDownLatch;)V
    .locals 17
    .param p1, "initCompleteSignal"    # Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v1, p0

    .line 877
    const-string/jumbo v0, "systemReady"

    const-wide/32 v2, 0x200000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 878
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    move v4, v0

    .line 881
    .local v4, "oldPriority":I
    const/4 v0, -0x2

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 882
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 883
    const-string v0, "NetworkPolicy"

    const-string v5, "bandwidth controls disabled, unable to enforce policy"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1063
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1064
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 884
    return-void

    .line 887
    :cond_0
    :try_start_1
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 888
    const-class v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    .line 890
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 891
    :try_start_2
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 892
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    .line 893
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 894
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v7, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 915
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 918
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 920
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->waitForAdminData()V

    .line 923
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyAL()V

    .line 926
    iget-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    iput-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 927
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v8, 0xa

    .line 928
    invoke-virtual {v7, v8}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    .line 929
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    iget-boolean v7, v7, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 931
    .local v7, "localRestrictBackground":Z
    if-eqz v7, :cond_1

    iget-boolean v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    if-nez v8, :cond_1

    .line 932
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 934
    :cond_1
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v8, v1}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v8}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 950
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 953
    :cond_2
    iget-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    invoke-direct {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V

    .line 954
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 955
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 956
    .end local v7    # "localRestrictBackground":Z
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 957
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 959
    :try_start_5
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 961
    const/4 v5, 0x0

    :try_start_6
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v7, 0x3

    const/4 v8, -0x1

    invoke-interface {v0, v6, v7, v8, v5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 964
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v6}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 967
    goto :goto_0

    .line 965
    :catch_0
    move-exception v0

    .line 971
    :goto_0
    :try_start_7
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 972
    .local v0, "screenFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 973
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v0, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 977
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 979
    .local v6, "whitelistFilter":Landroid/content/IntentFilter;
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v6, v5, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 981
    const-class v7, Lcom/android/server/DeviceIdleController$LocalService;

    .line 982
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/DeviceIdleController$LocalService;

    .line 987
    .local v7, "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    iput-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleLocalService:Lcom/android/server/DeviceIdleController$LocalService;

    .line 995
    sget-boolean v8, Lcom/android/server/net/NetworkPolicyManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_3

    .line 996
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->registerGeneralReceiver()V

    .line 1000
    :cond_3
    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v8, "connFilter":Landroid/content/IntentFilter;
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string v11, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1004
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 1005
    .local v9, "packageFilter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1006
    const-string/jumbo v10, "package"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1007
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v9, v5, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1010
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.UID_REMOVED"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v12, v5, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1014
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 1015
    .local v10, "userFilter":Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.USER_ADDED"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1016
    const-string v11, "android.intent.action.USER_REMOVED"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1017
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v12, v10, v5, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1020
    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1021
    .local v11, "statsFilter":Landroid/content/IntentFilter;
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    const-string v14, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v13, v11, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1025
    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v12, "allowFilter":Landroid/content/IntentFilter;
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    const-string v15, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v14, v12, v15, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1029
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v14, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v13, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1031
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v14, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v13, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1035
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1037
    .local v2, "wifiFilter":Landroid/content/IntentFilter;
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v13, v2, v5, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1040
    new-instance v3, Landroid/content/IntentFilter;

    const-string v13, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v3, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1042
    .local v3, "carrierConfigFilter":Landroid/content/IntentFilter;
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v14, v3, v5, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1045
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v14, Landroid/net/ConnectivityManager;

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    new-instance v14, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v14}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1046
    invoke-virtual {v14}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1045
    invoke-virtual {v13, v14, v15}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1048
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v14, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;

    invoke-direct {v14, v1, v5}, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    invoke-virtual {v13, v14}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 1051
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v13, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionManager;

    new-instance v13, Lcom/android/server/net/NetworkPolicyManagerService$3;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 1052
    invoke-virtual {v14}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Looper;)V

    .line 1051
    invoke-virtual {v5, v13}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1060
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1063
    .end local v0    # "screenFilter":Landroid/content/IntentFilter;
    .end local v2    # "wifiFilter":Landroid/content/IntentFilter;
    .end local v3    # "carrierConfigFilter":Landroid/content/IntentFilter;
    .end local v6    # "whitelistFilter":Landroid/content/IntentFilter;
    .end local v7    # "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    .end local v8    # "connFilter":Landroid/content/IntentFilter;
    .end local v9    # "packageFilter":Landroid/content/IntentFilter;
    .end local v10    # "userFilter":Landroid/content/IntentFilter;
    .end local v11    # "statsFilter":Landroid/content/IntentFilter;
    .end local v12    # "allowFilter":Landroid/content/IntentFilter;
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1064
    const-wide/32 v2, 0x200000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1065
    nop

    .line 1066
    return-void

    .line 956
    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0

    .line 957
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1063
    :catchall_2
    move-exception v0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1064
    const-wide/32 v2, 0x200000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .line 5243
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5245
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5250
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5245
    return v2

    .line 5250
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5246
    :catch_0
    move-exception v2

    .line 5248
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 5250
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5248
    return v3
.end method

.method static isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z
    .locals 5
    .param p0, "procState"    # I

    .line 4051
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mEnableFGNetworkRestrictFeature:Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->isDozeChangeSupport:Z

    if-nez v0, :cond_0

    sget v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicy:I

    if-ne v0, v3, :cond_4

    :cond_0
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    if-eqz v0, :cond_4

    .line 4058
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowFGNetworkAccess:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstFGRestrictDebug:Z

    if-nez v0, :cond_2

    .line 4059
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "NetworkPolicy"

    const-string v4, "Start to restrict FG network access"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4060
    :cond_1
    sput-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstFGRestrictDebug:Z

    .line 4063
    :cond_2
    if-gt p0, v2, :cond_3

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowFGNetworkAccess:Z

    if-eqz v0, :cond_3

    move v1, v3

    nop

    :cond_3
    move v0, v1

    .line 4065
    .local v0, "res":Z
    return v0

    .line 4067
    .end local v0    # "res":Z
    :cond_4
    if-gt p0, v2, :cond_5

    move v1, v3

    nop

    :cond_5
    return v1
.end method

.method private isRestrictedByAdminUL(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 5624
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 5625
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5624
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 5626
    .local v0, "restrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isUidForegroundOnRestrictBackgroundUL(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 3922
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 3923
    .local v0, "procState":I
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v1

    return v1
.end method

.method private isUidForegroundOnRestrictPowerUL(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 3927
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 3928
    .local v0, "procState":I
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v1

    return v1
.end method

.method private isUidIdle(I)Z
    .locals 7
    .param p1, "uid"    # I

    .line 4396
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 4397
    .local v0, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4399
    .local v1, "userId":I
    if-eqz v0, :cond_1

    .line 4400
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 4401
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v6, v5, p1, v1}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4402
    return v3

    .line 4400
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4406
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private isUidNetworkingBlockedInternal(IZ)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "isNetworkMetered"    # Z

    .line 5377
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5378
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 5379
    .local v1, "uidRules":I
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 5380
    .local v3, "isBackgroundRestricted":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5381
    const/16 v0, 0x40

    invoke-static {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 5382
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    .line 5383
    return v4

    .line 5385
    :cond_0
    if-nez p2, :cond_1

    .line 5386
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, v4}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    .line 5387
    return v2

    .line 5389
    :cond_1
    const/4 v0, 0x4

    invoke-static {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_2

    .line 5390
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, v6}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    .line 5391
    return v4

    .line 5393
    :cond_2
    invoke-static {v1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5394
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    const/4 v4, 0x3

    invoke-virtual {v0, p1, v4}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    .line 5395
    return v2

    .line 5397
    :cond_3
    invoke-static {v1, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5398
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v4, p1, v0}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    .line 5399
    return v2

    .line 5401
    :cond_4
    if-eqz v3, :cond_5

    .line 5402
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    .line 5403
    return v4

    .line 5405
    :cond_5
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    const/4 v4, 0x6

    invoke-virtual {v0, p1, v4}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    .line 5406
    return v2

    .line 5380
    .end local v1    # "uidRules":I
    .end local v3    # "isBackgroundRestricted":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isUidStateForeground(I)Z
    .locals 1
    .param p1, "state"    # I

    .line 3933
    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUidValidForBlacklistRules(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 4383
    const/16 v0, 0x3f5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3fb

    if-eq p1, v0, :cond_1

    .line 4384
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4388
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 4385
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isUidValidForWhitelistRules(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 4392
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWhitelistedBatterySaverUL(IZ)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "deviceIdleMode"    # Z

    .line 4147
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4148
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 4149
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 4150
    .local v1, "isWhitelisted":Z
    :goto_1
    if-nez p2, :cond_4

    .line 4151
    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    nop

    :cond_3
    :goto_2
    move v1, v2

    .line 4153
    :cond_4
    return v1
.end method

.method public static synthetic lambda$networkScoreAndNetworkManagementServiceReady$0(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "initCompleteSignal"    # Ljava/util/concurrent/CountDownLatch;

    .line 1070
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->initService(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic lambda$updateNetworks$1(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 1791
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1792
    return-void
.end method

.method private maybeUpdateMobilePolicyCycleAL(ILjava/lang/String;)Z
    .locals 10
    .param p1, "subId"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;

    .line 1804
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "maybeUpdateMobilePolicyCycleAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_0
    const/4 v0, 0x0

    .line 1808
    .local v0, "policyUpdated":Z
    new-instance v9, Landroid/net/NetworkIdentity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, v9

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1810
    .local v1, "probeIdent":Landroid/net/NetworkIdentity;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1810
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1811
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    .line 1812
    .local v3, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1813
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 1814
    .local v4, "policy":Landroid/net/NetworkPolicy;
    invoke-direct {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultMobilePolicyAL(ILandroid/net/NetworkPolicy;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1810
    .end local v3    # "template":Landroid/net/NetworkTemplate;
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1817
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method private normalizePoliciesNL()V
    .locals 1

    .line 3063
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 3064
    return-void
.end method

.method private normalizePoliciesNL([Landroid/net/NetworkPolicy;)V
    .locals 7
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .line 3067
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3068
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    .line 3069
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_0

    .line 3070
    goto :goto_1

    .line 3074
    :cond_0
    iget-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:[Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 3075
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 3076
    .local v3, "existing":Landroid/net/NetworkPolicy;
    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v4

    if-lez v4, :cond_3

    .line 3077
    :cond_1
    if-eqz v3, :cond_2

    .line 3078
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Normalization replaced "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    :cond_2
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3068
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    .end local v3    # "existing":Landroid/net/NetworkPolicy;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3083
    :cond_4
    return-void
.end method

.method private notifyOverLimitNL(Landroid/net/NetworkTemplate;)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 1627
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1629
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1631
    :cond_0
    return-void
.end method

.method private notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 1634
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1635
    return-void
.end method

.method private onUidDeletedUL(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 4430
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4431
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4432
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4433
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4434
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4435
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4436
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4437
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4440
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4441
    return-void
.end method

.method private parseSubId(Landroid/net/NetworkState;)I
    .locals 3
    .param p1, "state"    # Landroid/net/NetworkState;

    .line 5554
    const/4 v0, -0x1

    .line 5555
    .local v0, "subId":I
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x0

    .line 5556
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5557
    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    .line 5558
    .local v1, "spec":Landroid/net/NetworkSpecifier;
    instance-of v2, v1, Landroid/net/StringNetworkSpecifier;

    if-eqz v2, :cond_0

    .line 5560
    :try_start_0
    move-object v2, v1

    check-cast v2, Landroid/net/StringNetworkSpecifier;

    iget-object v2, v2, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 5562
    goto :goto_0

    .line 5561
    :catch_0
    move-exception v2

    .line 5565
    .end local v1    # "spec":Landroid/net/NetworkSpecifier;
    :cond_0
    :goto_0
    return v0
.end method

.method private readPolicyAL()V
    .locals 45

    .line 2433
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string/jumbo v2, "readPolicyAL()"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    :cond_0
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2437
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2438
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2439
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 2441
    const/4 v0, 0x0

    move-object v2, v0

    .line 2443
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 2444
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2445
    .local v3, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2449
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2452
    .local v4, "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    const/4 v5, 0x1

    .line 2453
    .local v5, "version":I
    move v7, v5

    const/4 v5, 0x0

    .line 2454
    .local v5, "insideWhitelist":Z
    .local v7, "version":I
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v9, v8

    .line 2454
    .local v9, "type":I
    const/4 v10, 0x1

    if-eq v8, v10, :cond_1a

    .line 2455
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2456
    .local v8, "tag":Ljava/lang/String;
    const/4 v11, 0x3

    const/4 v12, 0x2

    if-ne v9, v12, :cond_18

    .line 2457
    const-string/jumbo v13, "policy-list"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2458
    iget-boolean v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2459
    .local v12, "oldValue":Z
    const-string/jumbo v13, "version"

    invoke-static {v3, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v13

    move v7, v13

    .line 2460
    if-lt v7, v11, :cond_1

    const-string/jumbo v11, "restrictBackground"

    .line 2461
    invoke-static {v3, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    iput-boolean v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 2462
    .end local v12    # "oldValue":Z
    goto/16 :goto_10

    :cond_2
    const-string/jumbo v11, "network-policy"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 2463
    const-string/jumbo v11, "networkTemplate"

    invoke-static {v3, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    .line 2464
    .local v11, "networkTemplate":I
    const-string/jumbo v15, "subscriberId"

    invoke-interface {v3, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2466
    .local v15, "subscriberId":Ljava/lang/String;
    const/16 v6, 0x9

    if-lt v7, v6, :cond_3

    .line 2467
    const-string/jumbo v6, "networkId"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2467
    .local v6, "networkId":Ljava/lang/String;
    goto :goto_2

    .line 2469
    .end local v6    # "networkId":Ljava/lang/String;
    :cond_3
    move-object v6, v0

    .line 2472
    .restart local v6    # "networkId":Ljava/lang/String;
    :goto_2
    const/16 v13, 0xb

    if-lt v7, v13, :cond_4

    .line 2473
    const-string v13, "cycleStart"

    invoke-static {v3, v13}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2474
    .local v13, "start":Ljava/lang/String;
    const-string v14, "cycleEnd"

    invoke-static {v3, v14}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2475
    .local v14, "end":Ljava/lang/String;
    const-string v10, "cyclePeriod"

    invoke-static {v3, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2476
    .local v10, "period":Ljava/lang/String;
    new-instance v12, Landroid/util/RecurrenceRule;

    .line 2477
    invoke-static {v13}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 2478
    move-object/from16 v21, v13

    invoke-static {v14}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v13

    .line 2479
    .end local v13    # "start":Ljava/lang/String;
    .local v21, "start":Ljava/lang/String;
    move-object/from16 v22, v14

    invoke-static {v10}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v14

    .line 2479
    .end local v14    # "end":Ljava/lang/String;
    .local v22, "end":Ljava/lang/String;
    invoke-direct {v12, v0, v13, v14}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    .line 2479
    .end local v10    # "period":Ljava/lang/String;
    .end local v21    # "start":Ljava/lang/String;
    .end local v22    # "end":Ljava/lang/String;
    move-object v0, v12

    .line 2480
    .local v0, "cycleRule":Landroid/util/RecurrenceRule;
    nop

    .line 2488
    move-object/from16 v22, v0

    const/4 v12, 0x0

    goto :goto_4

    .line 2481
    .end local v0    # "cycleRule":Landroid/util/RecurrenceRule;
    :cond_4
    const-string v0, "cycleDay"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 2483
    .local v0, "cycleDay":I
    const/4 v10, 0x6

    if-lt v7, v10, :cond_5

    .line 2484
    const-string v10, "cycleTimezone"

    const/4 v12, 0x0

    invoke-interface {v3, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2484
    .local v10, "cycleTimezone":Ljava/lang/String;
    goto :goto_3

    .line 2486
    .end local v10    # "cycleTimezone":Ljava/lang/String;
    :cond_5
    const/4 v12, 0x0

    const-string v10, "UTC"

    .line 2488
    .restart local v10    # "cycleTimezone":Ljava/lang/String;
    :goto_3
    invoke-static {v10}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v13

    .line 2488
    .end local v0    # "cycleDay":I
    .end local v10    # "cycleTimezone":Ljava/lang/String;
    move-object/from16 v22, v13

    .line 2490
    .local v22, "cycleRule":Landroid/util/RecurrenceRule;
    :goto_4
    const-string/jumbo v0, "warningBytes"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v23

    .line 2491
    .local v23, "warningBytes":J
    const-string/jumbo v0, "limitBytes"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v25

    .line 2493
    .local v25, "limitBytes":J
    const/4 v0, 0x5

    if-lt v7, v0, :cond_6

    .line 2494
    const-string/jumbo v10, "lastLimitSnooze"

    invoke-static {v3, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v13

    .line 2498
    .local v13, "lastLimitSnooze":J
    .local v29, "lastLimitSnooze":J
    :goto_5
    move-wide/from16 v29, v13

    goto :goto_6

    .line 2495
    .end local v13    # "lastLimitSnooze":J
    .end local v29    # "lastLimitSnooze":J
    :cond_6
    const/4 v10, 0x2

    if-lt v7, v10, :cond_7

    .line 2496
    const-string/jumbo v10, "lastSnooze"

    invoke-static {v3, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_5

    .line 2498
    :cond_7
    const-wide/16 v29, -0x1

    .line 2501
    .restart local v29    # "lastLimitSnooze":J
    :goto_6
    const/4 v10, 0x4

    if-lt v7, v10, :cond_8

    .line 2502
    const-string/jumbo v10, "metered"

    invoke-static {v3, v10}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    .line 2502
    .local v10, "metered":Z
    goto :goto_7

    .line 2504
    .end local v10    # "metered":Z
    :cond_8
    const/4 v10, 0x1

    if-eq v11, v10, :cond_9

    .line 2509
    const/16 v31, 0x0

    goto :goto_8

    .line 2506
    :cond_9
    const/4 v10, 0x1

    .line 2507
    .restart local v10    # "metered":Z
    nop

    .line 2509
    .end local v10    # "metered":Z
    .local v31, "metered":Z
    :goto_7
    move/from16 v31, v10

    .line 2513
    :goto_8
    if-lt v7, v0, :cond_a

    .line 2514
    const-string/jumbo v0, "lastWarningSnooze"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v13

    .line 2516
    .local v13, "lastWarningSnooze":J
    move-wide/from16 v27, v13

    goto :goto_9

    .line 2516
    .end local v13    # "lastWarningSnooze":J
    :cond_a
    const-wide/16 v27, -0x1

    .line 2519
    .local v27, "lastWarningSnooze":J
    :goto_9
    const/4 v0, 0x7

    if-lt v7, v0, :cond_b

    .line 2520
    const-string/jumbo v0, "inferred"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 2522
    .local v0, "inferred":Z
    move/from16 v32, v0

    goto :goto_a

    .line 2522
    .end local v0    # "inferred":Z
    :cond_b
    const/16 v32, 0x0

    .line 2525
    .local v32, "inferred":Z
    :goto_a
    new-instance v0, Landroid/net/NetworkTemplate;

    invoke-direct {v0, v11, v15, v6}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2527
    .local v0, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2528
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    new-instance v13, Landroid/net/NetworkPolicy;

    move-object/from16 v20, v13

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v32}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    invoke-virtual {v10, v0, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2533
    .end local v0    # "template":Landroid/net/NetworkTemplate;
    .end local v6    # "networkId":Ljava/lang/String;
    .end local v11    # "networkTemplate":I
    .end local v15    # "subscriberId":Ljava/lang/String;
    .end local v22    # "cycleRule":Landroid/util/RecurrenceRule;
    .end local v23    # "warningBytes":J
    .end local v25    # "limitBytes":J
    .end local v27    # "lastWarningSnooze":J
    .end local v29    # "lastLimitSnooze":J
    .end local v31    # "metered":Z
    .end local v32    # "inferred":Z
    :cond_c
    nop

    .line 2606
    move/from16 v33, v7

    goto/16 :goto_f

    .line 2533
    :cond_d
    move-object v12, v0

    const-string/jumbo v0, "subscription-plan"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2534
    const-string v0, "cycleStart"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2535
    .local v0, "start":Ljava/lang/String;
    const-string v6, "cycleEnd"

    invoke-static {v3, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2536
    .local v6, "end":Ljava/lang/String;
    const-string v10, "cyclePeriod"

    invoke-static {v3, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2537
    .local v10, "period":Ljava/lang/String;
    new-instance v11, Landroid/telephony/SubscriptionPlan$Builder;

    .line 2538
    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v13

    .line 2539
    invoke-static {v6}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v14

    .line 2540
    invoke-static {v10}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v15

    invoke-direct {v11, v13, v14, v15}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    .line 2541
    .local v11, "builder":Landroid/telephony/SubscriptionPlan$Builder;
    const-string/jumbo v13, "title"

    invoke-static {v3, v13}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2542
    const-string/jumbo v13, "summary"

    invoke-static {v3, v13}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2544
    const-string/jumbo v13, "limitBytes"

    const-wide/16 v14, -0x1

    invoke-static {v3, v13, v14, v15}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 2546
    .local v13, "limitBytes":J
    const-string/jumbo v15, "limitBehavior"

    const/4 v12, -0x1

    invoke-static {v3, v15, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    .line 2548
    .local v15, "limitBehavior":I
    const-wide/16 v16, -0x1

    cmp-long v18, v13, v16

    if-eqz v18, :cond_e

    if-eq v15, v12, :cond_e

    .line 2550
    invoke-virtual {v11, v13, v14, v15}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2553
    :cond_e
    const-string/jumbo v12, "usageBytes"

    move-object/from16 v34, v6

    move/from16 v33, v7

    const-wide/16 v6, -0x1

    invoke-static {v3, v12, v6, v7}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    .line 2553
    .end local v6    # "end":Ljava/lang/String;
    .end local v7    # "version":I
    .local v33, "version":I
    .local v34, "end":Ljava/lang/String;
    move-wide/from16 v35, v16

    .line 2555
    .local v35, "usageBytes":J
    const-string/jumbo v12, "usageTime"

    invoke-static {v3, v12, v6, v7}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v37, v16

    .line 2557
    .local v37, "usageTime":J
    move-wide/from16 v39, v13

    move-wide/from16 v12, v35

    cmp-long v14, v12, v6

    .line 2557
    .end local v13    # "limitBytes":J
    .end local v35    # "usageBytes":J
    .local v12, "usageBytes":J
    .local v39, "limitBytes":J
    if-eqz v14, :cond_f

    move/from16 v41, v15

    move-wide/from16 v14, v37

    cmp-long v6, v14, v6

    .line 2557
    .end local v15    # "limitBehavior":I
    .end local v37    # "usageTime":J
    .local v14, "usageTime":J
    .local v41, "limitBehavior":I
    if-eqz v6, :cond_10

    .line 2559
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    goto :goto_b

    .line 2562
    .end local v14    # "usageTime":J
    .end local v41    # "limitBehavior":I
    .restart local v15    # "limitBehavior":I
    .restart local v37    # "usageTime":J
    :cond_f
    move/from16 v41, v15

    move-wide/from16 v14, v37

    .line 2562
    .end local v15    # "limitBehavior":I
    .end local v37    # "usageTime":J
    .restart local v14    # "usageTime":J
    .restart local v41    # "limitBehavior":I
    :cond_10
    :goto_b
    const-string/jumbo v6, "subId"

    invoke-static {v3, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 2563
    .local v6, "subId":I
    invoke-virtual {v11}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v7

    .line 2564
    .local v7, "plan":Landroid/telephony/SubscriptionPlan;
    move-object/from16 v42, v0

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 2564
    .end local v0    # "start":Ljava/lang/String;
    .local v42, "start":Ljava/lang/String;
    move-object/from16 v43, v10

    const-class v10, Landroid/telephony/SubscriptionPlan;

    .line 2564
    .end local v10    # "period":Ljava/lang/String;
    .local v43, "period":Ljava/lang/String;
    move-object/from16 v44, v11

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 2565
    .end local v11    # "builder":Landroid/telephony/SubscriptionPlan$Builder;
    .local v44, "builder":Landroid/telephony/SubscriptionPlan$Builder;
    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/telephony/SubscriptionPlan;

    .line 2564
    invoke-static {v10, v11, v7}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/telephony/SubscriptionPlan;

    invoke-virtual {v0, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2567
    const-string/jumbo v0, "ownerPackage"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2568
    .local v0, "ownerPackage":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v10, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2570
    .end local v0    # "ownerPackage":Ljava/lang/String;
    .end local v6    # "subId":I
    .end local v7    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v12    # "usageBytes":J
    .end local v14    # "usageTime":J
    .end local v34    # "end":Ljava/lang/String;
    .end local v39    # "limitBytes":J
    .end local v41    # "limitBehavior":I
    .end local v42    # "start":Ljava/lang/String;
    .end local v43    # "period":Ljava/lang/String;
    .end local v44    # "builder":Landroid/telephony/SubscriptionPlan$Builder;
    goto/16 :goto_f

    .line 2570
    .end local v33    # "version":I
    .local v7, "version":I
    :cond_11
    move/from16 v33, v7

    .line 2570
    .end local v7    # "version":I
    .restart local v33    # "version":I
    const-string/jumbo v0, "uid-policy"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2571
    const-string/jumbo v0, "uid"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 2572
    .local v0, "uid":I
    const-string/jumbo v6, "policy"

    invoke-static {v3, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 2574
    .local v6, "policy":I
    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2575
    const/4 v7, 0x0

    invoke-direct {v1, v0, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto :goto_c

    .line 2577
    :cond_12
    const-string v7, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unable to apply policy to UID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "; ignoring"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    .end local v0    # "uid":I
    .end local v6    # "policy":I
    :goto_c
    goto/16 :goto_f

    :cond_13
    const-string v0, "app-policy"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2580
    const-string v0, "appId"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 2581
    .local v0, "appId":I
    const-string/jumbo v6, "policy"

    invoke-static {v3, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 2585
    .restart local v6    # "policy":I
    const/4 v7, 0x0

    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    .line 2586
    .local v10, "uid":I
    invoke-static {v10}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 2587
    invoke-direct {v1, v10, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto :goto_d

    .line 2589
    :cond_14
    const-string v7, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unable to apply policy to UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "; ignoring"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    .end local v0    # "appId":I
    .end local v6    # "policy":I
    .end local v10    # "uid":I
    :goto_d
    goto :goto_f

    :cond_15
    const-string/jumbo v0, "whitelist"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2592
    const/4 v0, 0x1

    .line 2592
    .end local v5    # "insideWhitelist":Z
    .local v0, "insideWhitelist":Z
    goto :goto_e

    .line 2593
    .end local v0    # "insideWhitelist":Z
    .restart local v5    # "insideWhitelist":Z
    :cond_16
    const-string/jumbo v0, "restrict-background"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz v5, :cond_17

    .line 2594
    const-string/jumbo v0, "uid"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 2595
    .local v0, "uid":I
    const/4 v6, 0x1

    invoke-virtual {v4, v0, v6}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2596
    .end local v0    # "uid":I
    goto :goto_f

    :cond_17
    const-string/jumbo v0, "revoked-restrict-background"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    if-eqz v5, :cond_19

    .line 2597
    const-string/jumbo v0, "uid"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 2598
    .restart local v0    # "uid":I
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2599
    .end local v0    # "uid":I
    goto :goto_f

    .line 2600
    .end local v33    # "version":I
    .restart local v7    # "version":I
    :cond_18
    move/from16 v33, v7

    .line 2600
    .end local v7    # "version":I
    .restart local v33    # "version":I
    if-ne v9, v11, :cond_19

    .line 2601
    const-string/jumbo v0, "whitelist"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2602
    const/4 v0, 0x0

    .line 2606
    .end local v8    # "tag":Ljava/lang/String;
    .end local v33    # "version":I
    .restart local v7    # "version":I
    :goto_e
    move v5, v0

    :cond_19
    :goto_f
    move/from16 v7, v33

    .line 2453
    :goto_10
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2608
    :cond_1a
    move/from16 v33, v7

    .line 2608
    .end local v7    # "version":I
    .restart local v33    # "version":I
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2609
    .local v0, "size":I
    const/4 v6, 0x0

    .line 2609
    .local v6, "i":I
    :goto_11
    if-ge v6, v0, :cond_1e

    .line 2610
    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    .line 2611
    .local v7, "uid":I
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 2612
    .local v8, "policy":I
    and-int/lit8 v10, v8, 0x1

    if-eqz v10, :cond_1b

    .line 2613
    const-string v10, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ignoring restrict-background-whitelist for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " because its policy is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2614
    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2613
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    nop

    .line 2609
    const/4 v11, 0x0

    goto :goto_12

    .line 2617
    :cond_1b
    invoke-static {v7}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 2618
    or-int/lit8 v10, v8, 0x4

    .line 2619
    .local v10, "newPolicy":I
    sget-boolean v11, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v11, :cond_1c

    .line 2620
    const-string v11, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "new policy for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    :cond_1c
    const/4 v11, 0x0

    invoke-direct {v1, v7, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 2622
    .end local v10    # "newPolicy":I
    goto :goto_12

    .line 2623
    :cond_1d
    const/4 v11, 0x0

    const-string v10, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unable to update policy on UID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2609
    .end local v7    # "uid":I
    .end local v8    # "policy":I
    :goto_12
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_11

    .line 2633
    .end local v0    # "size":I
    .end local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    .end local v5    # "insideWhitelist":Z
    .end local v6    # "i":I
    .end local v9    # "type":I
    .end local v33    # "version":I
    :catchall_0
    move-exception v0

    goto :goto_14

    .line 2630
    :catch_0
    move-exception v0

    .line 2631
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "NetworkPolicy"

    const-string/jumbo v4, "problem reading network policy"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2631
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_13

    .line 2627
    :catch_1
    move-exception v0

    .line 2629
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeDefaultBackgroundDataUL()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2633
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1e
    :goto_13
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2634
    nop

    .line 2635
    return-void

    .line 2633
    :goto_14
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private registerGeneralReceiver()V
    .locals 3

    .line 1133
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1134
    const-string v0, "NetworkPolicy"

    const-string v1, "Fatal Exception # registerGeneralReceiver # mContext=null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    return-void

    .line 1138
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1139
    .local v0, "filter":Landroid/content/IntentFilter;
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1140
    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->ACTION_TEST_COMPRESS_FG_RESTRICT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1142
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1143
    return-void
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .line 5039
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5042
    :catch_0
    move-exception v0

    goto :goto_1

    .line 5040
    :catch_1
    move-exception v0

    .line 5041
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem removing interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5044
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 5045
    :goto_1
    return-void
.end method

.method private removeInterfaceQuotaAsync(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 5034
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5035
    return-void
.end method

.method private removeUidStateUL(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 3968
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 3969
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 3970
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 3971
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3972
    const/16 v2, 0x12

    if-eq v1, v2, :cond_2

    .line 3973
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V

    .line 3975
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v2, :cond_0

    .line 3976
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 3978
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v2, :cond_1

    .line 3979
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 3981
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 3982
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V

    .line 3985
    .end local v1    # "oldUidState":I
    :cond_2
    return-void
.end method

.method private resetUidFirewallRules(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 5206
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5207
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5208
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x3

    .line 5209
    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5210
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V

    .line 5211
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5214
    :catch_0
    move-exception v0

    goto :goto_1

    .line 5212
    :catch_1
    move-exception v0

    .line 5213
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem resetting firewall uid rules for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5216
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 5217
    :goto_1
    return-void
.end method

.method private resolveNetworkPolicyConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 8
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 737
    if-nez p1, :cond_0

    .line 738
    return-void

    .line 742
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->sConfigLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    const/4 v1, 0x0

    move v2, v1

    .line 743
    .local v2, "index":I
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 744
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 745
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "config_FGNetworkRestrict"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 746
    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 747
    .local v4, "enableFGNetworkRestrictJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lcom/android/server/net/NetworkPolicyManagerService;->mEnableFGNetworkRestrictFeature:Z

    .line 748
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] mEnableFGNetworkRestrictFeature: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/server/net/NetworkPolicyManagerService;->mEnableFGNetworkRestrictFeature:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    .end local v4    # "enableFGNetworkRestrictJsonArray":Lorg/json/JSONArray;
    :cond_1
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "config_CloseTempWhiteSocket"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 751
    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 752
    .restart local v4    # "enableFGNetworkRestrictJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lcom/android/server/net/NetworkPolicyManagerService;->mEnableCloseTempWhiteSocketFeature:Z

    .line 753
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] mEnableCloseTempWhiteSocketFeature: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/server/net/NetworkPolicyManagerService;->mEnableCloseTempWhiteSocketFeature:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "enableFGNetworkRestrictJsonArray":Lorg/json/JSONArray;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 756
    .end local v2    # "index":I
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    :try_start_2
    const-string v0, "NetworkPolicy"

    const-string v1, "[OnlineConfig] NetworkPolicy updated complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 756
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 758
    :catch_1
    move-exception v0

    .line 759
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    nop

    .line 763
    :goto_2
    return-void
.end method

.method private sendRestrictBackgroundChangedMsg()V
    .locals 4

    .line 3199
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3200
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3201
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3202
    return-void
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 5025
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5028
    :catch_0
    move-exception v0

    goto :goto_1

    .line 5026
    :catch_1
    move-exception v0

    .line 5027
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem setting interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5030
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 5031
    :goto_1
    return-void
.end method

.method private setInterfaceQuotaAsync(Ljava/lang/String;J)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 5019
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    shr-long v1, p2, v1

    long-to-int v1, v1

    const-wide/16 v2, -0x1

    and-long/2addr v2, p2

    long-to-int v2, v2

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5020
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5021
    return-void
.end method

.method private setMeteredNetworkBlacklist(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .line 5048
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMeteredNetworkBlacklist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5050
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5053
    :catch_0
    move-exception v0

    goto :goto_1

    .line 5051
    :catch_1
    move-exception v0

    .line 5052
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem setting blacklist ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") rules for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5055
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 5056
    :goto_1
    return-void
.end method

.method private setMeteredNetworkWhitelist(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .line 5059
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMeteredNetworkWhitelist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5061
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5064
    :catch_0
    move-exception v0

    goto :goto_1

    .line 5062
    :catch_1
    move-exception v0

    .line 5063
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem setting whitelist ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") rules for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5066
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 5067
    :goto_1
    return-void
.end method

.method private setMeteredRestrictedPackagesInternal(Ljava/util/Set;I)V
    .locals 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 5528
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5529
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 5530
    .local v1, "newRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5531
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidForPackage(Ljava/lang/String;I)I

    move-result v4

    .line 5532
    .local v4, "uid":I
    if-ltz v4, :cond_0

    .line 5533
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5535
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    :cond_0
    goto :goto_0

    .line 5536
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 5537
    .local v2, "oldRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5538
    invoke-direct {p0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleRestrictedPackagesChangeUL(Ljava/util/Set;Ljava/util/Set;)V

    .line 5539
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, v1}, Lcom/android/server/net/NetworkPolicyLogger;->meteredRestrictedPkgsChanged(Ljava/util/Set;)V

    .line 5540
    .end local v1    # "newRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "oldRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-exit v0

    .line 5541
    return-void

    .line 5540
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setNetworkPolicies_internal([Landroid/net/NetworkPolicy;)V
    .locals 5
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .line 2912
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2914
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2916
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2917
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2918
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 2919
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 2920
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 2921
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 2922
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2923
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2924
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2926
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2927
    nop

    .line 2928
    return-void

    .line 2923
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4

    .line 2924
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2926
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    .line 2016
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2017
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2018
    return-void
.end method

.method private setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V
    .locals 15
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    move-object v1, p0

    .line 2024
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 2028
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v2, v0

    .line 2029
    .local v2, "matchingSubIds":Landroid/util/IntArray;
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2030
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_0
    :try_start_0
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2031
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2032
    .local v5, "subId":I
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    .line 2034
    .local v10, "subscriberId":Ljava/lang/String;
    new-instance v6, Landroid/net/NetworkIdentity;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v7, v6

    invoke-direct/range {v7 .. v14}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2038
    .local v6, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v7, p1

    :try_start_1
    invoke-virtual {v7, v6}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2039
    invoke-virtual {v2, v5}, Landroid/util/IntArray;->add(I)V

    .line 2030
    .end local v5    # "subId":I
    .end local v6    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v10    # "subscriberId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2042
    .end local v4    # "i":I
    :cond_1
    move-object/from16 v7, p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2045
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 2046
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    nop

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 2047
    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 2048
    .local v4, "subId":I
    move/from16 v5, p2

    invoke-virtual {v3, v5, v4}, Landroid/telephony/TelephonyManager;->setPolicyDataEnabled(ZI)V

    .line 2046
    .end local v4    # "subId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2042
    .end local v0    # "i":I
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v7, p1

    :goto_2
    move/from16 v5, p2

    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 2051
    .end local v2    # "matchingSubIds":Landroid/util/IntArray;
    :cond_2
    move-object/from16 v7, p1

    :cond_3
    move/from16 v5, p2

    return-void
.end method

.method private setRestrictBackgroundUL(Z)V
    .locals 6
    .param p1, "restrictBackground"    # Z

    .line 3156
    const-string/jumbo v0, "setRestrictBackgroundUL"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3158
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-ne p1, v0, :cond_0

    .line 3160
    const-string v0, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundUL: already "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3194
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3161
    return-void

    .line 3163
    :cond_0
    :try_start_1
    const-string v0, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundUL(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 3165
    .local v0, "oldRestrictBackground":Z
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 3169
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3171
    :try_start_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setDataSaverModeEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3172
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not change Data Saver Mode on NMS to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3194
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3177
    return-void

    .line 3181
    :cond_1
    goto :goto_0

    .line 3179
    :catch_0
    move-exception v3

    .line 3183
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->sendRestrictBackgroundChangedMsg()V

    .line 3184
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v3, v0, v4}, Lcom/android/server/net/NetworkPolicyLogger;->restrictBackgroundChanged(ZZ)V

    .line 3186
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    iget-boolean v3, v3, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    if-eqz v3, :cond_2

    .line 3187
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 3189
    :cond_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3190
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 3191
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 3192
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3194
    .end local v0    # "oldRestrictBackground":Z
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3195
    nop

    .line 3196
    return-void

    .line 3192
    .restart local v0    # "oldRestrictBackground":Z
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3194
    .end local v0    # "oldRestrictBackground":Z
    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setUidFirewallRule(III)V
    .locals 5
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .line 5143
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUidFirewallRule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5148
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 5149
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 5173
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 5150
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 5151
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 5152
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 5153
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 5158
    :cond_3
    :goto_0
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v2, :cond_4

    .line 5159
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUidFirewallRule chain = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rule "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5163
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5164
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->uidFirewallRuleChanged(III)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 5169
    :catch_0
    move-exception v2

    .line 5170
    .local v2, "oobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_2
    const-string v3, "NetworkPolicy"

    const-string/jumbo v4, "problem setting firewall uid rules "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5170
    .end local v2    # "oobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_2

    .line 5167
    :catch_1
    move-exception v2

    .line 5171
    :goto_1
    goto :goto_2

    .line 5165
    :catch_2
    move-exception v2

    .line 5166
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "NetworkPolicy"

    const-string/jumbo v4, "problem setting firewall uid rules"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5166
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 5173
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5174
    nop

    .line 5175
    return-void

    .line 5173
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V
    .locals 7
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    .line 5106
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->adjustUidRulesForStandby(ILandroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 5107
    .local v0, "uidRulesTemp":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 5108
    .local v1, "size":I
    new-array v2, v1, [I

    .line 5109
    .local v2, "uids":[I
    new-array v3, v1, [I

    .line 5110
    .local v3, "rules":[I
    add-int/lit8 v4, v1, -0x1

    .line 5110
    .local v4, "index":I
    :goto_0
    if-ltz v4, :cond_0

    .line 5111
    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    aput v5, v2, v4

    .line 5112
    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    aput v5, v3, v4

    .line 5110
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 5115
    .end local v4    # "index":I
    :cond_0
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUidFirewallRules uidRules "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " chain ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5116
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V

    .line 5117
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/server/net/NetworkPolicyLogger;->firewallRulesChanged(I[I[I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5117
    .end local v0    # "uidRulesTemp":Landroid/util/SparseIntArray;
    .end local v1    # "size":I
    .end local v2    # "uids":[I
    .end local v3    # "rules":[I
    goto :goto_1

    .line 5120
    :catch_0
    move-exception v0

    goto :goto_2

    .line 5118
    :catch_1
    move-exception v0

    .line 5119
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem setting firewall uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5122
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    nop

    .line 5123
    :goto_2
    return-void
.end method

.method private setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    .locals 1
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;
    .param p3, "toggle"    # I

    .line 5091
    if-eqz p2, :cond_0

    .line 5092
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V

    .line 5094
    :cond_0
    if-eqz p3, :cond_2

    .line 5095
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 5097
    :cond_2
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIIZ)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "oldPolicy"    # I
    .param p3, "policy"    # I
    .param p4, "persist"    # Z

    .line 2865
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 2868
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2869
    const/4 v0, 0x0

    .local v0, "notifyApp":Z
    goto/16 :goto_8

    .line 2871
    .end local v0    # "notifyApp":Z
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 2872
    .local v2, "wasBlacklisted":Z
    :goto_0
    if-ne p3, v1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    .line 2873
    .local v3, "isBlacklisted":Z
    :goto_1
    const/4 v4, 0x4

    if-ne p2, v4, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v0

    .line 2874
    .local v5, "wasWhitelisted":Z
    :goto_2
    if-ne p3, v4, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    move v4, v0

    .line 2875
    .local v4, "isWhitelisted":Z
    :goto_3
    if-nez v2, :cond_6

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v6, :cond_5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    move v6, v0

    goto :goto_5

    :cond_6
    :goto_4
    move v6, v1

    .line 2876
    .local v6, "wasBlocked":Z
    :goto_5
    if-nez v3, :cond_8

    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v7, :cond_7

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    move v7, v0

    goto :goto_7

    :cond_8
    :goto_6
    move v7, v1

    .line 2877
    .local v7, "isBlocked":Z
    :goto_7
    if-eqz v5, :cond_b

    if-eqz v4, :cond_9

    if-eqz v3, :cond_b

    :cond_9
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 2878
    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 2879
    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_b

    .line 2880
    sget-boolean v8, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v8, :cond_a

    .line 2881
    const-string v8, "NetworkPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to revoked restrict background whitelist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    :cond_a
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2884
    :cond_b
    if-eq v6, v7, :cond_c

    move v0, v1

    nop

    .line 2886
    .end local v2    # "wasBlacklisted":Z
    .end local v3    # "isBlacklisted":Z
    .end local v4    # "isWhitelisted":Z
    .end local v5    # "wasWhitelisted":Z
    .end local v6    # "wasBlocked":Z
    .end local v7    # "isBlocked":Z
    .restart local v0    # "notifyApp":Z
    :cond_c
    :goto_8
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, p1, p3, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2887
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2888
    if-eqz p4, :cond_d

    .line 2889
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2890
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2891
    monitor-exit v1

    goto :goto_9

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2893
    :cond_d
    :goto_9
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .line 2896
    if-nez p2, :cond_0

    .line 2897
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 2899
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2903
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 2904
    if-eqz p3, :cond_1

    .line 2905
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2906
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2907
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2909
    :cond_1
    :goto_1
    return-void
.end method

.method private static updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .locals 3
    .param p0, "lastValues"    # Landroid/util/SparseBooleanArray;
    .param p1, "newValue"    # Z
    .param p2, "network"    # Landroid/net/Network;

    .line 1387
    iget v0, p2, Landroid/net/Network;->netId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 1388
    .local v0, "lastValue":Z
    if-ne v0, p1, :cond_1

    iget v2, p2, Landroid/net/Network;->netId:I

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1389
    .local v1, "changed":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 1390
    iget v2, p2, Landroid/net/Network;->netId:I

    invoke-virtual {p0, v2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1392
    :cond_2
    return v1
.end method

.method private updateDefaultMobilePolicyAL(ILandroid/net/NetworkPolicy;)Z
    .locals 20
    .param p1, "subId"    # I
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2378
    move-object/from16 v2, p2

    iget-boolean v3, v2, Landroid/net/NetworkPolicy;->inferred:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 2379
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring user-defined policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    :cond_0
    return v4

    .line 2383
    :cond_1
    new-instance v3, Landroid/net/NetworkPolicy;

    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v8, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-wide v9, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    iget-wide v11, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v13, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    iget-wide v5, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    iget-boolean v15, v2, Landroid/net/NetworkPolicy;->metered:Z

    iget-boolean v4, v2, Landroid/net/NetworkPolicy;->inferred:Z

    move-wide/from16 v16, v5

    move-object v6, v3

    move v5, v15

    move-wide/from16 v15, v16

    move/from16 v17, v5

    move/from16 v18, v4

    invoke-direct/range {v6 .. v18}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    .line 2387
    .local v3, "original":Landroid/net/NetworkPolicy;
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/telephony/SubscriptionPlan;

    .line 2388
    .local v4, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2389
    const/4 v5, 0x0

    aget-object v6, v4, v5

    .line 2390
    .local v6, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {v6}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v5

    iput-object v5, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 2391
    invoke-virtual {v6}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v7

    .line 2392
    .local v7, "planLimitBytes":J
    const-wide/16 v9, -0x1

    cmp-long v5, v7, v9

    if-nez v5, :cond_2

    .line 2393
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v9

    iput-wide v9, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2394
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v9

    iput-wide v9, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_0

    .line 2395
    :cond_2
    const-wide v11, 0x7fffffffffffffffL

    cmp-long v5, v7, v11

    if-nez v5, :cond_3

    .line 2396
    iput-wide v9, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2397
    iput-wide v9, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_0

    .line 2399
    :cond_3
    const-wide/16 v11, 0x9

    mul-long/2addr v11, v7

    const-wide/16 v13, 0xa

    div-long/2addr v11, v13

    iput-wide v11, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2400
    invoke-virtual {v6}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 2406
    iput-wide v9, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .end local v6    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v7    # "planLimitBytes":J
    goto :goto_0

    .line 2403
    .restart local v6    # "plan":Landroid/telephony/SubscriptionPlan;
    .restart local v7    # "planLimitBytes":J
    :pswitch_0
    iput-wide v7, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2404
    nop

    .line 2410
    .end local v6    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v7    # "planLimitBytes":J
    :goto_0
    goto :goto_2

    .line 2411
    :cond_4
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v5, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 2413
    .local v5, "config":Landroid/os/PersistableBundle;
    iget-object v6, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v6}, Landroid/util/RecurrenceRule;->isMonthly()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2414
    iget-object v6, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v6, v6, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v6

    .local v6, "currentCycleDay":I
    goto :goto_1

    .line 2416
    .end local v6    # "currentCycleDay":I
    :cond_5
    const/4 v6, -0x1

    .line 2418
    .restart local v6    # "currentCycleDay":I
    :goto_1
    invoke-virtual {v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I

    move-result v7

    .line 2419
    .local v7, "cycleDay":I
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v8

    iput-object v8, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 2420
    iget-wide v8, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v5, v8, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2421
    iget-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v5, v8, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2424
    .end local v5    # "config":Landroid/os/PersistableBundle;
    .end local v6    # "currentCycleDay":I
    .end local v7    # "cycleDay":I
    :goto_2
    invoke-virtual {v2, v3}, Landroid/net/NetworkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2425
    const/4 v5, 0x0

    return v5

    .line 2427
    :cond_6
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    const/4 v5, 0x1

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateNetworkStats(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    .line 3989
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3990
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNetworkStats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3991
    if-eqz p2, :cond_0

    const-string v3, "F"

    goto :goto_0

    :cond_0
    const-string v3, "B"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3990
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3994
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/net/NetworkStatsManagerInternal;->setUidForeground(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3996
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3997
    nop

    .line 3998
    return-void

    .line 3996
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateNetworksInternal()V
    .locals 3

    .line 1773
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateSubscriptions()V

    .line 1775
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1776
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1777
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL()V

    .line 1778
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 1779
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1780
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1781
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1782
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1783
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1784
    return-void

    .line 1782
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 1783
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "oldUidState"    # I
    .param p3, "newUidState"    # I

    .line 4002
    nop

    .line 4003
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v0

    .line 4004
    .local v0, "oldForeground":Z
    nop

    .line 4005
    invoke-static {p3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v1

    .line 4006
    .local v1, "newForeground":Z
    if-eq v0, v1, :cond_0

    .line 4007
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 4009
    :cond_0
    return-void
.end method

.method private updateRestrictionRulesForUidUL(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 4458
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4459
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4460
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4463
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4466
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 4467
    return-void
.end method

.method private updateRulesForAllAppsUL(I)V
    .locals 17
    .param p1, "type"    # I

    move-object/from16 v1, p0

    .line 4314
    move/from16 v2, p1

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRulesForRestrictPowerUL-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4320
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v5, v0

    .line 4324
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v0, "list-users"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4326
    :try_start_1
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v0

    .line 4328
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4329
    nop

    .line 4328
    nop

    .line 4330
    const-string/jumbo v0, "list-uids"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4332
    const v0, 0x4c0200

    :try_start_3
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4337
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4338
    nop

    .line 4337
    nop

    .line 4340
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 4341
    .local v7, "usersSize":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 4342
    .local v8, "appsSize":I
    const/4 v10, 0x0

    .line 4342
    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_2

    .line 4343
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 4344
    .local v11, "user":Landroid/content/pm/UserInfo;
    const/4 v12, 0x0

    .line 4344
    .local v12, "j":I
    :goto_1
    if-ge v12, v8, :cond_1

    .line 4345
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ApplicationInfo;

    .line 4346
    .local v13, "app":Landroid/content/pm/ApplicationInfo;
    iget v14, v11, Landroid/content/pm/UserInfo;->id:I

    iget v15, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14, v15}, Landroid/os/UserHandle;->getUid(II)I

    move-result v14

    .line 4347
    .local v14, "uid":I
    packed-switch v2, :pswitch_data_0

    .line 4355
    const-string v15, "NetworkPolicy"

    goto :goto_2

    .line 4352
    :pswitch_0
    invoke-direct {v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4353
    goto :goto_3

    .line 4349
    :pswitch_1
    invoke-direct {v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 4350
    goto :goto_3

    .line 4355
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type for updateRulesForAllApps: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4344
    .end local v13    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "uid":I
    :goto_3
    add-int/lit8 v12, v12, 0x1

    const-wide/32 v3, 0x200000

    goto :goto_1

    .line 4342
    .end local v11    # "user":Landroid/content/pm/UserInfo;
    .end local v12    # "j":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    const-wide/32 v3, 0x200000

    goto :goto_0

    .line 4360
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "usersSize":I
    .end local v8    # "appsSize":I
    .end local v10    # "i":I
    :cond_2
    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4361
    nop

    .line 4362
    return-void

    .line 4337
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v0

    const-wide/32 v3, 0x200000

    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    move-object v3, v0

    throw v3

    .line 4328
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_1
    move-exception v0

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4360
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :catchall_2
    move-exception v0

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRulesForDataUsageRestrictionsUL(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 4509
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForDataUsageRestrictionsUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4514
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsULInner(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4516
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4517
    nop

    .line 4518
    return-void

    .line 4516
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForDataUsageRestrictionsULInner(I)V
    .locals 14
    .param p1, "uid"    # I

    .line 4521
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4522
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no need to update restrict data rules for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4523
    :cond_0
    return-void

    .line 4526
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4527
    .local v0, "uidPolicy":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 4528
    .local v2, "oldUidRules":I
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictBackgroundUL(I)Z

    move-result v3

    .line 4529
    .local v3, "isForeground":Z
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isRestrictedByAdminUL(I)Z

    move-result v4

    .line 4531
    .local v4, "isRestrictedByAdmin":Z
    and-int/lit8 v5, v0, 0x1

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v1

    .line 4532
    .local v5, "isBlacklisted":Z
    :goto_0
    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v1

    .line 4533
    .local v7, "isWhitelisted":Z
    :goto_1
    and-int/lit8 v8, v2, 0xf

    .line 4534
    .local v8, "oldRule":I
    const/4 v9, 0x0

    .line 4537
    .local v9, "newRule":I
    if-eqz v4, :cond_4

    .line 4538
    const/4 v9, 0x4

    goto :goto_3

    .line 4539
    :cond_4
    if-eqz v3, :cond_7

    .line 4540
    if-nez v5, :cond_6

    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v10, :cond_5

    if-nez v7, :cond_5

    goto :goto_2

    .line 4542
    :cond_5
    if-eqz v7, :cond_9

    .line 4543
    const/4 v9, 0x1

    goto :goto_3

    .line 4541
    :cond_6
    :goto_2
    const/4 v9, 0x2

    goto :goto_3

    .line 4546
    :cond_7
    if-eqz v5, :cond_8

    .line 4547
    const/4 v9, 0x4

    goto :goto_3

    .line 4548
    :cond_8
    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v10, :cond_9

    if-eqz v7, :cond_9

    .line 4549
    const/4 v9, 0x1

    .line 4552
    :cond_9
    :goto_3
    and-int/lit16 v10, v2, 0xf0

    or-int/2addr v10, v9

    .line 4554
    .local v10, "newUidRules":I
    sget-boolean v11, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v11, :cond_a

    .line 4555
    const-string v11, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateRuleForRestrictBackgroundUL("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "): isForeground="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isBlacklisted="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isWhitelisted="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isRestrictedByAdmin="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", oldRule="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4560
    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", newRule="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4561
    invoke-static {v9}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", newUidRules="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4562
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", oldUidRules="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4563
    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4555
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4566
    :cond_a
    if-nez v10, :cond_b

    .line 4567
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v11, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_4

    .line 4569
    :cond_b
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v11, p1, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 4573
    :goto_4
    if-eq v9, v8, :cond_17

    .line 4574
    const/4 v11, 0x2

    invoke-static {v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 4578
    invoke-direct {p0, p1, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4582
    if-eqz v5, :cond_16

    .line 4583
    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    goto/16 :goto_9

    .line 4585
    :cond_c
    invoke-static {v8, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 4592
    if-nez v7, :cond_d

    .line 4593
    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4595
    :cond_d
    if-nez v5, :cond_e

    if-eqz v4, :cond_16

    .line 4596
    :cond_e
    invoke-direct {p0, p1, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    goto/16 :goto_9

    .line 4598
    :cond_f
    const/4 v11, 0x4

    invoke-static {v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v12

    if-nez v12, :cond_13

    .line 4599
    invoke-static {v8, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_6

    .line 4608
    :cond_10
    invoke-static {v9, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v1

    if-nez v1, :cond_12

    .line 4609
    invoke-static {v8, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_5

    .line 4614
    :cond_11
    const-string v1, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected change of metered UID state for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": foreground="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", whitelisted="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", blacklisted="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isRestrictedByAdmin="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", newRule="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4619
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", oldRule="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4620
    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4614
    invoke-static {v1, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 4611
    :cond_12
    :goto_5
    invoke-direct {p0, p1, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    goto :goto_9

    .line 4601
    :cond_13
    :goto_6
    if-nez v5, :cond_15

    if-eqz v4, :cond_14

    goto :goto_7

    :cond_14
    goto :goto_8

    :cond_15
    :goto_7
    move v1, v6

    :goto_8
    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    .line 4602
    invoke-static {v8, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz v7, :cond_16

    .line 4606
    invoke-direct {p0, p1, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4624
    :cond_16
    :goto_9
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, p1, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4626
    :cond_17
    return-void
.end method

.method private updateRulesForGlobalChangeAL(Z)V
    .locals 4
    .param p1, "restrictedNetworksChanged"    # Z

    .line 4262
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForGlobalChangeAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4264
    if-eqz p1, :cond_0

    const-string v3, "R"

    goto :goto_0

    :cond_0
    const-string v3, "-"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4263
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4267
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    .line 4268
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 4269
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V

    .line 4272
    if-eqz p1, :cond_2

    .line 4273
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 4274
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4277
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4278
    nop

    .line 4279
    return-void

    .line 4277
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForPowerRestrictionsUL(IIZ)I
    .locals 4
    .param p1, "uid"    # I
    .param p2, "oldUidRules"    # I
    .param p3, "paroled"    # Z

    .line 4668
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForPowerRestrictionsUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4671
    if-eqz p3, :cond_0

    const-string v3, "P"

    goto :goto_0

    :cond_0
    const-string v3, "-"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4669
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4674
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsULInner(IIZ)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4676
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4674
    return v2

    .line 4676
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForPowerRestrictionsUL(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 4647
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4649
    .local v0, "oldUidRules":I
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    move-result v1

    .line 4651
    .local v1, "newUidRules":I
    if-nez v1, :cond_0

    .line 4652
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 4654
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4656
    :goto_0
    return-void
.end method

.method private updateRulesForPowerRestrictionsULInner(IIZ)I
    .locals 17
    .param p1, "uid"    # I
    .param p2, "oldUidRules"    # I
    .param p3, "paroled"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 4681
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 4682
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no need to update restrict power rules for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4683
    :cond_0
    return v4

    .line 4686
    :cond_1
    if-nez p3, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    move v6, v4

    .line 4687
    .local v6, "isIdle":Z
    :goto_0
    if-nez v6, :cond_4

    iget-boolean v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-nez v7, :cond_4

    iget-boolean v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    .line 4688
    .local v4, "restrictMode":Z
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v7

    .line 4690
    .local v7, "isForeground":Z
    iget-boolean v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-direct {v0, v1, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedBatterySaverUL(IZ)Z

    move-result v8

    .line 4691
    .local v8, "isWhitelisted":Z
    and-int/lit16 v9, v2, 0xf0

    .line 4692
    .local v9, "oldRule":I
    const/4 v10, 0x0

    .line 4698
    .local v10, "newRule":I
    const/16 v11, 0x40

    const/16 v12, 0x20

    if-eqz v7, :cond_5

    .line 4699
    if-eqz v4, :cond_7

    .line 4700
    const/16 v10, 0x20

    goto :goto_4

    .line 4702
    :cond_5
    if-eqz v4, :cond_7

    .line 4703
    if-eqz v8, :cond_6

    move v13, v12

    goto :goto_3

    :cond_6
    move v13, v11

    :goto_3
    move v10, v13

    .line 4706
    :cond_7
    :goto_4
    and-int/lit8 v13, v2, 0xf

    or-int/2addr v13, v10

    .line 4708
    .local v13, "newUidRules":I
    sget-boolean v14, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v14, :cond_8

    .line 4709
    const-string v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForPowerRestrictionsUL("

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), isIdle: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mRestrictPower: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mDeviceIdleMode: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isForeground="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isWhitelisted="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", oldRule="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4715
    invoke-static {v9}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newRule="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4716
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newUidRules="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4717
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", oldUidRules="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4718
    invoke-static/range {p2 .. p2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4709
    invoke-static {v14, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    :cond_8
    if-eq v10, v9, :cond_d

    .line 4723
    if-eqz v10, :cond_b

    invoke-static {v10, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_5

    .line 4725
    :cond_9
    invoke-static {v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4726
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v3, :cond_c

    const-string v3, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Rejecting non-metered access for UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4729
    :cond_a
    const-string v3, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected change of non-metered UID state for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": foreground="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", whitelisted="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", newRule="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4732
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", oldRule="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4733
    invoke-static/range {p2 .. p2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4729
    invoke-static {v3, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4724
    :cond_b
    :goto_5
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v3, :cond_c

    const-string v3, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Allowing non-metered access for UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4735
    :cond_c
    :goto_6
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v3, v11, v1, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 4738
    :cond_d
    return v13
.end method

.method private updateRulesForRestrictBackgroundUL()V
    .locals 3

    .line 4294
    const-string/jumbo v0, "updateRulesForRestrictBackgroundUL"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4296
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllAppsUL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4298
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4299
    nop

    .line 4300
    return-void

    .line 4298
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private updateRulesForRestrictPowerUL()V
    .locals 3

    .line 4283
    const-string/jumbo v0, "updateRulesForRestrictPowerUL"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4285
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleUL()V

    .line 4286
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerSaveUL()V

    .line 4287
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllAppsUL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4289
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4290
    nop

    .line 4291
    return-void

    .line 4289
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private updateRulesForScreenUL()V
    .locals 4

    .line 4034
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 4035
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4036
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 4037
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 4038
    .local v2, "uid":I
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidUL(I)V

    .line 4035
    .end local v2    # "uid":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4041
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private updateRulesForTempWhitelistChangeUL(I)V
    .locals 5
    .param p1, "appId"    # I

    .line 4365
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 4366
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4367
    .local v1, "numUsers":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4368
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 4369
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 4371
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4372
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4373
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4375
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4367
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "uid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4377
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V
    .locals 4
    .param p1, "uidRules"    # Landroid/util/SparseIntArray;
    .param p2, "whitelistedAppIds"    # Landroid/util/SparseBooleanArray;
    .param p3, "userId"    # I

    .line 4132
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4133
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4134
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 4135
    .local v2, "appId":I
    invoke-static {p3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 4136
    .local v3, "uid":I
    invoke-virtual {p1, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4132
    .end local v2    # "appId":I
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4139
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveUL(IZI)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "enabled"    # Z
    .param p3, "chain"    # I

    .line 4159
    if-eqz p2, :cond_3

    .line 4160
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedBatterySaverUL(IZ)Z

    move-result v2

    .line 4162
    .local v2, "isWhitelisted":Z
    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 4165
    :cond_1
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .end local v2    # "isWhitelisted":Z
    goto :goto_2

    .line 4163
    .restart local v2    # "isWhitelisted":Z
    :cond_2
    :goto_1
    invoke-direct {p0, p3, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 4168
    .end local v2    # "isWhitelisted":Z
    :cond_3
    :goto_2
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    .locals 7
    .param p1, "enabled"    # Z
    .param p2, "chain"    # I
    .param p3, "rules"    # Landroid/util/SparseIntArray;

    .line 4104
    if-eqz p1, :cond_4

    .line 4107
    move-object v0, p3

    .line 4108
    .local v0, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 4109
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 4110
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "ui":I
    :goto_0
    if-ltz v2, :cond_1

    .line 4111
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 4112
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 4113
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 4114
    const/4 v5, 0x3

    if-ne p2, v5, :cond_0

    .line 4115
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 4110
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4119
    .end local v2    # "ui":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 4120
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4121
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 4119
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4124
    .end local v2    # "i":I
    :cond_3
    invoke-direct {p0, p2, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 4125
    .end local v0    # "uidRules":Landroid/util/SparseIntArray;
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_2

    .line 4126
    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 4128
    :goto_2
    return-void
.end method

.method private updateScreenOn()V
    .locals 3

    .line 4014
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    if-eqz v0, :cond_1

    .line 4015
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    .line 4018
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "setDeviceIdleMode stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4019
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstFGRestrictDebug:Z

    .line 4020
    const-string v0, "NetworkPolicy"

    const-string v1, "Update mAllowFGNetworkAccess to true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowFGNetworkAccess:Z

    .line 4023
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 4024
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4026
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4027
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenUL()V

    .line 4028
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4030
    :cond_1
    :goto_0
    return-void
.end method

.method private updateUidStateUL(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .line 3942
    const-string/jumbo v0, "updateUidStateUL"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3944
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v3, 0x12

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 3945
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_3

    .line 3947
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3948
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V

    .line 3949
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v3

    .line 3950
    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v4

    if-eq v3, v4, :cond_2

    .line 3951
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 3952
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v3, :cond_0

    .line 3953
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 3955
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v3, :cond_1

    .line 3956
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 3958
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 3960
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForeground(I)Z

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3963
    .end local v0    # "oldUidState":I
    :cond_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3964
    nop

    .line 3965
    return-void

    .line 3963
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private upgradeDefaultBackgroundDataUL()V
    .locals 3

    .line 2646
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 2647
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_restrict_background_data"

    .line 2646
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 2657
    return-void
.end method

.method private upgradeWifiMeteredOverrideAL()V
    .locals 11

    .line 2664
    const/4 v0, 0x0

    .line 2665
    .local v0, "modified":Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 2666
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 2667
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 2668
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 2669
    .local v4, "policy":Landroid/net/NetworkPolicy;
    iget-object v5, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    iget-boolean v5, v4, Landroid/net/NetworkPolicy;->inferred:Z

    if-nez v5, :cond_3

    .line 2671
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2672
    const/4 v0, 0x1

    .line 2674
    iget-object v5, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2675
    .local v5, "networkId":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 2676
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v7}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2677
    const-string v8, "NetworkPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found network "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "; upgrading metered hint"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    iget-boolean v8, v4, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v8, :cond_0

    .line 2679
    nop

    .line 2680
    const/4 v8, 0x1

    goto :goto_2

    :cond_0
    const/4 v8, 0x2

    :goto_2
    iput v8, v7, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 2681
    invoke-virtual {v1, v7}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 2683
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    goto :goto_1

    .line 2684
    .end local v5    # "networkId":Ljava/lang/String;
    :cond_2
    goto :goto_3

    .line 2685
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 2687
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    :goto_3
    goto :goto_0

    .line 2688
    .end local v3    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 2689
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2691
    :cond_5
    return-void
.end method

.method private waitForAdminData()V
    .locals 4

    .line 5597
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5598
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2710

    const-string v3, "Wait for admin data"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    .line 5601
    :cond_0
    return-void
.end method


# virtual methods
.method addDefaultRestrictBackgroundWhitelistUidsUL()Z
    .locals 7

    .line 825
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 826
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 828
    .local v1, "numberUsers":I
    const/4 v2, 0x0

    .line 829
    .local v2, "changed":Z
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "changed":Z
    :goto_0
    if-ge v2, v1, :cond_2

    .line 830
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 831
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL(I)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v6, v3

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x1

    :goto_2
    move v4, v6

    .line 829
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 833
    .end local v2    # "i":I
    :cond_2
    return v4
.end method

.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5292
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 5293
    return-void
.end method

.method addNetworkPolicyAL(Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .line 3031
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 3032
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    const-class v1, Landroid/net/NetworkPolicy;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 3033
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 3034
    return-void
.end method

.method public addUidPolicy(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 2830
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2836
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2837
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2838
    .local v1, "oldPolicy":I
    or-int/2addr p2, v1

    .line 2839
    if-eq v1, p2, :cond_0

    .line 2840
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2841
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    .line 2843
    .end local v1    # "oldPolicy":I
    :cond_0
    monitor-exit v0

    .line 2844
    return-void

    .line 2843
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2833
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .line 795
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 796
    return-void
.end method

.method public buildDefaultMobilePolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;
    .locals 17
    .param p1, "subId"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    .line 2356
    invoke-static/range {p2 .. p2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v15

    .line 2358
    .local v15, "template":Landroid/net/NetworkTemplate;
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v16

    .line 2359
    .local v16, "cycleRule":Landroid/util/RecurrenceRule;
    new-instance v0, Landroid/net/NetworkPolicy;

    .line 2360
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v2, v0

    move-object v3, v15

    move-object/from16 v4, v16

    invoke-direct/range {v2 .. v14}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    .line 2362
    .local v2, "policy":Landroid/net/NetworkPolicy;
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2363
    :try_start_0
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2364
    move/from16 v5, p1

    :try_start_1
    invoke-direct {v1, v5, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultMobilePolicyAL(ILandroid/net/NetworkPolicy;)Z

    .line 2365
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2366
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2367
    return-object v2

    .line 2365
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 2366
    :catchall_1
    move-exception v0

    move/from16 v5, p1

    :goto_0
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3704
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkPolicy"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3706
    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3708
    .local v0, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, p3

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 3709
    .local v1, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p3, v4

    .line 3710
    .local v5, "arg":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3709
    .end local v5    # "arg":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3713
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3714
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3715
    :try_start_1
    const-string v5, "--unsnooze"

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3716
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .line 3716
    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 3717
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 3716
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3720
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3722
    const-string v3, "Cleared snooze timestamps"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3723
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 3728
    :cond_3
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dynamicallyConfigNetworkPolicyManagerServiceLogTag(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3729
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .line 3733
    :cond_4
    :try_start_5
    const-string v5, "System ready: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3734
    const-string v5, "Restrict background: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3735
    const-string v5, "Restrict power: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3736
    const-string v5, "Device idle: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3737
    const-string v5, "Metered ifaces: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3739
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3740
    const-string v5, "Network policies:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3741
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3742
    move v5, v3

    .line 3742
    .local v5, "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 3743
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3742
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3745
    .end local v5    # "i":I
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3747
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3748
    const-string v5, "Subscription plans:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3749
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3750
    move v5, v3

    .line 3750
    .restart local v5    # "i":I
    :goto_3
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 3751
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 3752
    .local v6, "subId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Subscriber ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3753
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3754
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/telephony/SubscriptionPlan;

    .line 3755
    .local v7, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 3756
    array-length v8, v7

    move v9, v3

    :goto_4
    if-ge v9, v8, :cond_6

    aget-object v10, v7, v9

    .line 3757
    .local v10, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3756
    .end local v10    # "plan":Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 3760
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3750
    .end local v6    # "subId":I
    .end local v7    # "plans":[Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3762
    .end local v5    # "i":I
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3764
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3765
    const-string v5, "Active subscriptions:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3766
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3767
    move v5, v3

    .line 3767
    .restart local v5    # "i":I
    :goto_5
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 3768
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 3769
    .restart local v6    # "subId":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3771
    .local v7, "subscriberId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3767
    .end local v6    # "subId":I
    .end local v7    # "subscriberId":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 3773
    .end local v5    # "i":I
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3775
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3776
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Merged subscriptions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:[Ljava/lang/String;

    .line 3777
    invoke-static {v6}, Landroid/net/NetworkIdentity;->scrubSubscriberId([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3776
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3779
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3780
    const-string v5, "Policy for UIDs:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3781
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3782
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 3783
    .local v5, "size":I
    move v6, v3

    .line 3783
    .local v6, "i":I
    :goto_6
    if-ge v6, v5, :cond_9

    .line 3784
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 3785
    .local v7, "uid":I
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 3786
    .local v8, "policy":I
    const-string v9, "UID="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3787
    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3788
    const-string v9, " policy="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3789
    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3790
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3783
    .end local v7    # "uid":I
    .end local v8    # "policy":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 3792
    .end local v6    # "i":I
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3794
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3795
    if-lez v5, :cond_b

    .line 3796
    const-string v6, "Power save whitelist (except idle) app ids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3797
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3798
    move v6, v3

    .line 3798
    .restart local v6    # "i":I
    :goto_7
    if-ge v6, v5, :cond_a

    .line 3799
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3800
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3801
    const-string v7, ": "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3802
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3803
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3798
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 3805
    .end local v6    # "i":I
    :cond_a
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3808
    :cond_b
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3809
    if-lez v5, :cond_d

    .line 3810
    const-string v6, "Power save whitelist app ids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3811
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3812
    move v6, v3

    .line 3812
    .restart local v6    # "i":I
    :goto_8
    if-ge v6, v5, :cond_c

    .line 3813
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3814
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3815
    const-string v7, ": "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3816
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3817
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3812
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 3819
    .end local v6    # "i":I
    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3822
    :cond_d
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3823
    if-lez v5, :cond_f

    .line 3824
    const-string v6, "Default restrict background whitelist uids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3825
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3826
    move v6, v3

    .line 3826
    .restart local v6    # "i":I
    :goto_9
    if-ge v6, v5, :cond_e

    .line 3827
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3828
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3829
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3826
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 3831
    .end local v6    # "i":I
    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3834
    :cond_f
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3835
    if-lez v5, :cond_11

    .line 3836
    const-string v6, "Default restrict background whitelist uids revoked by users:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3837
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3838
    move v6, v3

    .line 3838
    .restart local v6    # "i":I
    :goto_a
    if-ge v6, v5, :cond_10

    .line 3839
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3840
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3841
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3838
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 3843
    .end local v6    # "i":I
    :cond_10
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3846
    :cond_11
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 3847
    .local v6, "knownUids":Landroid/util/SparseBooleanArray;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-static {v7, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 3848
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v7, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 3850
    const-string v7, "Status for all known UIDs:"

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3851
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3852
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    move v5, v7

    .line 3853
    move v7, v3

    .line 3853
    .local v7, "i":I
    :goto_b
    if-ge v7, v5, :cond_14

    .line 3854
    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    .line 3855
    .local v8, "uid":I
    const-string v9, "UID="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3856
    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3858
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v10, 0x12

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 3859
    .local v9, "state":I
    const-string v10, " state="

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3860
    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3861
    const/4 v10, 0x2

    if-gt v9, v10, :cond_12

    .line 3862
    const-string v10, " (fg)"

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_d

    .line 3864
    :cond_12
    const/4 v10, 0x4

    if-gt v9, v10, :cond_13

    .line 3865
    const-string v10, " (fg svc)"

    goto :goto_c

    :cond_13
    const-string v10, " (bg)"

    .line 3864
    :goto_c
    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3868
    :goto_d
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v8, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 3869
    .local v10, "uidRules":I
    const-string v11, " rules="

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3870
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3871
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3853
    .end local v8    # "uid":I
    .end local v9    # "state":I
    .end local v10    # "uidRules":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 3873
    .end local v7    # "i":I
    :cond_14
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3875
    const-string v7, "Status for just UIDs with rules:"

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3876
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3877
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move v5, v7

    .line 3878
    move v7, v3

    .line 3878
    .restart local v7    # "i":I
    :goto_e
    if-ge v7, v5, :cond_15

    .line 3879
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 3880
    .restart local v8    # "uid":I
    const-string v9, "UID="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3881
    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3882
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 3883
    .local v9, "uidRules":I
    const-string v10, " rules="

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3884
    invoke-static {v9}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3885
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3878
    .end local v8    # "uid":I
    .end local v9    # "uidRules":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 3887
    .end local v7    # "i":I
    :cond_15
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3889
    const-string v7, "Admin restricted uids for metered data:"

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3890
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3891
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    move v5, v7

    .line 3892
    nop

    .line 3892
    .restart local v3    # "i":I
    :goto_f
    if-ge v3, v5, :cond_16

    .line 3893
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3894
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3892
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 3896
    .end local v3    # "i":I
    :cond_16
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3898
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3899
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v3, v0}, Lcom/android/internal/util/StatLogger;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3901
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, v0}, Lcom/android/server/net/NetworkPolicyLogger;->dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3902
    .end local v5    # "size":I
    .end local v6    # "knownUids":Landroid/util/SparseBooleanArray;
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3903
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3904
    return-void

    .line 3902
    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v3

    .line 3903
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v3
.end method

.method protected dynamicallyConfigNetworkPolicyManagerServiceLogTag(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3618
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_4

    .line 3619
    aget-object v0, p3, v1

    .line 3620
    .local v0, "cmd":Ljava/lang/String;
    const-string/jumbo v3, "log"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3622
    return v1

    .line 3624
    :cond_0
    array-length v3, p3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 3626
    const-string v1, "Invalid argument! Get detail help as bellow:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3627
    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->logOutNetworkPolicyManagerServiceLogTagHelp(Ljava/io/PrintWriter;)V

    .line 3628
    return v2

    .line 3631
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_1
    nop

    .line 3635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicallyConfigNetworkPolicyManagerServiceLogTag, args.length:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3636
    nop

    .line 3636
    .local v1, "index":I
    :goto_0
    move v0, v1

    .line 3636
    .end local v1    # "index":I
    .local v0, "index":I
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 3637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicallyConfigNetworkPolicyManagerServiceLogTag, args["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3636
    add-int/lit8 v1, v0, 0x1

    .line 3636
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 3641
    .end local v1    # "index":I
    :cond_2
    aget-object v0, p3, v2

    .line 3642
    .local v0, "logCategoryTag":Ljava/lang/String;
    const-string v1, "1"

    const/4 v3, 0x2

    aget-object v3, p3, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3643
    .local v1, "on":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamicallyConfigNetworkPolicyManagerServiceLogTag, logCategoryTag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3646
    const-string/jumbo v3, "netpolicy"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3647
    sput-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 3648
    sput-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 3650
    :cond_3
    return v2

    .line 3632
    .end local v0    # "logCategoryTag":Ljava/lang/String;
    .end local v1    # "on":Z
    :cond_4
    return v1
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 8
    .param p1, "subscriber"    # Ljava/lang/String;

    .line 5333
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5335
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5336
    return-void

    .line 5340
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 5341
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 5342
    .local v1, "template":Landroid/net/NetworkTemplate;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 5343
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v6, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5344
    const-wide/16 v6, -0x1

    iput-wide v6, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 5345
    iput-boolean v3, v5, Landroid/net/NetworkPolicy;->inferred:Z

    .line 5346
    invoke-virtual {v5}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 5342
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5349
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 5352
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 5354
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v4, "no_control_apps"

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5356
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v2, v5

    .line 5357
    .local v6, "uid":I
    invoke-virtual {p0, v6, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 5356
    .end local v6    # "uid":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 5360
    :cond_3
    return-void
.end method

.method public getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I
    .locals 5
    .param p1, "config"    # Landroid/os/PersistableBundle;
    .param p2, "fallbackCycleDay"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1833
    if-nez p1, :cond_0

    .line 1834
    return p2

    .line 1836
    :cond_0
    const-string/jumbo v0, "monthly_data_cycle_day_int"

    .line 1837
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1838
    .local v0, "cycleDay":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1839
    return p2

    .line 1842
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1843
    .local v1, "cal":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 1844
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    if-le v0, v2, :cond_2

    goto :goto_0

    .line 1849
    :cond_2
    return v0

    .line 1845
    :cond_3
    :goto_0
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid date in CarrierConfigManager.KEY_MONTHLY_DATA_CYCLE_DAY_INT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    return p2
.end method

.method public getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .locals 5
    .param p1, "config"    # Landroid/os/PersistableBundle;
    .param p2, "fallbackLimitBytes"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1898
    if-nez p1, :cond_0

    .line 1899
    return-wide p2

    .line 1901
    :cond_0
    const-string v0, "data_limit_threshold_bytes_long"

    .line 1902
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1904
    .local v0, "limitBytes":J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_1

    .line 1905
    return-wide v3

    .line 1906
    :cond_1
    cmp-long v2, v0, v3

    if-nez v2, :cond_2

    .line 1907
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v2

    return-wide v2

    .line 1908
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 1909
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value in CarrierConfigManager.KEY_DATA_LIMIT_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    return-wide p2

    .line 1914
    :cond_3
    return-wide v0
.end method

.method public getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 3038
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3040
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3050
    goto :goto_0

    .line 3043
    :catch_0
    move-exception v1

    .line 3044
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 3048
    new-array v0, v0, [Landroid/net/NetworkPolicy;

    return-object v0

    .line 3052
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3053
    :try_start_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 3054
    .local v2, "size":I
    new-array v3, v2, [Landroid/net/NetworkPolicy;

    .line 3055
    .local v3, "policies":[Landroid/net/NetworkPolicy;
    nop

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 3056
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    aput-object v4, v3, v0

    .line 3055
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3058
    .end local v0    # "i":I
    :cond_1
    monitor-exit v1

    return-object v3

    .line 3059
    .end local v2    # "size":I
    .end local v3    # "policies":[Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 3
    .param p1, "state"    # Landroid/net/NetworkState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3345
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shame on UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for calling the hidden API getNetworkQuotaInfo(). Shame!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    new-instance v0, Landroid/net/NetworkQuotaInfo;

    invoke-direct {v0}, Landroid/net/NetworkQuotaInfo;-><init>()V

    return-object v0
.end method

.method public getRestrictBackground()Z
    .locals 3

    .line 3233
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3236
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v0

    return v1

    .line 3237
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRestrictBackgroundByCaller()I
    .locals 8

    .line 3206
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3207
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3209
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3211
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3214
    .local v2, "token":J
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3216
    .local v4, "policy":I
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3217
    nop

    .line 3216
    nop

    .line 3218
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 3220
    monitor-exit v1

    return v5

    .line 3222
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v7, :cond_1

    .line 3223
    monitor-exit v1

    return v6

    .line 3225
    :cond_1
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    .line 3226
    const/4 v5, 0x2

    nop

    .line 3227
    :cond_2
    monitor-exit v1

    .line 3225
    return v5

    .line 3216
    .end local v4    # "policy":I
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3228
    .end local v2    # "token":J
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;
    .locals 17
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 3409
    move-object/from16 v3, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3411
    const-string v0, "fw.fake_plan"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3412
    .local v4, "fake":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3414
    .local v0, "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    const-string/jumbo v5, "month_hard"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide v6, 0x7fffffffffffffffL

    const-wide/32 v8, 0x40000000

    const-wide v10, 0x140000000L

    if-eqz v5, :cond_0

    .line 3415
    const-string v5, "2007-03-14T00:00:00.000Z"

    .line 3416
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v12, "G-Mobile"

    .line 3417
    invoke-virtual {v5, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3418
    const/4 v12, 0x1

    invoke-virtual {v5, v10, v11, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3421
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v13

    const-wide/16 v14, 0x24

    invoke-virtual {v13, v14, v15}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v13

    invoke-virtual {v13}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 3420
    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3422
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3415
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3423
    const-string v5, "2017-03-14T00:00:00.000Z"

    .line 3424
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v8, "G-Mobile Happy"

    .line 3425
    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3426
    invoke-virtual {v5, v6, v7, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3429
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3428
    const-wide v8, 0x140000000L

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3430
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3423
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3431
    const-string v5, "2017-03-14T00:00:00.000Z"

    .line 3432
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, Charged after limit"

    .line 3433
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3434
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3437
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3436
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3438
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3431
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3439
    :cond_0
    const-string/jumbo v5, "month_soft"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v10, 0x0

    const-wide/16 v11, 0x1

    const/4 v13, 0x2

    if-eqz v5, :cond_1

    .line 3440
    const-string v5, "2007-03-14T00:00:00.000Z"

    .line 3441
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile is the carriers name who this plan belongs to"

    .line 3442
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "Crazy unlimited bandwidth plan with incredibly long title that should be cut off to prevent UI from looking terrible"

    .line 3443
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3445
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3448
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3447
    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3449
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3440
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3450
    const-string v5, "2017-03-14T00:00:00.000Z"

    .line 3451
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, Throttled after limit"

    .line 3452
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3453
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3456
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3455
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3457
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3450
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3458
    const-string v5, "2017-03-14T00:00:00.000Z"

    .line 3459
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, No data connection after limit"

    .line 3460
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3461
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3464
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3463
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3465
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3458
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3467
    :cond_1
    const-string/jumbo v5, "month_over"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3468
    const-string v5, "2007-03-14T00:00:00.000Z"

    .line 3469
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile is the carriers name who this plan belongs to"

    .line 3470
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3471
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide v6, 0x180000000L

    .line 3474
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3473
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3475
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3468
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3476
    const-string v5, "2017-03-14T00:00:00.000Z"

    .line 3477
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, Throttled after limit"

    .line 3478
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3479
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3482
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3481
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3483
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3476
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3484
    const-string v5, "2017-03-14T00:00:00.000Z"

    .line 3485
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, No data connection after limit"

    .line 3486
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3487
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3490
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3489
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3491
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3484
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3493
    :cond_2
    const-string/jumbo v5, "month_none"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3494
    const-string v5, "2007-03-14T00:00:00.000Z"

    .line 3495
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile"

    .line 3496
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3497
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3494
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3498
    :cond_3
    const-string/jumbo v5, "prepaid"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/32 v6, 0x20000000

    const-wide/16 v11, 0x3

    const-wide/16 v8, 0xa

    const-wide/16 v13, 0x14

    if-eqz v5, :cond_4

    .line 3499
    nop

    .line 3500
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3501
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    .line 3500
    invoke-static {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v8, "G-Mobile"

    .line 3502
    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3503
    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3506
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3505
    const-wide/32 v8, 0x6400000

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3507
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3499
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3508
    :cond_4
    const-string/jumbo v5, "prepaid_crazy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3509
    nop

    .line 3510
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3511
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v15

    .line 3510
    invoke-static {v5, v15}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v15, "G-Mobile Anytime"

    .line 3512
    invoke-virtual {v5, v15}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3513
    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3516
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3515
    const-wide/32 v10, 0x6400000

    invoke-virtual {v5, v10, v11, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3517
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3509
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3518
    nop

    .line 3519
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3520
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3519
    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile Nickel Nights"

    .line 3521
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "5\u00a2/GB between 1-5AM"

    .line 3522
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3523
    const-wide v6, 0x140000000L

    const/4 v10, 0x2

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0xf00000

    .line 3526
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v10

    const-wide/16 v11, 0x1e

    invoke-virtual {v10, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 3525
    invoke-virtual {v5, v6, v7, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3527
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3518
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3528
    nop

    .line 3529
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3530
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3529
    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile Bonus 3G"

    .line 3531
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "Unlimited 3G data"

    .line 3532
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3533
    const/4 v6, 0x2

    const-wide/32 v7, 0x40000000

    invoke-virtual {v5, v7, v8, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0x12c00000

    .line 3536
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    const-wide/16 v9, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3535
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3537
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3528
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3538
    :cond_5
    const-string/jumbo v5, "unlimited"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3539
    nop

    .line 3540
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3541
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3540
    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile Awesome"

    .line 3542
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3543
    const/4 v6, 0x2

    const-wide v7, 0x7fffffffffffffffL

    invoke-virtual {v5, v7, v8, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0x3200000

    .line 3546
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3545
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3547
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3539
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3549
    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/telephony/SubscriptionPlan;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/SubscriptionPlan;

    return-object v5

    .line 3552
    .end local v0    # "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    :cond_7
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3556
    :try_start_0
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3557
    .local v0, "ownerPackage":Ljava/lang/String;
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 3558
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_8

    goto :goto_1

    .line 3561
    :cond_8
    const-string v6, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not returning plans because caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " doesn\'t match owner "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    const/4 v6, 0x0

    monitor-exit v5

    return-object v6

    .line 3559
    :cond_9
    :goto_1
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/telephony/SubscriptionPlan;

    monitor-exit v5

    return-object v6

    .line 3565
    .end local v0    # "ownerPackage":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSubscriptionPlansOwner(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .line 3664
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3668
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3669
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3670
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3665
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method

.method public getUidPolicy(I)I
    .locals 3
    .param p1, "uid"    # I

    .line 2932
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2934
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2935
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 2936
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUidsWithPolicy(I)[I
    .locals 6
    .param p1, "policy"    # I

    .line 2941
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2943
    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 2944
    .local v1, "uids":[I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2945
    nop

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 2946
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 2947
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 2948
    .local v4, "uidPolicy":I
    if-nez p1, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    and-int v5, v4, p1

    if-eqz v5, :cond_2

    .line 2950
    :cond_1
    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    move-object v1, v5

    .line 2945
    .end local v3    # "uid":I
    .end local v4    # "uidPolicy":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2953
    .end local v0    # "i":I
    :cond_3
    monitor-exit v2

    .line 2954
    return-object v1

    .line 2953
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .locals 5
    .param p1, "config"    # Landroid/os/PersistableBundle;
    .param p2, "fallbackWarningBytes"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1865
    if-nez p1, :cond_0

    .line 1866
    return-wide p2

    .line 1868
    :cond_0
    const-string v0, "data_warning_threshold_bytes_long"

    .line 1869
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1871
    .local v0, "warningBytes":J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_1

    .line 1872
    return-wide v3

    .line 1873
    :cond_1
    cmp-long v2, v0, v3

    if-nez v2, :cond_2

    .line 1874
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v2

    return-wide v2

    .line 1875
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 1876
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value in CarrierConfigManager.KEY_DATA_WARNING_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    return-wide p2

    .line 1882
    :cond_3
    return-wide v0
.end method

.method handleNetworkPoliciesUpdateAL(Z)V
    .locals 0
    .param p1, "shouldNormalizePolicies"    # Z

    .line 1961
    if-eqz p1, :cond_0

    .line 1962
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 1964
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1965
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1966
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1967
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 1968
    return-void
.end method

.method handleUidChanged(IIJ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J

    .line 4975
    const-string/jumbo v0, "onUidStateChanged"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4977
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4980
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyLogger;->uidStateChanged(IIJ)V

    .line 4982
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidStateUL(II)V

    .line 4984
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, p1, p3, p4}, Landroid/app/ActivityManagerInternal;->notifyNetworkPolicyRulesUpdated(IJ)V

    .line 4985
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4987
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4988
    nop

    .line 4989
    return-void

    .line 4985
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4987
    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method handleUidGone(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 4992
    const-string/jumbo v0, "onUidGone"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4994
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4995
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidStateUL(I)V

    .line 4996
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4998
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4999
    nop

    .line 5000
    return-void

    .line 4996
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4998
    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public initOnlineConfig()V
    .locals 5

    .line 725
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyConfigUpdater;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    sget-object v4, Lcom/android/server/net/NetworkPolicyManagerService;->NETWORKPOLICY_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 727
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 728
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 729
    return-void
.end method

.method public isUidForeground(I)Z
    .locals 3
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3915
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3916
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x12

    .line 3917
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 3916
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForeground(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3918
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUidNetworkingBlocked(IZ)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "isNetworkMetered"    # Z

    .line 5364
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 5366
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5367
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidNetworkingBlockedInternal(IZ)Z

    move-result v2

    .line 5369
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 5371
    return v2
.end method

.method protected logOutNetworkPolicyManagerServiceLogTagHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3607
    const-string v0, "********************** Help begin:**********************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3608
    const-string v0, "1 All NetworkPolicyManagerService log"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3609
    const-string v0, "cmd: dumpsys power log all 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3610
    const-string v0, "2 All needed log when oem log is on"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3611
    const-string v0, "cmd: dumpsys networkpolicy log switch 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3612
    const-string v0, "----------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3613
    const-string v0, "********************** Help end.  **********************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3614
    return-void
.end method

.method public networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;
    .locals 3

    .line 1069
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1070
    .local v0, "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$HDTUqowtgL-W_V0Kq6psXLWC9ws;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$HDTUqowtgL-W_V0Kq6psXLWC9ws;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1071
    return-object v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3909
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3911
    return-void
.end method

.method public onTetheringChanged(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "tethering"    # Z

    .line 3129
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3130
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 3131
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tethering on ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "); disable Data Saver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 3134
    :cond_0
    monitor-exit v0

    .line 3135
    return-void

    .line 3134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I

    .line 3098
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 3099
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3100
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3102
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 3103
    .local v4, "policy":Landroid/net/NetworkPolicy;
    if-eqz v4, :cond_1

    .line 3107
    const/16 v5, 0x2d

    if-eq p2, v5, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 3118
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unexpected type"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3112
    :pswitch_0
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 3113
    goto :goto_0

    .line 3109
    :pswitch_1
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 3110
    goto :goto_0

    .line 3115
    :cond_0
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 3116
    nop

    .line 3121
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3122
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3123
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3124
    return-void

    .line 3104
    .restart local v4    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    :try_start_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to find policy for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3122
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    .line 3123
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .line 3002
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3004
    return-void
.end method

.method public removeUidPolicy(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 2848
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2854
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2855
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2856
    .local v1, "oldPolicy":I
    not-int v2, p2

    and-int p2, v1, v2

    .line 2857
    if-eq v1, p2, :cond_0

    .line 2858
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2859
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    .line 2861
    .end local v1    # "oldPolicy":I
    :cond_0
    monitor-exit v0

    .line 2862
    return-void

    .line 2861
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2851
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeUserStateUL(IZ)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "writePolicy"    # Z

    .line 2963
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->removingUserState(I)V

    .line 2964
    const/4 v0, 0x0

    .line 2967
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2968
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 2969
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 2970
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 2971
    const/4 v0, 0x1

    .line 2967
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2976
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    new-array v3, v1, [I

    .line 2977
    .local v3, "uids":[I
    move-object v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "uids":[I
    :goto_1
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 2978
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2979
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 2980
    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    .line 2977
    .end local v5    # "uid":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2984
    .end local v3    # "i":I
    :cond_3
    array-length v3, v4

    if-lez v3, :cond_5

    .line 2985
    array-length v3, v4

    :goto_2
    if-ge v1, v3, :cond_4

    aget v5, v4, v1

    .line 2986
    .restart local v5    # "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2985
    .end local v5    # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2988
    :cond_4
    const/4 v0, 0x1

    .line 2990
    :cond_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2991
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 2992
    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    .line 2993
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2995
    :cond_6
    monitor-exit v1

    .line 2996
    return v0

    .line 2995
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setDeviceIdleMode(Z)V
    .locals 9
    .param p1, "enabled"    # Z

    .line 3258
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3259
    const-string/jumbo v0, "setDeviceIdleMode"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3261
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3262
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-ne v3, p1, :cond_0

    .line 3263
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3303
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3263
    return-void

    .line 3265
    :cond_0
    :try_start_2
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 3268
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDeviceIdleMode enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkPolicyLogger;->deviceIdleModeEnabled(Z)V

    .line 3271
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-eqz v3, :cond_3

    .line 3278
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDozenChange = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/net/NetworkPolicyManagerService;->isDozeChangeSupport:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mPolicy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicy:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->isDozeChangeSupport:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    sget v3, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicy:I

    if-ne v3, v4, :cond_2

    .line 3282
    :cond_1
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    if-nez v3, :cond_2

    .line 3283
    sput-boolean v4, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    .line 3284
    const-string v3, "NetworkPolicy"

    const-string/jumbo v4, "setDeviceIdleMode start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceModeTime:J

    .line 3288
    sget-object v3, Lcom/android/server/net/NetworkPolicyManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x0

    .line 3289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/android/server/net/NetworkPolicyManagerService;->screenOffCheckDelayTime:J

    add-long/2addr v5, v7

    sget-object v7, Lcom/android/server/net/NetworkPolicyManagerService;->mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    .line 3288
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 3294
    :cond_2
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 3296
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3297
    if-eqz p1, :cond_4

    .line 3298
    :try_start_3
    const-string/jumbo v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    goto :goto_0

    .line 3300
    :cond_4
    const-string/jumbo v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3303
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3304
    nop

    .line 3305
    return-void

    .line 3296
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3303
    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 5
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .line 3015
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3017
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3019
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3020
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3021
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 3022
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3023
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3024
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3026
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3027
    nop

    .line 3028
    return-void

    .line 3023
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4

    .line 3024
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3026
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setRestrictBackground(Z)V
    .locals 6
    .param p1, "restrictBackground"    # Z

    .line 3139
    const-string/jumbo v0, "setRestrictBackground"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3141
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3144
    .local v3, "token":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3145
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V

    .line 3146
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3148
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3149
    nop

    .line 3151
    .end local v3    # "token":J
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3152
    nop

    .line 3153
    return-void

    .line 3146
    .restart local v3    # "token":J
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3148
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3151
    .end local v3    # "token":J
    :catchall_2
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public setSubscriptionOverride(IIIJLjava/lang/String;)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "overrideMask"    # I
    .param p3, "overrideValue"    # I
    .param p4, "timeoutMillis"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;

    .line 3676
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p6}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3679
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3680
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3681
    .local v1, "plan":Landroid/telephony/SubscriptionPlan;
    if-eqz v1, :cond_3

    .line 3682
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 3686
    .end local v1    # "plan":Landroid/telephony/SubscriptionPlan;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3690
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "netpolicy_override_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v0, v2

    .line 3692
    .local v0, "overrideEnabled":Z
    if-nez v0, :cond_1

    if-nez p3, :cond_2

    .line 3693
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 3694
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3693
    const/16 v5, 0x10

    invoke-virtual {v3, v5, p2, p3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3695
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_2

    .line 3696
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 3697
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3696
    invoke-virtual {v3, v5, p2, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3700
    :cond_2
    return-void

    .line 3683
    .end local v0    # "overrideEnabled":Z
    .restart local v1    # "plan":Landroid/telephony/SubscriptionPlan;
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must provide valid SubscriptionPlan to enable overriding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3686
    .end local v1    # "plan":Landroid/telephony/SubscriptionPlan;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;Ljava/lang/String;)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "plans"    # [Landroid/telephony/SubscriptionPlan;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 3570
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3572
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 3573
    .local v2, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3572
    .end local v2    # "plan":Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3576
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3578
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3579
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3580
    :try_start_2
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3581
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3583
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3584
    .local v4, "subscriberId":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 3585
    invoke-direct {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL(ILjava/lang/String;)Z

    .line 3586
    invoke-direct {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateMobilePolicyCycleAL(ILjava/lang/String;)Z

    goto :goto_1

    .line 3588
    :cond_1
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing subscriberId for subId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    :goto_1
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3592
    .end local v4    # "subscriberId":Ljava/lang/String;
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3593
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3595
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telephony.action.SUBSCRIPTION_PLANS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3596
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3597
    const-string v3, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3598
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3600
    .end local v2    # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3601
    nop

    .line 3602
    return-void

    .line 3592
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4

    .line 3593
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3600
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method setSubscriptionPlansOwner(ILjava/lang/String;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.sub_plan_owner."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3660
    return-void
.end method

.method public setUidPolicy(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 2809
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2811
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2814
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2815
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2817
    .local v1, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 2818
    .local v3, "oldPolicy":I
    if-eq v3, p2, :cond_0

    .line 2819
    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, p2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2820
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v4, p1, v3, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2823
    .end local v3    # "oldPolicy":I
    :cond_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2824
    nop

    .line 2825
    .end local v1    # "token":J
    monitor-exit v0

    .line 2826
    return-void

    .line 2823
    .restart local v1    # "token":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2825
    .end local v1    # "token":J
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 2812
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWifiMeteredOverride(Ljava/lang/String;I)V
    .locals 7
    .param p1, "networkId"    # Ljava/lang/String;
    .param p2, "meteredOverride"    # I

    .line 3309
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3310
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3312
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 3313
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 3314
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 3315
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3316
    iput p2, v5, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 3317
    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3319
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    goto :goto_0

    .line 3321
    .end local v2    # "wm":Landroid/net/wifi/WifiManager;
    .end local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3322
    nop

    .line 3323
    return-void

    .line 3321
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 3087
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3091
    .local v0, "token":J
    const/16 v2, 0x23

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3093
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3094
    nop

    .line 3095
    return-void

    .line 3093
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady(Ljava/util/concurrent/CountDownLatch;)V
    .locals 5
    .param p1, "initCompleteSignal"    # Ljava/util/concurrent/CountDownLatch;

    .line 1077
    const-wide/16 v0, 0x1e

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 1083
    nop

    .line 1087
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oem.dozeNetworkChange.control"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->isDozeChangeSupport:Z

    .line 1088
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1089
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->SCREEN_DOZE_NETWORKPOLICY:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDozeNetworkIntent:Landroid/content/Intent;

    .line 1090
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->mDozeNetworkIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    .line 1092
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->SCREEN_DOZE_NETWORKPOLICY:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1093
    .local v0, "dozeNetworkPolicyFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDozeChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1095
    return-void

    .line 1078
    .end local v0    # "dozeNetworkPolicyFilter":Landroid/content/IntentFilter;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service NetworkPolicy init timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1082
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Service NetworkPolicy init interrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .line 3009
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3010
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3011
    return-void
.end method

.method updateNetworkEnabledNL()V
    .locals 20

    .line 1975
    move-object/from16 v6, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateNetworkEnabledNL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    :cond_0
    const-string/jumbo v0, "updateNetworkEnabledNL"

    const-wide/32 v7, 0x200000

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1981
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v9

    .line 1983
    .local v9, "startTime":J
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v11, 0x1

    sub-int/2addr v0, v11

    .line 1983
    .local v0, "i":I
    :goto_0
    move v12, v0

    .line 1983
    .end local v0    # "i":I
    .local v12, "i":I
    const/4 v13, 0x0

    if-ltz v12, :cond_5

    .line 1984
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/net/NetworkPolicy;

    .line 1986
    .local v14, "policy":Landroid/net/NetworkPolicy;
    iget-wide v0, v14, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    invoke-virtual {v14}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 1991
    :cond_1
    nop

    .line 1992
    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/util/Pair;

    .line 1993
    .local v15, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v16

    .line 1994
    .local v16, "start":J
    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v18

    .line 1995
    .local v18, "end":J
    iget-object v1, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object v0, v6

    move-wide/from16 v2, v16

    move-wide/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    .line 1998
    .local v0, "totalBytes":J
    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, v14, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v16

    if-gez v2, :cond_2

    move v2, v11

    goto :goto_1

    :cond_2
    move v2, v13

    .line 2000
    .local v2, "overLimitWithoutSnooze":Z
    :goto_1
    if-nez v2, :cond_3

    move v13, v11

    nop

    :cond_3
    move v3, v13

    .line 2002
    .local v3, "networkEnabled":Z
    iget-object v4, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v4, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    .line 2002
    .end local v0    # "totalBytes":J
    .end local v2    # "overLimitWithoutSnooze":Z
    .end local v3    # "networkEnabled":Z
    .end local v14    # "policy":Landroid/net/NetworkPolicy;
    .end local v15    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .end local v16    # "start":J
    .end local v18    # "end":J
    goto :goto_3

    .line 1987
    .restart local v14    # "policy":Landroid/net/NetworkPolicy;
    :cond_4
    :goto_2
    iget-object v0, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    .line 1988
    nop

    .line 1983
    .end local v14    # "policy":Landroid/net/NetworkPolicy;
    :goto_3
    add-int/lit8 v0, v12, -0x1

    .line 1983
    .end local v12    # "i":I
    .local v0, "i":I
    goto :goto_0

    .line 2005
    .end local v0    # "i":I
    :cond_5
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0, v13, v9, v10}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 2006
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2007
    return-void
.end method

.method updateNetworkRulesNL()V
    .locals 44

    .line 2115
    move-object/from16 v7, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateNetworkRulesNL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_0
    const-string/jumbo v0, "updateNetworkRulesNL"

    const-wide/32 v8, 0x200000

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2120
    :try_start_0
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->defeatNullable([Landroid/net/NetworkState;)[Landroid/net/NetworkState;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2124
    .local v0, "states":[Landroid/net/NetworkState;
    nop

    .line 2123
    nop

    .line 2128
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2129
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v10, v1

    .line 2130
    .local v10, "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v12, 0x1

    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 2131
    .local v3, "state":Landroid/net/NetworkState;
    iget-object v4, v3, Landroid/net/NetworkState;->network:Landroid/net/Network;

    if-eqz v4, :cond_1

    .line 2132
    iget-object v4, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    iget-object v5, v3, Landroid/net/NetworkState;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-direct {v7, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->parseSubId(Landroid/net/NetworkState;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2134
    :cond_1
    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2135
    iget-object v4, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v12}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;Z)Landroid/net/NetworkIdentity;

    move-result-object v4

    .line 2137
    .local v4, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v10, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    .end local v3    # "state":Landroid/net/NetworkState;
    .end local v4    # "ident":Landroid/net/NetworkIdentity;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2141
    :cond_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v13, v1

    .line 2142
    .local v13, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-wide v1, 0x7fffffffffffffffL

    .line 2146
    .local v1, "lowestRule":J
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v14, v3

    .line 2147
    .local v14, "matchingIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v12

    move-wide v5, v1

    .line 2147
    .end local v1    # "lowestRule":J
    .local v3, "i":I
    .local v5, "lowestRule":J
    :goto_1
    move v15, v3

    .line 2147
    .end local v3    # "i":I
    .local v15, "i":I
    const-wide/16 v16, -0x1

    if-ltz v15, :cond_11

    .line 2148
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 2151
    .local v2, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual {v14}, Landroid/util/ArraySet;->clear()V

    .line 2152
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v12

    .line 2152
    .local v1, "j":I
    :goto_2
    if-ltz v1, :cond_5

    .line 2153
    iget-object v11, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v8, v21

    check-cast v8, Landroid/net/NetworkIdentity;

    invoke-virtual {v11, v8}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2154
    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkState;

    invoke-static {v14, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkState;)V

    .line 2152
    :cond_4
    add-int/lit8 v1, v1, -0x1

    const-wide/32 v8, 0x200000

    goto :goto_2

    .line 2158
    .end local v1    # "j":I
    :cond_5
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v1, :cond_6

    .line 2159
    const-string v1, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Applying "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " to ifaces "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    :cond_6
    iget-wide v8, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v8, v16

    if-eqz v1, :cond_7

    move v1, v12

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    move v8, v1

    .line 2163
    .local v8, "hasWarning":Z
    iget-wide v3, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v3, v16

    if-eqz v1, :cond_8

    move v1, v12

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    move v9, v1

    .line 2164
    .local v9, "hasLimit":Z
    if-nez v9, :cond_a

    iget-boolean v1, v2, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v1, :cond_9

    goto :goto_5

    .line 2202
    :cond_9
    move-object v12, v2

    move-object/from16 v28, v10

    move-wide v10, v5

    goto/16 :goto_9

    .line 2166
    :cond_a
    :goto_5
    if-eqz v9, :cond_c

    invoke-virtual {v2}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2167
    nop

    .line 2168
    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/util/Pair;

    .line 2169
    .local v11, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v1, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v16

    .line 2170
    .local v16, "start":J
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v22

    .line 2171
    .local v22, "end":J
    iget-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v25, v13

    const-wide/16 v12, 0x1

    move-object v1, v7

    .line 2171
    .end local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v25, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object v4, v2

    move-object v2, v3

    .line 2171
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    .local v4, "policy":Landroid/net/NetworkPolicy;
    move-object v12, v4

    move-wide/from16 v3, v16

    .line 2171
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    .local v12, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-wide v10, v5

    move-wide/from16 v5, v22

    .line 2171
    .end local v5    # "lowestRule":J
    .end local v11    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .local v10, "lowestRule":J
    .local v28, "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    .local v29, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v1

    .line 2173
    .local v1, "totalBytes":J
    iget-wide v3, v12, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v3, v3, v16

    if-ltz v3, :cond_b

    .line 2176
    const-wide v3, 0x7fffffffffffffffL

    .line 2176
    .local v3, "quotaBytes":J
    goto :goto_6

    .line 2181
    .end local v3    # "quotaBytes":J
    :cond_b
    iget-wide v3, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2183
    .end local v1    # "totalBytes":J
    .end local v16    # "start":J
    .end local v22    # "end":J
    .end local v29    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .restart local v3    # "quotaBytes":J
    :goto_6
    goto :goto_7

    .line 2186
    .end local v3    # "quotaBytes":J
    .end local v12    # "policy":Landroid/net/NetworkPolicy;
    .end local v25    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v28    # "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    .restart local v5    # "lowestRule":J
    .local v10, "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    .restart local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_c
    move-object v12, v2

    move-object/from16 v28, v10

    move-object/from16 v25, v13

    move-wide v10, v5

    .line 2186
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    .end local v5    # "lowestRule":J
    .end local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v10, "lowestRule":J
    .restart local v12    # "policy":Landroid/net/NetworkPolicy;
    .restart local v25    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v28    # "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    const-wide v3, 0x7fffffffffffffffL

    .line 2186
    .restart local v3    # "quotaBytes":J
    :goto_7
    move-wide v1, v3

    .line 2189
    .end local v3    # "quotaBytes":J
    .local v1, "quotaBytes":J
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_d

    .line 2191
    const-string v3, "NetworkPolicy"

    const-string/jumbo v5, "shared quota unsupported; generating rule for each iface"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    :cond_d
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v4

    .line 2194
    .local v3, "j":I
    :goto_8
    if-ltz v3, :cond_e

    .line 2195
    invoke-virtual {v14, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2196
    .local v4, "iface":Ljava/lang/String;
    invoke-direct {v7, v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuotaAsync(Ljava/lang/String;J)V

    .line 2197
    move-object/from16 v13, v25

    invoke-virtual {v13, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2194
    .end local v4    # "iface":Ljava/lang/String;
    .end local v25    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 2202
    .end local v1    # "quotaBytes":J
    .end local v3    # "j":I
    .end local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_e
    move-object/from16 v13, v25

    .line 2202
    .end local v25    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_9
    if-eqz v8, :cond_f

    iget-wide v1, v12, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v10

    if-gez v1, :cond_f

    .line 2203
    iget-wide v5, v12, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2203
    .end local v10    # "lowestRule":J
    .restart local v5    # "lowestRule":J
    goto :goto_a

    .line 2205
    .end local v5    # "lowestRule":J
    .restart local v10    # "lowestRule":J
    :cond_f
    move-wide v5, v10

    .line 2205
    .end local v10    # "lowestRule":J
    .restart local v5    # "lowestRule":J
    :goto_a
    if-eqz v9, :cond_10

    iget-wide v1, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v5

    if-gez v1, :cond_10

    .line 2206
    iget-wide v1, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2147
    .end local v5    # "lowestRule":J
    .end local v8    # "hasWarning":Z
    .end local v9    # "hasLimit":Z
    .end local v12    # "policy":Landroid/net/NetworkPolicy;
    .local v1, "lowestRule":J
    move-wide v5, v1

    .line 2147
    .end local v1    # "lowestRule":J
    .restart local v5    # "lowestRule":J
    :cond_10
    add-int/lit8 v3, v15, -0x1

    .line 2147
    .end local v15    # "i":I
    .local v3, "i":I
    move-object/from16 v10, v28

    const-wide/32 v8, 0x200000

    const/4 v12, 0x1

    goto/16 :goto_1

    .line 2212
    .end local v3    # "i":I
    .end local v28    # "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    .local v10, "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    :cond_11
    move-object/from16 v28, v10

    move-wide v10, v5

    .line 2212
    .end local v5    # "lowestRule":J
    .local v10, "lowestRule":J
    .restart local v28    # "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 2213
    .local v3, "state":Landroid/net/NetworkState;
    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_13

    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v3, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v5, 0xb

    .line 2214
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_13

    .line 2215
    invoke-virtual {v14}, Landroid/util/ArraySet;->clear()V

    .line 2216
    invoke-static {v14, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkState;)V

    .line 2217
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 2217
    .local v4, "j":I
    :goto_c
    if-ltz v4, :cond_13

    .line 2218
    invoke-virtual {v14, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2219
    .local v5, "iface":Ljava/lang/String;
    invoke-virtual {v13, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 2220
    const-wide v8, 0x7fffffffffffffffL

    invoke-direct {v7, v5, v8, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuotaAsync(Ljava/lang/String;J)V

    .line 2221
    invoke-virtual {v13, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2217
    .end local v5    # "iface":Ljava/lang/String;
    :cond_12
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    .line 2212
    .end local v3    # "state":Landroid/net/NetworkState;
    .end local v4    # "j":I
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2228
    :cond_14
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 2228
    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_16

    .line 2229
    iget-object v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2230
    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v13, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 2231
    invoke-direct {v7, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuotaAsync(Ljava/lang/String;)V

    .line 2228
    .end local v2    # "iface":Ljava/lang/String;
    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 2234
    .end local v1    # "i":I
    :cond_16
    iput-object v13, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 2236
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 2237
    .local v8, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "netpolicy_quota_enabled"

    const/4 v4, 0x1

    invoke-static {v8, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_e

    :cond_17
    const/4 v4, 0x0

    :goto_e
    move v9, v4

    .line 2239
    .local v9, "quotaEnabled":Z
    const-string/jumbo v1, "netpolicy_quota_unlimited"

    sget-wide v2, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    invoke-static {v8, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v18

    .line 2241
    .local v18, "quotaUnlimited":J
    const-string/jumbo v1, "netpolicy_quota_limited"

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v12

    .line 2245
    .local v12, "quotaLimited":F
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clear()V

    .line 2246
    array-length v15, v0

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v15, :cond_1e

    aget-object v6, v0, v5

    .line 2247
    .local v6, "state":Landroid/net/NetworkState;
    if-nez v9, :cond_18

    .line 2246
    .end local v6    # "state":Landroid/net/NetworkState;
    :goto_10
    move-object/from16 v32, v0

    move/from16 v23, v5

    move-object/from16 v36, v8

    const-wide v37, 0x7fffffffffffffffL

    goto/16 :goto_13

    .line 2248
    .restart local v6    # "state":Landroid/net/NetworkState;
    :cond_18
    iget-object v1, v6, Landroid/net/NetworkState;->network:Landroid/net/Network;

    if-nez v1, :cond_19

    .line 2248
    .end local v6    # "state":Landroid/net/NetworkState;
    goto :goto_10

    .line 2249
    .restart local v6    # "state":Landroid/net/NetworkState;
    :cond_19
    iget-object v1, v6, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubIdLocked(Landroid/net/Network;)I

    move-result v3

    .line 2250
    .local v3, "subId":I
    invoke-direct {v7, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v4

    .line 2251
    .local v4, "plan":Landroid/telephony/SubscriptionPlan;
    if-nez v4, :cond_1a

    .line 2251
    .end local v3    # "subId":I
    .end local v4    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v6    # "state":Landroid/net/NetworkState;
    goto :goto_10

    .line 2254
    .restart local v3    # "subId":I
    .restart local v4    # "plan":Landroid/telephony/SubscriptionPlan;
    .restart local v6    # "state":Landroid/net/NetworkState;
    :cond_1a
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v20

    .line 2255
    .local v20, "limitBytes":J
    iget-object v1, v6, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 2257
    const-wide/16 v1, 0x0

    .line 2280
    .end local v3    # "subId":I
    .end local v4    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v6    # "state":Landroid/net/NetworkState;
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .local v0, "subId":I
    .local v1, "quotaBytes":J
    .local v22, "plan":Landroid/telephony/SubscriptionPlan;
    .local v32, "states":[Landroid/net/NetworkState;
    .local v33, "state":Landroid/net/NetworkState;
    .local v36, "cr":Landroid/content/ContentResolver;
    :goto_11
    move-object/from16 v32, v0

    move v0, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v33, v6

    move-object/from16 v36, v8

    const-wide v37, 0x7fffffffffffffffL

    goto/16 :goto_12

    .line 2258
    .end local v1    # "quotaBytes":J
    .end local v22    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v32    # "states":[Landroid/net/NetworkState;
    .end local v33    # "state":Landroid/net/NetworkState;
    .end local v36    # "cr":Landroid/content/ContentResolver;
    .local v0, "states":[Landroid/net/NetworkState;
    .restart local v3    # "subId":I
    .restart local v4    # "plan":Landroid/telephony/SubscriptionPlan;
    .restart local v6    # "state":Landroid/net/NetworkState;
    .restart local v8    # "cr":Landroid/content/ContentResolver;
    :cond_1b
    cmp-long v1, v20, v16

    if-nez v1, :cond_1c

    .line 2259
    const-wide/16 v1, -0x1

    goto :goto_11

    .line 2260
    :cond_1c
    const-wide v22, 0x7fffffffffffffffL

    cmp-long v1, v20, v22

    if-nez v1, :cond_1d

    .line 2262
    move-wide/from16 v1, v18

    .line 2280
    .restart local v1    # "quotaBytes":J
    move-object/from16 v32, v0

    move v0, v3

    move-object/from16 v33, v6

    move-object/from16 v36, v8

    move-wide/from16 v37, v22

    move-object/from16 v22, v4

    move/from16 v23, v5

    goto/16 :goto_12

    .line 2265
    .end local v1    # "quotaBytes":J
    :cond_1d
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/util/Range;

    .line 2266
    .local v2, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v24

    .line 2267
    .local v24, "start":J
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v29

    .line 2268
    .local v29, "end":J
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v1

    .line 2269
    .local v1, "now":Ljava/time/Instant;
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v31

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    check-cast v0, Ljava/time/ZonedDateTime;

    .line 2269
    .end local v0    # "states":[Landroid/net/NetworkState;
    .restart local v32    # "states":[Landroid/net/NetworkState;
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    move-object/from16 v33, v1

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 2270
    .end local v1    # "now":Ljava/time/Instant;
    .local v33, "now":Ljava/time/Instant;
    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 2271
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v34

    .line 2272
    .local v34, "startOfDay":J
    iget-object v0, v6, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 2273
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 2272
    move-object/from16 v36, v8

    move-object/from16 v8, v33

    move-object v1, v7

    .line 2272
    .end local v33    # "now":Ljava/time/Instant;
    .local v8, "now":Ljava/time/Instant;
    .restart local v36    # "cr":Landroid/content/ContentResolver;
    move-object/from16 v31, v2

    move-object v2, v0

    .line 2272
    .end local v2    # "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    .local v31, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    move v0, v3

    move-wide/from16 v37, v22

    move-object/from16 v22, v4

    move-wide/from16 v3, v24

    .line 2272
    .end local v3    # "subId":I
    .end local v4    # "plan":Landroid/telephony/SubscriptionPlan;
    .local v0, "subId":I
    .restart local v22    # "plan":Landroid/telephony/SubscriptionPlan;
    move/from16 v23, v5

    move-object/from16 v33, v6

    move-wide/from16 v5, v34

    .line 2272
    .end local v6    # "state":Landroid/net/NetworkState;
    .local v33, "state":Landroid/net/NetworkState;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v1

    .line 2275
    .local v1, "totalBytes":J
    sub-long v3, v20, v1

    .line 2277
    .local v3, "remainingBytes":J
    nop

    .line 2278
    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    sub-long v5, v29, v5

    move-wide/from16 v39, v1

    const-wide/16 v1, 0x1

    sub-long/2addr v5, v1

    .line 2278
    .end local v1    # "totalBytes":J
    .local v39, "totalBytes":J
    move-object/from16 v41, v8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2278
    .end local v8    # "now":Ljava/time/Instant;
    .local v41, "now":Ljava/time/Instant;
    invoke-virtual {v8, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v26

    div-long v5, v5, v26

    add-long/2addr v5, v1

    .line 2280
    .local v5, "remainingDays":J
    div-long v1, v3, v5

    long-to-float v1, v1

    mul-float/2addr v1, v12

    float-to-long v1, v1

    move-wide/from16 v42, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 2283
    .end local v3    # "remainingBytes":J
    .end local v5    # "remainingDays":J
    .end local v24    # "start":J
    .end local v29    # "end":J
    .end local v31    # "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    .end local v34    # "startOfDay":J
    .end local v39    # "totalBytes":J
    .end local v41    # "now":Ljava/time/Instant;
    .local v1, "quotaBytes":J
    :goto_12
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v0, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2246
    .end local v0    # "subId":I
    .end local v1    # "quotaBytes":J
    .end local v20    # "limitBytes":J
    .end local v22    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v33    # "state":Landroid/net/NetworkState;
    :goto_13
    add-int/lit8 v5, v23, 0x1

    move-object/from16 v0, v32

    move-object/from16 v8, v36

    goto/16 :goto_f

    .line 2286
    .end local v32    # "states":[Landroid/net/NetworkState;
    .end local v36    # "cr":Landroid/content/ContentResolver;
    .local v0, "states":[Landroid/net/NetworkState;
    .local v8, "cr":Landroid/content/ContentResolver;
    :cond_1e
    move-object/from16 v32, v0

    move-object/from16 v36, v8

    .line 2286
    .end local v0    # "states":[Landroid/net/NetworkState;
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .restart local v32    # "states":[Landroid/net/NetworkState;
    .restart local v36    # "cr":Landroid/content/ContentResolver;
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2287
    .local v0, "meteredIfaces":[Ljava/lang/String;
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2289
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2291
    const-wide/32 v1, 0x200000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2292
    return-void

    .line 2121
    .end local v0    # "meteredIfaces":[Ljava/lang/String;
    .end local v9    # "quotaEnabled":Z
    .end local v10    # "lowestRule":J
    .end local v12    # "quotaLimited":F
    .end local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v14    # "matchingIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v18    # "quotaUnlimited":J
    .end local v28    # "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    .end local v32    # "states":[Landroid/net/NetworkState;
    .end local v36    # "cr":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 2123
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method public updateNetworks()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1788
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    .line 1789
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1790
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$lv2qqWetKVoJzbe7z3LT5idTu54;

    invoke-direct {v2, v0}, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$lv2qqWetKVoJzbe7z3LT5idTu54;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1793
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1794
    return-void
.end method

.method updateNotificationsNL()V
    .locals 44

    .line 1441
    move-object/from16 v12, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateNotificationsNL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_0
    const-string/jumbo v0, "updateNotificationsNL"

    const-wide/32 v13, 0x200000

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1445
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, v12, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v15, v0

    .line 1446
    .local v15, "beforeNotifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;>;"
    iget-object v0, v12, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1452
    iget-object v0, v12, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v16

    .line 1454
    .local v16, "now":J
    const/4 v0, 0x0

    .line 1456
    .local v0, "needToBroadcastDataUsageAlarm":Z
    iget-object v1, v12, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    move v6, v0

    .line 1456
    .end local v0    # "needToBroadcastDataUsageAlarm":Z
    .local v1, "i":I
    .local v6, "needToBroadcastDataUsageAlarm":Z
    :goto_0
    move v11, v1

    .line 1456
    .end local v1    # "i":I
    .local v11, "i":I
    if-ltz v11, :cond_d

    .line 1457
    iget-object v0, v12, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/net/NetworkPolicy;

    .line 1458
    .local v8, "policy":Landroid/net/NetworkPolicy;
    iget-object v0, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v12, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result v9

    .line 1461
    .local v9, "subId":I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_1

    .line 1461
    .end local v8    # "policy":Landroid/net/NetworkPolicy;
    .end local v9    # "subId":I
    goto :goto_1

    .line 1462
    .restart local v8    # "policy":Landroid/net/NetworkPolicy;
    .restart local v9    # "subId":I
    :cond_1
    invoke-virtual {v8}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1456
    .end local v8    # "policy":Landroid/net/NetworkPolicy;
    .end local v9    # "subId":I
    :goto_1
    move/from16 v37, v10

    move/from16 v36, v11

    goto/16 :goto_9

    .line 1464
    .restart local v8    # "policy":Landroid/net/NetworkPolicy;
    .restart local v9    # "subId":I
    :cond_2
    nop

    .line 1465
    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/util/Pair;

    .line 1466
    .local v7, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v18

    .line 1467
    .local v18, "cycleStart":J
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v20

    .line 1468
    .local v20, "cycleEnd":J
    iget-object v1, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object v0, v12

    move-wide/from16 v2, v18

    move-wide/from16 v4, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v2

    .line 1471
    .local v2, "totalBytes":J
    iget-object v0, v12, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v9}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1472
    .local v1, "config":Landroid/os/PersistableBundle;
    const-string v0, "data_warning_notification_bool"

    invoke-static {v1, v0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v22

    .line 1474
    .local v22, "notifyWarning":Z
    const-string v0, "data_limit_notification_bool"

    invoke-static {v1, v0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v23

    .line 1476
    .local v23, "notifyLimit":Z
    const-string v0, "data_rapid_notification_bool"

    invoke-static {v1, v0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v24

    .line 1480
    .local v24, "notifyRapid":Z
    const/16 v25, 0x0

    if-eqz v22, :cond_4

    .line 1481
    invoke-virtual {v8, v2, v3}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v8, v2, v3}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1482
    iget-wide v4, v8, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v0, v4, v18

    if-ltz v0, :cond_3

    move v0, v10

    goto :goto_2

    :cond_3
    move/from16 v0, v25

    .line 1483
    .local v0, "snoozedThisCycle":Z
    :goto_2
    if-nez v0, :cond_4

    .line 1486
    const-string v4, "NetworkPolicy"

    const-string/jumbo v5, "set needToBroadcastDataUsageAlarm to true due to TYPE_WARNING"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const/4 v6, 0x1

    .line 1494
    .end local v0    # "snoozedThisCycle":Z
    :cond_4
    if-eqz v23, :cond_8

    .line 1495
    invoke-virtual {v8, v2, v3}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1496
    iget-wide v4, v8, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v0, v4, v18

    if-ltz v0, :cond_5

    move v0, v10

    goto :goto_3

    :cond_5
    move/from16 v0, v25

    .line 1497
    .restart local v0    # "snoozedThisCycle":Z
    :goto_3
    if-eqz v0, :cond_6

    .line 1500
    const-string v4, "NetworkPolicy"

    const-string/jumbo v5, "set needToBroadcastDataUsageAlarm to true due to TYPE_LIMIT_SNOOZED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const/4 v4, 0x1

    .line 1511
    .end local v0    # "snoozedThisCycle":Z
    :goto_4
    move v6, v4

    goto :goto_5

    .line 1506
    .restart local v0    # "snoozedThisCycle":Z
    :cond_6
    const-string v4, "NetworkPolicy"

    const-string/jumbo v5, "set needToBroadcastDataUsageAlarm to true due to TYPE_LIMIT"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    const/4 v4, 0x1

    .line 1509
    .end local v6    # "needToBroadcastDataUsageAlarm":Z
    .local v4, "needToBroadcastDataUsageAlarm":Z
    iget-object v5, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v12, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitNL(Landroid/net/NetworkTemplate;)V

    .line 1509
    .end local v0    # "snoozedThisCycle":Z
    goto :goto_4

    .line 1511
    .end local v4    # "needToBroadcastDataUsageAlarm":Z
    .restart local v6    # "needToBroadcastDataUsageAlarm":Z
    :goto_5
    goto :goto_6

    .line 1512
    :cond_7
    iget-object v0, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v12, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V

    .line 1518
    .end local v6    # "needToBroadcastDataUsageAlarm":Z
    .local v26, "needToBroadcastDataUsageAlarm":Z
    :cond_8
    :goto_6
    move/from16 v26, v6

    if-eqz v24, :cond_c

    iget-wide v4, v8, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v27, -0x1

    cmp-long v0, v4, v27

    if-eqz v0, :cond_c

    .line 1519
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v27

    .line 1520
    .local v27, "recentDuration":J
    sub-long v29, v16, v27

    .line 1521
    .local v29, "recentStart":J
    move-wide/from16 v4, v16

    .line 1522
    .local v4, "recentEnd":J
    iget-object v6, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object v0, v12

    move-object/from16 v31, v1

    move-object v1, v6

    .line 1522
    .end local v1    # "config":Landroid/os/PersistableBundle;
    .local v31, "config":Landroid/os/PersistableBundle;
    move-wide/from16 v32, v2

    move-wide/from16 v2, v29

    .line 1522
    .end local v2    # "totalBytes":J
    .local v32, "totalBytes":J
    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    .line 1524
    .local v0, "recentBytes":J
    sub-long v2, v20, v18

    .line 1525
    .local v2, "cycleDuration":J
    mul-long v34, v0, v2

    div-long v13, v34, v27

    .line 1526
    .local v13, "projectedBytes":J
    move/from16 v37, v11

    iget-wide v10, v8, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 1526
    .end local v11    # "i":I
    .local v37, "i":I
    const-wide/16 v34, 0x3

    mul-long v10, v10, v34

    const-wide/16 v34, 0x2

    div-long v10, v10, v34

    .line 1528
    .local v10, "alertBytes":J
    sget-boolean v6, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v6, :cond_9

    .line 1529
    const-string v6, "NetworkPolicy"

    move-wide/from16 v38, v2

    new-instance v2, Ljava/lang/StringBuilder;

    .line 1529
    .end local v2    # "cycleDuration":J
    .local v38, "cycleDuration":J
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rapid usage considering recent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " projected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " alert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1533
    .end local v38    # "cycleDuration":J
    .restart local v2    # "cycleDuration":J
    :cond_9
    move-wide/from16 v38, v2

    .line 1533
    .end local v2    # "cycleDuration":J
    .restart local v38    # "cycleDuration":J
    :goto_7
    iget-wide v2, v8, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    const-wide/32 v34, 0x5265c00

    sub-long v34, v16, v34

    cmp-long v2, v2, v34

    if-ltz v2, :cond_a

    const/16 v25, 0x1

    nop

    :cond_a
    move/from16 v2, v25

    .line 1535
    .local v2, "snoozedRecently":Z
    cmp-long v3, v13, v10

    if-lez v3, :cond_b

    if-nez v2, :cond_b

    .line 1536
    const/16 v3, 0x2d

    const-wide/16 v34, 0x0

    iget-object v6, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 1537
    move-object/from16 v25, v6

    move-object v6, v12

    move-object/from16 v40, v7

    move-object/from16 v7, v25

    .line 1537
    .end local v7    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .local v40, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    move-object/from16 v25, v8

    move/from16 v41, v9

    move-wide/from16 v8, v29

    .line 1537
    .end local v8    # "policy":Landroid/net/NetworkPolicy;
    .end local v9    # "subId":I
    .local v25, "policy":Landroid/net/NetworkPolicy;
    .local v41, "subId":I
    move-wide/from16 v42, v10

    move/from16 v36, v37

    const/16 v37, 0x1

    move-wide v10, v4

    .line 1537
    .end local v10    # "alertBytes":J
    .end local v37    # "i":I
    .local v36, "i":I
    .local v42, "alertBytes":J
    invoke-direct/range {v6 .. v11}, Lcom/android/server/net/NetworkPolicyManagerService;->findRapidBlame(Landroid/net/NetworkTemplate;JJ)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 1536
    move-object/from16 v7, v25

    move v8, v3

    move-wide/from16 v9, v34

    invoke-direct/range {v6 .. v11}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    .line 1536
    .end local v0    # "recentBytes":J
    .end local v2    # "snoozedRecently":Z
    .end local v4    # "recentEnd":J
    .end local v13    # "projectedBytes":J
    .end local v18    # "cycleStart":J
    .end local v20    # "cycleEnd":J
    .end local v22    # "notifyWarning":Z
    .end local v23    # "notifyLimit":Z
    .end local v24    # "notifyRapid":Z
    .end local v25    # "policy":Landroid/net/NetworkPolicy;
    .end local v27    # "recentDuration":J
    .end local v29    # "recentStart":J
    .end local v31    # "config":Landroid/os/PersistableBundle;
    .end local v32    # "totalBytes":J
    .end local v38    # "cycleDuration":J
    .end local v40    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .end local v41    # "subId":I
    .end local v42    # "alertBytes":J
    goto :goto_8

    .line 1456
    .end local v36    # "i":I
    .restart local v37    # "i":I
    :cond_b
    move/from16 v36, v37

    const/16 v37, 0x1

    .line 1456
    .end local v37    # "i":I
    .restart local v36    # "i":I
    goto :goto_8

    .line 1456
    .end local v36    # "i":I
    .restart local v11    # "i":I
    :cond_c
    move/from16 v37, v10

    move/from16 v36, v11

    .line 1456
    .end local v11    # "i":I
    .restart local v36    # "i":I
    :goto_8
    move/from16 v6, v26

    .line 1456
    .end local v26    # "needToBroadcastDataUsageAlarm":Z
    .restart local v6    # "needToBroadcastDataUsageAlarm":Z
    :goto_9
    add-int/lit8 v1, v36, -0x1

    .line 1456
    .end local v36    # "i":I
    .local v1, "i":I
    move/from16 v10, v37

    const-wide/32 v13, 0x200000

    goto/16 :goto_0

    .line 1543
    .end local v1    # "i":I
    :cond_d
    move/from16 v37, v10

    if-eqz v6, :cond_e

    .line 1544
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->broadcastDataUsageAlarm()V

    .line 1549
    :cond_e
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1549
    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_10

    .line 1550
    invoke-virtual {v15, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 1551
    .local v1, "notificationId":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    iget-object v2, v12, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1552
    invoke-direct {v12, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V

    .line 1549
    .end local v1    # "notificationId":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1556
    .end local v0    # "i":I
    :cond_10
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1557
    return-void
.end method

.method updatePowerSaveWhitelistUL()V
    .locals 7

    .line 800
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    move-result-object v0

    .line 801
    .local v0, "whitelist":[I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 802
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 803
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v0, v4

    .line 804
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 803
    .end local v5    # "uid":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 807
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v3}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v3

    move-object v0, v3

    .line 808
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 809
    if-eqz v0, :cond_1

    .line 810
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget v4, v0, v1

    .line 811
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    .end local v4    # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 815
    .end local v0    # "whitelist":[I
    :cond_1
    goto :goto_2

    .line 814
    :catch_0
    move-exception v0

    .line 816
    :goto_2
    return-void
.end method

.method public updateRestrictBackgroundByLowPowerModeUL(Landroid/os/PowerSaveState;)V
    .locals 4
    .param p1, "result"    # Landroid/os/PowerSaveState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5297
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    .line 5299
    iget-boolean v0, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 5302
    .local v0, "restrictBackground":Z
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 5304
    .local v1, "localRestrictBgChangedInBsm":Z
    iget-boolean v2, p1, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 5307
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v2, :cond_0

    iget-boolean v2, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    .line 5308
    .local v2, "shouldInvokeRestrictBackground":Z
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 5309
    const/4 v1, 0x0

    goto :goto_1

    .line 5312
    .end local v2    # "shouldInvokeRestrictBackground":Z
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    xor-int/2addr v2, v3

    .line 5313
    .restart local v2    # "shouldInvokeRestrictBackground":Z
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 5316
    :goto_1
    if-eqz v2, :cond_2

    .line 5317
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V

    .line 5321
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 5322
    return-void
.end method

.method updateRuleForAppIdleUL(I)V
    .locals 6
    .param p1, "uid"    # I

    .line 4200
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4202
    :cond_0
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRuleForAppIdleUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4206
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 4209
    .local v2, "appId":I
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v3, :cond_2

    .line 4210
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUidFirewallRule mPowerSaveTempWhitelistAppIds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " idle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4211
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isUidForegroundOnRestrictPowerUL(uid) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4212
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4210
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4214
    :cond_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4215
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4216
    invoke-direct {p0, v4, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_0

    .line 4218
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v4, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4221
    .end local v2    # "appId":I
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4222
    nop

    .line 4223
    return-void

    .line 4221
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method updateRuleForDeviceIdleUL(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 4097
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    .line 4098
    return-void
.end method

.method updateRuleForRestrictPowerUL(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 4083
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    .line 4084
    return-void
.end method

.method updateRulesForAppIdleParoleUL()V
    .locals 8

    .line 4230
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v0

    .line 4231
    .local v0, "paroled":Z
    xor-int/lit8 v1, v0, 0x1

    .line 4232
    .local v1, "enableChain":Z
    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 4234
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 4235
    .local v2, "ruleCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 4236
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 4237
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 4238
    .local v5, "oldRules":I
    if-eqz v1, :cond_0

    .line 4243
    and-int/lit8 v5, v5, 0xf

    goto :goto_1

    .line 4246
    :cond_0
    and-int/lit16 v6, v5, 0xf0

    if-nez v6, :cond_1

    .end local v4    # "uid":I
    .end local v5    # "oldRules":I
    goto :goto_2

    .line 4248
    .restart local v4    # "uid":I
    .restart local v5    # "oldRules":I
    :cond_1
    :goto_1
    invoke-direct {p0, v4, v5, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    move-result v6

    .line 4249
    .local v6, "newUidRules":I
    if-nez v6, :cond_2

    .line 4250
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_2

    .line 4252
    :cond_2
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 4235
    .end local v4    # "uid":I
    .end local v5    # "oldRules":I
    .end local v6    # "newUidRules":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4255
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method updateRulesForAppIdleUL()V
    .locals 14

    .line 4171
    const-string/jumbo v0, "updateRulesForAppIdleUL"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4173
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 4174
    .local v0, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 4177
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 4178
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 4178
    .local v4, "ui":I
    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ltz v4, :cond_2

    .line 4179
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 4180
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    move-result-object v8

    .line 4181
    .local v8, "idleUids":[I
    array-length v9, v8

    move v10, v6

    :goto_1
    if-ge v10, v9, :cond_1

    aget v11, v8, v10

    .line 4182
    .local v11, "uid":I
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    invoke-virtual {v12, v13, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v12

    if-nez v12, :cond_0

    .line 4186
    invoke-direct {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 4187
    invoke-virtual {v0, v11, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 4181
    .end local v11    # "uid":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 4178
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "idleUids":[I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 4193
    .end local v4    # "ui":I
    :cond_2
    invoke-direct {p0, v5, v0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4195
    .end local v0    # "uidRules":Landroid/util/SparseIntArray;
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4196
    nop

    .line 4197
    return-void

    .line 4195
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method updateRulesForDeviceIdleUL()V
    .locals 5

    .line 4087
    const-string/jumbo v0, "updateRulesForDeviceIdleUL"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4089
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4092
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4093
    nop

    .line 4094
    return-void

    .line 4092
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method updateRulesForPowerSaveUL()V
    .locals 5

    .line 4073
    const-string/jumbo v0, "updateRulesForPowerSaveUL"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4075
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4078
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4079
    nop

    .line 4080
    return-void

    .line 4078
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public updateSettings()V
    .locals 4

    .line 786
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 787
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "doze_mode_policy"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sput v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicy:I

    .line 789
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 790
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPolicy updated to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_0
    return-void
.end method

.method updateSubscriptions()V
    .locals 15

    .line 2077
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateSubscriptions()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    :cond_0
    const-string/jumbo v0, "updateSubscriptions"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2080
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2081
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 2083
    .local v3, "sm":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([I)[I

    move-result-object v4

    .line 2084
    .local v4, "subIds":[I
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2086
    .local v5, "mergedSubscriberIds":[Ljava/lang/String;
    new-instance v6, Landroid/util/SparseArray;

    array-length v7, v4

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    .line 2087
    .local v6, "subIdToSubscriberId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    array-length v7, v4

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_2

    aget v10, v4, v9

    .line 2088
    .local v10, "subId":I
    invoke-virtual {v0, v10}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v11

    .line 2089
    .local v11, "subscriberId":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2090
    invoke-virtual {v6, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 2092
    :cond_1
    const-string v12, "NetworkPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Missing subscriberId for subId "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    .end local v10    # "subId":I
    .end local v11    # "subscriberId":Ljava/lang/String;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2096
    :cond_2
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2097
    :try_start_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 2098
    nop

    .line 2098
    .local v8, "i":I
    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 2099
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 2100
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2099
    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2098
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2103
    .end local v8    # "i":I
    :cond_3
    iput-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:[Ljava/lang/String;

    .line 2104
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2106
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2107
    return-void

    .line 2104
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method writePolicyAL()V
    .locals 15

    .line 2694
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "writePolicyAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    .line 2698
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 2700
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2701
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2702
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2704
    const-string/jumbo v3, "policy-list"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2705
    const-string/jumbo v3, "version"

    const/16 v4, 0xb

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2706
    const-string/jumbo v3, "restrictBackground"

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2709
    const/4 v3, 0x0

    move v4, v3

    .line 2709
    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 2710
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkPolicy;

    .line 2711
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v6, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 2712
    .local v6, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2712
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    .end local v6    # "template":Landroid/net/NetworkTemplate;
    goto/16 :goto_1

    .line 2714
    .restart local v5    # "policy":Landroid/net/NetworkPolicy;
    .restart local v6    # "template":Landroid/net/NetworkTemplate;
    :cond_1
    const-string/jumbo v7, "network-policy"

    invoke-interface {v2, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2715
    const-string/jumbo v7, "networkTemplate"

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v8

    invoke-static {v2, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2716
    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    .line 2717
    .local v7, "subscriberId":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 2718
    const-string/jumbo v8, "subscriberId"

    invoke-interface {v2, v0, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2720
    :cond_2
    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v8

    .line 2721
    .local v8, "networkId":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 2722
    const-string/jumbo v9, "networkId"

    invoke-interface {v2, v0, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2724
    :cond_3
    const-string v9, "cycleStart"

    iget-object v10, v5, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v10, v10, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 2725
    invoke-static {v10}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v10

    .line 2724
    invoke-static {v2, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2726
    const-string v9, "cycleEnd"

    iget-object v10, v5, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v10, v10, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 2727
    invoke-static {v10}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v10

    .line 2726
    invoke-static {v2, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2728
    const-string v9, "cyclePeriod"

    iget-object v10, v5, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v10, v10, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 2729
    invoke-static {v10}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v10

    .line 2728
    invoke-static {v2, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2730
    const-string/jumbo v9, "warningBytes"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v2, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2731
    const-string/jumbo v9, "limitBytes"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v2, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2732
    const-string/jumbo v9, "lastWarningSnooze"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v2, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2733
    const-string/jumbo v9, "lastLimitSnooze"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v2, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2734
    const-string/jumbo v9, "metered"

    iget-boolean v10, v5, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v2, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2735
    const-string/jumbo v9, "inferred"

    iget-boolean v10, v5, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v2, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2736
    const-string/jumbo v9, "network-policy"

    invoke-interface {v2, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2709
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    .end local v6    # "template":Landroid/net/NetworkTemplate;
    .end local v7    # "subscriberId":Ljava/lang/String;
    .end local v8    # "networkId":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 2740
    .end local v4    # "i":I
    :cond_4
    move v4, v3

    .line 2740
    .restart local v4    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 2741
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2742
    .local v5, "subId":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2743
    .local v6, "ownerPackage":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/telephony/SubscriptionPlan;

    .line 2744
    .local v7, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2744
    .end local v5    # "subId":I
    .end local v6    # "ownerPackage":Ljava/lang/String;
    .end local v7    # "plans":[Landroid/telephony/SubscriptionPlan;
    goto/16 :goto_4

    .line 2746
    .restart local v5    # "subId":I
    .restart local v6    # "ownerPackage":Ljava/lang/String;
    .restart local v7    # "plans":[Landroid/telephony/SubscriptionPlan;
    :cond_5
    array-length v8, v7

    move v9, v3

    :goto_3
    if-ge v9, v8, :cond_6

    aget-object v10, v7, v9

    .line 2747
    .local v10, "plan":Landroid/telephony/SubscriptionPlan;
    const-string/jumbo v11, "subscription-plan"

    invoke-interface {v2, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2748
    const-string/jumbo v11, "subId"

    invoke-static {v2, v11, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2749
    const-string/jumbo v11, "ownerPackage"

    invoke-static {v2, v11, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2750
    invoke-virtual {v10}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v11

    .line 2751
    .local v11, "cycleRule":Landroid/util/RecurrenceRule;
    const-string v12, "cycleStart"

    iget-object v13, v11, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 2752
    invoke-static {v13}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v13

    .line 2751
    invoke-static {v2, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2753
    const-string v12, "cycleEnd"

    iget-object v13, v11, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 2754
    invoke-static {v13}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v13

    .line 2753
    invoke-static {v2, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2755
    const-string v12, "cyclePeriod"

    iget-object v13, v11, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 2756
    invoke-static {v13}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v13

    .line 2755
    invoke-static {v2, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2757
    const-string/jumbo v12, "title"

    invoke-virtual {v10}, Landroid/telephony/SubscriptionPlan;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v2, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2758
    const-string/jumbo v12, "summary"

    invoke-virtual {v10}, Landroid/telephony/SubscriptionPlan;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v2, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2759
    const-string/jumbo v12, "limitBytes"

    invoke-virtual {v10}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v13

    invoke-static {v2, v12, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2760
    const-string/jumbo v12, "limitBehavior"

    invoke-virtual {v10}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v13

    invoke-static {v2, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2761
    const-string/jumbo v12, "usageBytes"

    invoke-virtual {v10}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v13

    invoke-static {v2, v12, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2762
    const-string/jumbo v12, "usageTime"

    invoke-virtual {v10}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v13

    invoke-static {v2, v12, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2763
    const-string/jumbo v12, "subscription-plan"

    invoke-interface {v2, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2746
    .end local v10    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v11    # "cycleRule":Landroid/util/RecurrenceRule;
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2740
    .end local v5    # "subId":I
    .end local v6    # "ownerPackage":Ljava/lang/String;
    .end local v7    # "plans":[Landroid/telephony/SubscriptionPlan;
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 2768
    .end local v4    # "i":I
    :cond_7
    move v4, v3

    .line 2768
    .restart local v4    # "i":I
    :goto_5
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 2769
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2770
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 2773
    .local v6, "policy":I
    if-nez v6, :cond_8

    .line 2773
    .end local v5    # "uid":I
    .end local v6    # "policy":I
    goto :goto_6

    .line 2775
    .restart local v5    # "uid":I
    .restart local v6    # "policy":I
    :cond_8
    const-string/jumbo v7, "uid-policy"

    invoke-interface {v2, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2776
    const-string/jumbo v7, "uid"

    invoke-static {v2, v7, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2777
    const-string/jumbo v7, "policy"

    invoke-static {v2, v7, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2778
    const-string/jumbo v7, "uid-policy"

    invoke-interface {v2, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2768
    .end local v5    # "uid":I
    .end local v6    # "policy":I
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2781
    .end local v4    # "i":I
    :cond_9
    const-string/jumbo v4, "policy-list"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2784
    const-string/jumbo v4, "whitelist"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2787
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    .line 2788
    .local v4, "size":I
    nop

    .line 2788
    .local v3, "i":I
    :goto_7
    if-ge v3, v4, :cond_a

    .line 2789
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 2790
    .restart local v5    # "uid":I
    const-string/jumbo v6, "revoked-restrict-background"

    invoke-interface {v2, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2791
    const-string/jumbo v6, "uid"

    invoke-static {v2, v6, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2792
    const-string/jumbo v6, "revoked-restrict-background"

    invoke-interface {v2, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2788
    .end local v5    # "uid":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2795
    .end local v3    # "i":I
    :cond_a
    const-string/jumbo v3, "whitelist"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2797
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2799
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2804
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "size":I
    goto :goto_8

    .line 2800
    :catch_0
    move-exception v0

    .line 2801
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_b

    .line 2802
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2805
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    :goto_8
    return-void
.end method
