.class public Lcom/android/server/am/OnePlusAppBootManager;
.super Ljava/lang/Object;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusAppBootManager$AppBootConfigUpdater;,
        Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;,
        Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;,
        Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;,
        Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    }
.end annotation


# static fields
.field public static final ACTION_NOTIFICATION_LISTENER_UPDATE:Ljava/lang/String; = "action.appboot.notification_listener_update"

.field private static final ACTION_TEST:Ljava/lang/String; = "com.haha.action.test"

.field private static APPBOOT_CONFIG_NAME:Ljava/lang/String; = null

.field private static final APPBOOT_FILE:Ljava/lang/String; = "/data/system/appboot/appboot.xml"

.field private static APPBOOT_VERSION:Ljava/lang/String; = null

.field public static BLACKLIST_ENABLE:Z = false

.field public static final DAY_IN_MS:J = 0x5265c00L

.field public static DEBUG:Z = false

.field public static DEBUG_BINDER:Z = false

.field public static DEBUG_OEMLOG:Z = false

.field public static final GLOBAL_FLAG_SETTED_SIM_COUNTRY:I = 0x1

.field private static INSTANCE:Lcom/android/server/am/OnePlusAppBootManager; = null

.field public static IN_USING:Z = false

.field private static final MSG_DELAY_FORCE_STOP_PKG:I = 0x2

.field private static final MSG_GET_ONLINECONFIG:I = 0x3

.field private static final MSG_HUGEPOWER_PKG_ACTION:I = 0x1f

.field private static final MSG_PERSIST_APPBOOT_LIST:I = 0x1

.field private static final MSG_PKG_USAGE_ACTION:I = 0x20

.field private static final MSG_PKG_USAGE_ACTION_DEBUG:I = 0x21

.field private static final MSG_TYPE_PKG_ADD:I = 0x17

.field private static final MSG_TYPE_PKG_REINSTALL:I = 0x15

.field private static final MSG_TYPE_PKG_REMOVE:I = 0x16

.field private static final PRELIST_FILE:Ljava/lang/String; = "/system/etc/presetlist.xml"

.field private static final PROP_ALLOW:Ljava/lang/String; = "persist.sys.appboot.allow"

.field private static final PROP_BLACKLIST:Ljava/lang/String; = "persist.sys.appboot.blacklist"

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.appboot.debug"

.field private static final PROP_FLAGS:Ljava/lang/String; = "persist.sys.appboot.flags"

.field private static final PROP_OEM_LOG:Ljava/lang/String; = "persist.sys.assert.panic"

.field private static final PROP_QUICK_APP_RANK_DEBUG:Ljava/lang/String; = "persist.sys.rp.debug"

.field private static final PROP_REGION:Ljava/lang/String; = "persist.sys.oem.region"

.field private static final PROP_SIM_COUNTRY:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field private static final PROP_USER_SETTED:Ljava/lang/String; = "persist.sys.appboot.usersetted"

.field private static final PROP_USING:Ljava/lang/String; = "persist.sys.appboot.using"

.field private static QUICK_APP_RANK_DEBUG:Z = false

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final SPECIAL_FILE:Ljava/lang/String; = "/system/etc/appbootspecial.xml"

.field public static final TAG:Ljava/lang/String; = "OnePlusAppBootManager"

.field public static final TAG_HUGE_POWER_DEFAULT:I = 0x1

.field public static final TAG_HUGE_POWER_HIT:I = 0x2

.field public static final TAG_HUGE_POWER_START_PROC:I = 0x4

.field public static final VERSION:I = 0xf5d2e0

.field private static final XML_ATTR_ACTION:Ljava/lang/String; = "action"

.field private static final XML_ATTR_BOOT:Ljava/lang/String; = "boot"

.field private static final XML_ATTR_CALLEE:Ljava/lang/String; = "callee"

.field private static final XML_ATTR_CALLER:Ljava/lang/String; = "caller"

.field private static final XML_ATTR_FLAG:Ljava/lang/String; = "flag"

.field private static final XML_ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final XML_ATTR_SETTED:Ljava/lang/String; = "setted"

.field private static final XML_ATTR_SWITCH:Ljava/lang/String; = "switch"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_APPBOOT:Ljava/lang/String; = "appboot"

.field private static final XML_TAG_NAMESPACE:Ljava/lang/String; = ""

.field private static final XML_TAG_PKG:Ljava/lang/String; = "pkg"

.field private static final XML_TAG_PRELIST:Ljava/lang/String; = "prelist"

.field private static mABILock:Ljava/lang/Object;

.field public static mAppBootSwitch:Z

.field private static mCurrentActivityPkg:Ljava/lang/String;

.field private static mCurrentIME:Ljava/lang/String;

.field private static mCurrentWallPaperPkg:Ljava/lang/String;

.field private static mEnableJobControl:Z

.field private static mGlobalFlags:I

.field private static mHugePowerPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastActivityPkg:Ljava/lang/String;

.field private static mPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mPms:Lcom/android/server/pm/PackageManagerService;

.field private static mPrePkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mPresetWhiteListPackagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mProcMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mRegion:Ljava/lang/String;

.field private static mScreenOn:Z

.field private static mSyncServiceClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sBlackJobClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAbiRestoreList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityClassBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mAppBootConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field mAppBootThread:Landroid/os/HandlerThread;

.field mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

.field private mBroadcastIntentActionBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastIntentClassBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurAppServiceClassWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultDailerPackage:Ljava/lang/String;

.field private mDefaultSMSPackage:Ljava/lang/String;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mKillPackageProcessName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNotiListenerPkgSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mProcessServiceKillEnable:Z

.field private mProviderClassBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mServiceActionBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceActionWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceClassBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;

.field private mWidgetBroadcastActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetPkgSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 102
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x16

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 103
    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 104
    sput-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 105
    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_BINDER:Z

    .line 106
    sput-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    .line 107
    sput-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->QUICK_APP_RANK_DEBUG:Z

    .line 122
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 126
    sput v2, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    .line 127
    const-string v1, ""

    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mRegion:Ljava/lang/String;

    .line 135
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    .line 136
    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    .line 137
    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    .line 138
    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    .line 140
    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mScreenOn:Z

    .line 141
    const-string v2, "AppBoot"

    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_CONFIG_NAME:Ljava/lang/String;

    .line 143
    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mEnableJobControl:Z

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mProcMap:Ljava/util/HashMap;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    .line 170
    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mSyncServiceClassList:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.dangdang.buy2.keepalive.service.RestartJobService"

    const-string v2, "com.dewmobile.sensor.MyJobService"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->sBlackJobClassList:Ljava/util/ArrayList;

    .line 1738
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.google."

    const-string v2, "com.android.vending"

    const-string v3, "com.oneplus."

    const-string/jumbo v4, "net.oneplus."

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 1739
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPresetWhiteListPackagesList:Ljava/util/ArrayList;

    .line 2937
    const-string v0, "2"

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 9
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mResolver:Landroid/content/ContentResolver;

    .line 131
    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mSettingsObserver:Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;

    .line 132
    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultSMSPackage:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultDailerPackage:Ljava/lang/String;

    .line 174
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    .line 175
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mNotiListenerPkgSet:Ljava/util/HashSet;

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "cn.jpush.android.service.PushService"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mCurAppServiceClassWhiteList:Ljava/util/ArrayList;

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    const-string v3, "android.appwidget.action.APPWIDGET_BIND"

    const-string v4, "android.appwidget.action.APPWIDGET_CONFIGURE"

    const-string v5, "android.appwidget.action.APPWIDGET_DELETED"

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    const-string v7, "android.appwidget.action.APPWIDGET_DISABLED"

    const-string v8, "android.appwidget.action.APPWIDGET_ENABLED"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetBroadcastActionList:Ljava/util/ArrayList;

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    .line 256
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    .line 257
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProcessServiceKillEnable:Z

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAbiRestoreList:Ljava/util/ArrayList;

    .line 2094
    new-instance v1, Lcom/android/server/am/OnePlusAppBootManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusAppBootManager$1;-><init>(Lcom/android/server/am/OnePlusAppBootManager;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    .line 2216
    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 2217
    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    .line 2219
    new-instance v1, Lcom/android/server/am/OnePlusAppBootManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusAppBootManager$2;-><init>(Lcom/android/server/am/OnePlusAppBootManager;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 2413
    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    .line 2414
    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    .line 285
    sput-object p1, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 286
    const-string/jumbo v0, "persist.sys.appboot.using"

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 291
    const-string/jumbo v0, "persist.sys.appboot.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 292
    const-string/jumbo v0, "persist.sys.assert.panic"

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    .line 293
    const-string/jumbo v0, "persist.sys.appboot.blacklist"

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 294
    const-string/jumbo v0, "persist.sys.appboot.flags"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    .line 295
    const-string/jumbo v0, "persist.sys.oem.region"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mRegion:Ljava/lang/String;

    .line 296
    const-string/jumbo v0, "persist.sys.rp.debug"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->QUICK_APP_RANK_DEBUG:Z

    .line 297
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_0

    .line 298
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 299
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager;->readXml_prelist()I

    .line 302
    :cond_0
    return-void
.end method

.method private static WriteStringToFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "xmlStr"    # Ljava/lang/String;

    .line 2819
    if-nez p1, :cond_0

    .line 2820
    const/4 v0, -0x1

    return v0

    .line 2823
    :cond_0
    const/4 v0, 0x0

    .line 2825
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2826
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2827
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2828
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 2831
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2833
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2834
    const-string v2, "OnePlusAppBootManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2835
    const/4 v2, -0x2

    .line 2849
    if-eqz v0, :cond_2

    .line 2850
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2851
    const/4 v0, 0x0

    goto :goto_0

    .line 2853
    :catch_0
    move-exception v3

    .line 2854
    .local v3, "ec":Ljava/io/IOException;
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException # WriteStringToFile # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ec":Ljava/io/IOException;
    goto :goto_1

    .line 2855
    :cond_2
    :goto_0
    nop

    .line 2835
    :goto_1
    return v2

    .line 2839
    :cond_3
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 2840
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 2841
    .local v2, "pidbuffer":[B
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2842
    const/4 v3, 0x1

    .line 2849
    nop

    .line 2850
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2851
    const/4 v0, 0x0

    goto :goto_2

    .line 2853
    :catch_1
    move-exception v4

    .line 2854
    .local v4, "ec":Ljava/io/IOException;
    const-string v5, "OnePlusAppBootManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException # WriteStringToFile # "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "ec":Ljava/io/IOException;
    goto :goto_3

    .line 2855
    :goto_2
    nop

    .line 2842
    :goto_3
    return v3

    .line 2848
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "pidbuffer":[B
    :catchall_0
    move-exception v1

    goto :goto_6

    .line 2844
    :catch_2
    move-exception v1

    .line 2845
    .local v1, "ex":Ljava/io/IOException;
    :try_start_4
    const-string v2, "OnePlusAppBootManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException # WriteStringToFile # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2846
    const/4 v2, -0x3

    .line 2849
    if-eqz v0, :cond_4

    .line 2850
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2851
    const/4 v0, 0x0

    goto :goto_4

    .line 2853
    :catch_3
    move-exception v3

    .line 2854
    .restart local v3    # "ec":Ljava/io/IOException;
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException # WriteStringToFile # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ec":Ljava/io/IOException;
    goto :goto_5

    .line 2855
    :cond_4
    :goto_4
    nop

    .line 2846
    :goto_5
    return v2

    .line 2848
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_6
    nop

    .line 2849
    if-eqz v0, :cond_5

    .line 2850
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 2851
    const/4 v0, 0x0

    goto :goto_7

    .line 2853
    :catch_4
    move-exception v2

    .line 2854
    .local v2, "ec":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException # WriteStringToFile # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OnePlusAppBootManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ec":Ljava/io/IOException;
    nop

    .line 2855
    :cond_5
    :goto_7
    throw v1
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mSyncServiceClassList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 99
    sput-boolean p0, Lcom/android/server/am/OnePlusAppBootManager;->mScreenOn:Z

    return p0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 99
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->QUICK_APP_RANK_DEBUG:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/OnePlusAppBootManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .line 99
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->responseSIMStateChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->updateSettingsObserver(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600()Ljava/util/HashMap;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->forceStopPkg(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/OnePlusAppBootManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .line 99
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_CONFIG_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 99
    invoke-static {p0}, Lcom/android/server/am/OnePlusAppBootManager;->isPackageInPresetWhitelist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/am/OnePlusAppBootManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->resolveAppBootConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/am/OnePlusAppBootManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Z

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->updateHugePowerPkgTempAction(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/am/OnePlusAppBootManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .line 99
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->autoChangeRule()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/am/OnePlusAppBootManager;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # J

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusAppBootManager;->sendNextChangeRuleMsg(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->updateAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->removeAppBootInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusAppBootManager;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # J

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusAppBootManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .line 99
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusAppBootManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .line 99
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpPkgMapInfos()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusAppBootManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .line 99
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpList()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusAppBootManager;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .line 99
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusAppBootManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .line 99
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpHugePowerPkgInfo()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusAppBootManager;->updateHugePowerPackage(Ljava/lang/String;ZI)V

    return-void
.end method

.method private autoChangeRule()V
    .locals 11

    .line 2494
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "autoChangeRule"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2496
    :cond_0
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v0

    .line 2498
    .local v0, "usageMgr":Lcom/android/server/am/RestartProcessManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/RestartProcessManager;->getLowUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 2500
    .local v2, "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/am/RestartProcessManager;->getGeneralUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 2501
    .local v3, "mediumUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2502
    .local v4, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    if-eqz v2, :cond_5

    .line 2503
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2504
    .local v6, "pkg":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v4

    .line 2505
    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->canChangeRuleByUsage()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2506
    goto :goto_0

    .line 2508
    :cond_2
    sget-object v7, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;

    .line 2509
    .local v7, "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    if-eqz v7, :cond_3

    iget v8, v7, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    if-ne v8, v1, :cond_3

    .line 2510
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoChangeRule skip white : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2513
    :cond_3
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 2514
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoChangeRule black : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2515
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    :cond_4
    goto :goto_0

    .line 2518
    :cond_5
    if-eqz v3, :cond_8

    .line 2519
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2520
    .local v5, "pkg":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v6

    .line 2521
    .end local v4    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .local v6, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v6}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->canChangeRuleByUsage()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2522
    goto :goto_2

    .line 2525
    :cond_6
    sget-object v7, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 2526
    :try_start_0
    sget-object v4, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;

    .line 2527
    .local v4, "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    if-eqz v4, :cond_7

    .line 2528
    iget v8, v4, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    .line 2529
    .local v8, "action":I
    invoke-virtual {v6, v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 2530
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "autoChangeRule medium : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " action "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2532
    .end local v4    # "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    .end local v8    # "action":I
    :cond_7
    monitor-exit v7

    .line 2533
    .end local v5    # "pkg":Ljava/lang/String;
    nop

    .line 2519
    :goto_2
    move-object v4, v6

    goto :goto_1

    .line 2532
    .restart local v5    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2547
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .local v4, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_8
    return-void
.end method

.method private dumpHugePowerPkgInfo()V
    .locals 6

    .line 343
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 344
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 345
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# dump # HugePowerPkg # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v2    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 347
    :cond_0
    monitor-exit v0

    .line 348
    return-void

    .line 347
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpInfo()V
    .locals 3

    .line 305
    const-string v0, "OnePlusAppBootManager"

    const-string v1, "# dump # VERSION # 16110304"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # IN_USING # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mAppBootSwitch # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # DEBUG # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # DEBUG_OEMLOG # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # BLACKLIST_ENABLE # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mGlobalFlags # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method private dumpList()V
    .locals 3

    .line 331
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mServiceActionBlackList # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mServiceActionWhiteList # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mServiceClassBlackList # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mBroadcastIntentClassBlackList # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mBroadcastIntentActionWhiteList # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mBroadcastIntentActionBlackList # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mActivityClassBlackList # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mProviderClassBlackList # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mKillPackageProcessName # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void
.end method

.method private dumpPkgMapInfos()V
    .locals 7

    .line 317
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 319
    const-string v1, "OnePlusAppBootManager"

    const-string v2, " # dump # mPkgMap = null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    monitor-exit v0

    return-void

    .line 322
    :cond_0
    const/4 v1, 0x0

    .line 323
    .local v1, "index":I
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 324
    .local v3, "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    add-int/lit8 v1, v1, 0x1

    .line 325
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# dump # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v3    # "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    goto :goto_0

    .line 327
    .end local v1    # "index":I
    :cond_1
    monitor-exit v0

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private forceStopPkg(Ljava/lang/String;)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 2556
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceStopPkg # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2558
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 2560
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 2561
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 2562
    const/4 v1, 0x1

    return v1

    .line 2564
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2565
    const/4 v1, 0x3

    return v1

    .line 2567
    :cond_2
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2568
    const/4 v1, 0x4

    return v1

    .line 2570
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2571
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 2572
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 2573
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2574
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2575
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :catch_0
    move-exception v0

    .line 2576
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception# forceStopPkg: forceStopPkg error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2580
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v0, -0x1

    return v0
.end method

.method private static getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 404
    if-nez p0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !!!!!!!Exception # getAppBootInfo # pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 407
    :cond_0
    const/4 v0, 0x0

    .line 408
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 409
    if-nez v0, :cond_1

    .line 410
    new-instance v1, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;-><init>(Ljava/lang/String;)V

    .line 411
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .local v1, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 412
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v2

    .line 414
    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    goto :goto_0

    .line 419
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fatal Exception # getAppBootInfo # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 419
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v2

    .line 421
    move-object v0, v1

    goto :goto_2

    .line 419
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 421
    .end local v1    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_1
    :goto_2
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# getAppBootInfo # abi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 424
    :cond_2
    return-object v0
.end method

.method public static final getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;
    .locals 2
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 275
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    if-nez v0, :cond_1

    .line 276
    if-nez p0, :cond_0

    .line 277
    const-string v0, "OnePlusAppBootManager"

    const-string v1, "Fatal Exception : pms is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusAppBootManager;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    .line 281
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    return-object v0
.end method

.method private getPkgNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 560
    if-nez p1, :cond_0

    .line 561
    const-string v0, "OnePlusAppBootManager"

    const-string v1, "Fatal Exception # getPkgNameFromIntent # intent=null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v0, 0x0

    return-object v0

    .line 564
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 566
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 567
    .local v1, "compName":Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    .line 568
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 571
    .end local v1    # "compName":Landroid/content/ComponentName;
    :cond_1
    return-object v0
.end method

.method private getPkgNameOfBind(Landroid/content/Intent;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "_compName"    # Landroid/content/ComponentName;

    .line 3232
    const/4 v0, 0x0

    .line 3233
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 3234
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3236
    :cond_0
    if-eqz v0, :cond_1

    .line 3237
    return-object v0

    .line 3240
    :cond_1
    if-nez p1, :cond_2

    .line 3241
    const/4 v1, 0x0

    return-object v1

    .line 3244
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 3245
    if-nez v0, :cond_3

    .line 3246
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 3247
    .local v1, "compName":Landroid/content/ComponentName;
    if-eqz v1, :cond_3

    .line 3248
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3251
    .end local v1    # "compName":Landroid/content/ComponentName;
    :cond_3
    return-object v0
.end method

.method public static isAppContianSpecialFlag(Ljava/lang/String;)Z
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 3258
    invoke-static {p0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 3259
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getSetted()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3260
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    .line 3261
    return v2

    .line 3263
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isNotAppUserSetted(Ljava/lang/String;)Z
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 3267
    invoke-static {p0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 3268
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getSetted()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3269
    return v2

    .line 3271
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isPackageInPresetWhitelist(Ljava/lang/String;)Z
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 1742
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 1743
    return v0

    .line 1746
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPresetWhiteListPackagesList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 1747
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPresetWhiteListPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1748
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1749
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# isPackageInPresetWhitelist # whitelist-pkg # pkgName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1751
    :cond_1
    return v0

    .line 1753
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 1756
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isWidgetPkg(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 598
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 599
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 600
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 263
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 264
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_BINDER:Z

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#cuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cpid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "ret":Ljava/lang/String;
    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 268
    :cond_0
    const-string v0, "OnePlusAppBootManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_1
    :goto_0
    return-void
.end method

.method private readXml_specialList()V
    .locals 10

    .line 3128
    const-string/jumbo v0, "readXml_specialList"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3130
    .local v0, "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/appbootspecial.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3131
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3132
    const-string/jumbo v2, "readXml_specialList # file don\'t exist!"

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3133
    return-void

    .line 3136
    :cond_0
    const/4 v2, 0x0

    move-object v3, v2

    .line 3139
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 3140
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 3141
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3144
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 3145
    .local v2, "type":I
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v2, v5, :cond_18

    .line 3146
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3147
    .local v5, "tag":Ljava/lang/String;
    const-string/jumbo v7, "svcActB"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3148
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 3149
    .local v7, "value":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1. svcActB # value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3150
    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_3

    .line 3151
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3153
    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    goto/16 :goto_0

    :cond_4
    const-string/jumbo v7, "svcActW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3154
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 3155
    .restart local v7    # "value":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "2. svcActW # value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3156
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_6

    .line 3157
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3159
    .end local v7    # "value":Ljava/lang/String;
    :cond_6
    goto/16 :goto_0

    :cond_7
    const-string/jumbo v7, "svcClsB"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3160
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 3161
    .restart local v7    # "value":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "3. svcClsB # value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3162
    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_9

    .line 3163
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3165
    .end local v7    # "value":Ljava/lang/String;
    :cond_9
    goto/16 :goto_0

    :cond_a
    const-string v7, "brdClsB"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 3166
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 3167
    .restart local v7    # "value":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "4. brdClsB # value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3168
    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_c

    .line 3169
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3171
    .end local v7    # "value":Ljava/lang/String;
    :cond_c
    goto/16 :goto_0

    :cond_d
    const-string v7, "brdActW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 3172
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 3173
    .restart local v7    # "value":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "5. brdActW # value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3174
    :cond_e
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_f

    .line 3175
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3177
    .end local v7    # "value":Ljava/lang/String;
    :cond_f
    goto/16 :goto_0

    :cond_10
    const-string v7, "brdActB"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 3178
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 3179
    .restart local v7    # "value":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_11

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "6. brdActB # value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3180
    :cond_11
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_12

    .line 3181
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3183
    .end local v7    # "value":Ljava/lang/String;
    :cond_12
    goto :goto_0

    :cond_13
    const-string v7, "actClsB"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 3184
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 3185
    .restart local v7    # "value":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "7. actClsB # value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3186
    :cond_14
    if-eqz v7, :cond_15

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_15

    .line 3187
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3189
    .end local v7    # "value":Ljava/lang/String;
    :cond_15
    goto :goto_0

    :cond_16
    const-string/jumbo v7, "pvdClsB"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 3190
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 3191
    .restart local v7    # "value":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_17

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "8. pvdClsB # value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3192
    :cond_17
    if-eqz v7, :cond_18

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_18

    .line 3193
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3197
    .end local v5    # "tag":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_18
    :goto_0
    if-ne v2, v6, :cond_1

    .line 3203
    .end local v2    # "type":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    nop

    .line 3204
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3205
    const/4 v3, 0x0

    goto :goto_1

    .line 3207
    :catch_0
    move-exception v2

    .line 3208
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 3208
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 3209
    :goto_1
    nop

    .line 3210
    :goto_2
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_1a

    .line 3211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mServiceActionBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mServiceActionWhiteList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mServiceClassBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBroadcastIntentActionBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mActivityClassBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string/jumbo v4, "mProviderClassBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3202
    :catchall_0
    move-exception v2

    goto/16 :goto_7

    .line 3199
    :catch_1
    move-exception v2

    .line 3200
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "OnePlusAppBootManager"

    const-string/jumbo v5, "readXml_specialList # failed parsing "

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3203
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_19

    .line 3204
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3205
    const/4 v3, 0x0

    goto :goto_4

    .line 3207
    :catch_2
    move-exception v2

    .line 3208
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 3208
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 3209
    :cond_19
    :goto_4
    nop

    .line 3210
    :goto_5
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_1a

    .line 3211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mServiceActionBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mServiceActionWhiteList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mServiceClassBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBroadcastIntentActionBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mActivityClassBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    .line 3221
    :cond_1a
    :goto_6
    return-void

    .line 3202
    :goto_7
    nop

    .line 3203
    if-eqz v3, :cond_1b

    .line 3204
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3205
    const/4 v3, 0x0

    goto :goto_8

    .line 3207
    :catch_3
    move-exception v4

    .line 3208
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 3208
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 3209
    :cond_1b
    :goto_8
    nop

    .line 3210
    :goto_9
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_1c

    .line 3211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mServiceActionBlackList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mServiceActionWhiteList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mServiceClassBlackList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBroadcastIntentActionBlackList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mActivityClassBlackList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mProviderClassBlackList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    :cond_1c
    throw v2
.end method

.method private registerGeneralReceiver()V
    .locals 3

    .line 2176
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2177
    const-string v0, "OnePlusAppBootManager"

    const-string v1, "Fatal Exception # registerGeneralReceiver # mContext=null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    return-void

    .line 2181
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2182
    .local v0, "filter":Landroid/content/IntentFilter;
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 2183
    const-string v1, "com.haha.action.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2184
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2185
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2186
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mRegion:Ljava/lang/String;

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2187
    const/4 v1, 0x1

    sget v2, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 2188
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->responseSIMStateChanged()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2189
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2193
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2194
    return-void
.end method

.method private registerPackageReceiver()V
    .locals 3

    .line 2267
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2268
    const-string v0, "OnePlusAppBootManager"

    const-string v1, "Fatal Exception # registerPackageReceiver # mContext=null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    return-void

    .line 2271
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2272
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2273
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2274
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2275
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2276
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 2277
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2278
    return-void
.end method

.method private removeAppBootInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 454
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# removeAppBootInfo # pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 457
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    monitor-exit v0

    .line 460
    return-void

    .line 459
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resolveAppBootConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 14
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 2610
    if-nez p1, :cond_0

    .line 2611
    return-void

    .line 2614
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2614
    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 2615
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2616
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "forceSwitch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2617
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2618
    .local v3, "forceSwitch":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusAppBootManager;->switchControlCenter(Ljava/lang/String;)V

    .line 2619
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] AppBoot forceSwitch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    .end local v3    # "forceSwitch":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pre_pkg_map"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2622
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 2623
    :try_start_1
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2624
    .local v4, "pkgInfoJsonArray":Lorg/json/JSONArray;
    move v5, v0

    .line 2624
    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 2625
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 2626
    .local v6, "pkgInfoJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "package"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2627
    .local v7, "pkgName":Ljava/lang/String;
    const-string v8, "flag"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2628
    .local v8, "flag":Ljava/lang/String;
    const-string v9, "action"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2629
    .local v9, "action":Ljava/lang/String;
    sget-object v10, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    new-instance v11, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v11, p0, v7, v12, v13}, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;II)V

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2630
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "resolveAppBootConfigFromJSON # "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2624
    .end local v6    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "flag":Ljava/lang/String;
    .end local v9    # "action":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2632
    .end local v4    # "pkgInfoJsonArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_3
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 2634
    :cond_4
    :goto_2
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "job_control"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2635
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2636
    .local v3, "jobSwitchJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->mEnableJobControl:Z

    .line 2637
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] AppBoot job control: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->mEnableJobControl:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    .end local v3    # "jobSwitchJsonArray":Lorg/json/JSONArray;
    :cond_5
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "svcActB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2640
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2641
    .local v3, "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 2642
    :try_start_3
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2643
    move v5, v0

    .line 2643
    .restart local v5    # "i":I
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 2644
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2645
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2646
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2643
    .end local v6    # "value":Ljava/lang/String;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2648
    .end local v5    # "i":I
    :cond_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2649
    :try_start_4
    const-string v4, "[OnlineConfig] update svcActB success"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 2649
    .end local v3    # "jArray":Lorg/json/JSONArray;
    goto :goto_4

    .line 2648
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 2651
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_8
    :goto_4
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "svcActW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2652
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2653
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    .line 2654
    :try_start_7
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2655
    move v5, v0

    .line 2655
    .restart local v5    # "i":I
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_a

    .line 2656
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2657
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 2658
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2655
    .end local v6    # "value":Ljava/lang/String;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 2660
    .end local v5    # "i":I
    :cond_a
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2661
    :try_start_8
    const-string v4, "[OnlineConfig] update svcActW success"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 2661
    .end local v3    # "jArray":Lorg/json/JSONArray;
    goto :goto_6

    .line 2660
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    .line 2663
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_b
    :goto_6
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "svcClsB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2664
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2665
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 2666
    :try_start_b
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2667
    move v5, v0

    .line 2667
    .restart local v5    # "i":I
    :goto_7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 2668
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2669
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 2670
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2667
    .end local v6    # "value":Ljava/lang/String;
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 2672
    .end local v5    # "i":I
    :cond_d
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2673
    :try_start_c
    const-string v4, "[OnlineConfig] update svcClsB success"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 2673
    .end local v3    # "jArray":Lorg/json/JSONArray;
    goto :goto_8

    .line 2672
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    :catchall_3
    move-exception v0

    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v0

    .line 2675
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_e
    :goto_8
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "brdClsB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2676
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2677
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 2678
    :try_start_f
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2679
    move v5, v0

    .line 2679
    .restart local v5    # "i":I
    :goto_9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_10

    .line 2680
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2681
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 2682
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2679
    .end local v6    # "value":Ljava/lang/String;
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 2684
    .end local v5    # "i":I
    :cond_10
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 2685
    :try_start_10
    const-string v4, "[OnlineConfig] update brdClsB success"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 2685
    .end local v3    # "jArray":Lorg/json/JSONArray;
    goto :goto_a

    .line 2684
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    :catchall_4
    move-exception v0

    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v0

    .line 2687
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_11
    :goto_a
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "brdActW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2688
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2689
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 2690
    :try_start_13
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2691
    move v5, v0

    .line 2691
    .restart local v5    # "i":I
    :goto_b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 2692
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2693
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 2694
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2691
    .end local v6    # "value":Ljava/lang/String;
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 2696
    .end local v5    # "i":I
    :cond_13
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 2697
    :try_start_14
    const-string v4, "[OnlineConfig] update brdActW success"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 2697
    .end local v3    # "jArray":Lorg/json/JSONArray;
    goto :goto_c

    .line 2696
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    :catchall_5
    move-exception v0

    :try_start_15
    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :try_start_16
    throw v0

    .line 2699
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_14
    :goto_c
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "brdActB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2700
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2701
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 2702
    :try_start_17
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2703
    move v5, v0

    .line 2703
    .restart local v5    # "i":I
    :goto_d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_16

    .line 2704
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2705
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 2706
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2703
    .end local v6    # "value":Ljava/lang/String;
    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 2708
    .end local v5    # "i":I
    :cond_16
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 2709
    :try_start_18
    const-string v4, "[OnlineConfig] update brdActB success"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 2709
    .end local v3    # "jArray":Lorg/json/JSONArray;
    goto :goto_e

    .line 2708
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    :catchall_6
    move-exception v0

    :try_start_19
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :try_start_1a
    throw v0

    .line 2711
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_17
    :goto_e
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actClsB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2712
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2713
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    .line 2714
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2715
    move v5, v0

    .line 2715
    .restart local v5    # "i":I
    :goto_f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_19

    .line 2716
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2717
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 2718
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2715
    .end local v6    # "value":Ljava/lang/String;
    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 2720
    .end local v5    # "i":I
    :cond_19
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 2721
    :try_start_1c
    const-string v4, "[OnlineConfig] update actClsB success"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 2721
    .end local v3    # "jArray":Lorg/json/JSONArray;
    goto :goto_10

    .line 2720
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    :catchall_7
    move-exception v0

    :try_start_1d
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    :try_start_1e
    throw v0

    .line 2723
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_1a
    :goto_10
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pvdClsB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2724
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2725
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    .line 2726
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2727
    move v5, v0

    .line 2727
    .restart local v5    # "i":I
    :goto_11
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1c

    .line 2728
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2729
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 2730
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2727
    .end local v6    # "value":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 2732
    .end local v5    # "i":I
    :cond_1c
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .line 2733
    :try_start_20
    const-string v4, "[OnlineConfig] update pvdClsB success"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    .line 2733
    .end local v3    # "jArray":Lorg/json/JSONArray;
    goto :goto_12

    .line 2732
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    :catchall_8
    move-exception v0

    :try_start_21
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    :try_start_22
    throw v0

    .line 2735
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_1d
    :goto_12
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemKillProcessName"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2748
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 2749
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2750
    .local v3, "jsonWakeLockList":Lorg/json/JSONArray;
    move v4, v0

    .line 2750
    .local v4, "i":I
    :goto_13
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1f

    .line 2751
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2752
    .local v5, "jsonWakeLock":Lorg/json/JSONObject;
    const-string/jumbo v6, "package"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2753
    .local v6, "packageName":Ljava/lang/String;
    const-string v7, "ProcessName"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 2754
    .local v7, "ja":Lorg/json/JSONArray;
    move v8, v0

    .line 2754
    .local v8, "j":I
    :goto_14
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_1e

    .line 2755
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2756
    .local v9, "mPackageProcessName":Ljava/lang/String;
    invoke-virtual {p0, v6, v9}, Lcom/android/server/am/OnePlusAppBootManager;->addPackageProcessName(Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    .end local v9    # "mPackageProcessName":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 2750
    .end local v5    # "jsonWakeLock":Lorg/json/JSONObject;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "ja":Lorg/json/JSONArray;
    .end local v8    # "j":I
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 2760
    .end local v3    # "jsonWakeLockList":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_1f
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemProcessNameEnable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2761
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProcessServiceKillEnable:Z

    .line 2614
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2764
    .end local v1    # "index":I
    :cond_21
    const-string v0, "OnePlusAppBootManager"

    const-string v1, "[OnlineConfig] AppBoot updated complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_1
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    .line 2770
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 2771
    const-string v0, "after resolveAppBootConfigFromJSON # specialList:"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceActionBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceActionWhiteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastIntentActionBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActivityClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_15
    const-string/jumbo v1, "mProviderClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 2770
    :catchall_9
    move-exception v0

    goto/16 :goto_19

    .line 2767
    :catch_0
    move-exception v0

    .line 2768
    .local v0, "e":Ljava/lang/Exception;
    :try_start_23
    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    .line 2770
    .end local v0    # "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 2771
    const-string v0, "after resolveAppBootConfigFromJSON # specialList:"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceActionBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceActionWhiteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastIntentActionBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActivityClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_15

    .line 2765
    :catch_1
    move-exception v0

    .line 2766
    .local v0, "e":Lorg/json/JSONException;
    :try_start_24
    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    .line 2770
    .end local v0    # "e":Lorg/json/JSONException;
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 2771
    const-string v0, "after resolveAppBootConfigFromJSON # specialList:"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceActionBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceActionWhiteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastIntentActionBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActivityClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_15

    .line 2783
    :cond_22
    :goto_16
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v0, v1, :cond_23

    .line 2784
    return-void

    .line 2787
    :cond_23
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v0

    .line 2788
    :try_start_25
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    if-nez v2, :cond_24

    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v2, v1, :cond_24

    .line 2789
    monitor-exit v0

    return-void

    .line 2791
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    .line 2793
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;

    .line 2794
    .local v2, "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    if-eqz v2, :cond_27

    iget-object v3, v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mPkgName:Ljava/lang/String;

    if-eqz v3, :cond_27

    iget v3, v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mFlag:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_27

    .line 2796
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v3

    .line 2797
    :try_start_26
    sget-object v4, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 2798
    .local v4, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    if-eqz v4, :cond_26

    .line 2799
    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v5

    iget v6, v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    if-eq v5, v6, :cond_26

    iget v5, v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    if-eq v5, v1, :cond_25

    iget v5, v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_26

    .line 2802
    :cond_25
    iget v5, v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 2805
    .end local v4    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_26
    monitor-exit v3

    goto :goto_18

    :catchall_a
    move-exception v0

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    throw v0

    .line 2807
    .end local v2    # "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    :cond_27
    :goto_18
    goto :goto_17

    .line 2809
    :cond_28
    return-void

    .line 2791
    :catchall_b
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    throw v1

    .line 2770
    :goto_19
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_29

    .line 2771
    const-string v1, "after resolveAppBootConfigFromJSON # specialList:"

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mServiceActionBlackList size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mServiceActionWhiteList size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mServiceClassBlackList size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBroadcastIntentActionBlackList size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mActivityClassBlackList size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mProviderClassBlackList size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    :cond_29
    throw v0
.end method

.method private responseSIMStateChanged()Z
    .locals 5

    .line 2197
    sget v0, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2198
    return v1

    .line 2200
    :cond_0
    const/4 v0, 0x0

    .line 2202
    .local v0, "ret":Z
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2203
    .local v2, "mccCountry":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 2204
    const-string/jumbo v3, "in"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "cn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 2207
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootState(Z)V

    goto :goto_1

    .line 2205
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootState(Z)V

    .line 2209
    :goto_1
    const/4 v0, 0x1

    .line 2211
    :cond_3
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    .line 2212
    :cond_4
    const-string v1, "OnePlusAppBootManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseSIMStateChanged # mccCountry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    :cond_5
    return v0
.end method

.method private resumeWhiteListFromOnlineConfig()V
    .locals 8

    .line 2319
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2320
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;

    .line 2321
    .local v2, "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    iget v3, v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2322
    iget-object v3, v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mPkgName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v3

    .line 2323
    .local v3, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getSetted()I

    move-result v5

    if-nez v5, :cond_1

    .line 2324
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 2325
    const-string v5, "OnePlusAppBootManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resumeWhiteListFromOnlineConfig : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    :cond_0
    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 2329
    .end local v2    # "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    .end local v3    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_1
    goto :goto_0

    .line 2330
    :cond_2
    monitor-exit v0

    .line 2331
    return-void

    .line 2330
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private schedulePersistAppBootInfo(J)V
    .locals 2
    .param p1, "delay"    # J

    .line 2584
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 2585
    return-void

    .line 2587
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "schedulePersistAppBootInfo #"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2588
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2589
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "schedulePersistAppBootInfo # hasMessages # MSG_PERSIST_APPBOOT_LIST"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2590
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->removeMessages(I)V

    .line 2592
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendEmptyMessageDelayed(IJ)Z

    .line 2593
    return-void
.end method

.method private sendNextChangeRuleMsg(J)V
    .locals 2
    .param p1, "time"    # J

    .line 2551
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sendNextChangeRuleMsg # "

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2552
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendEmptyMessageDelayed(IJ)Z

    .line 2553
    return-void
.end method

.method private switchControlCenter(Ljava/lang/String;)V
    .locals 3
    .param p1, "forceSwitch"    # Ljava/lang/String;

    .line 1679
    const-string v0, "1"

    const-string/jumbo v1, "persist.sys.appboot.usersetted"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1680
    const-string/jumbo v0, "skip forceSwitch cause user has setted switch before!"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1681
    return-void

    .line 1683
    :cond_0
    const-string/jumbo v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1684
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    goto :goto_0

    .line 1685
    :cond_1
    const-string/jumbo v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1686
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 1688
    :cond_2
    :goto_0
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    return-void
.end method

.method private updateAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 428
    if-nez p1, :cond_0

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !!!!!!!Exception # updateAppBootInfo # pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 431
    :cond_0
    const/4 v0, 0x0

    .line 432
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 433
    if-nez v0, :cond_1

    .line 434
    new-instance v1, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    invoke-direct {v1, p1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;-><init>(Ljava/lang/String;)V

    .line 435
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .local v1, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 436
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v2

    .line 438
    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    goto :goto_0

    .line 443
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fatal Exception # getAppBootInfo # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 443
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v2

    .line 447
    move-object v0, v1

    goto :goto_2

    .line 443
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 445
    .end local v1    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 447
    :goto_2
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# updateAppBootInfo # abi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 450
    :cond_2
    return-object v0
.end method

.method private updateHugePowerPackage(Ljava/lang/String;ZI)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "add"    # Z
    .param p3, "tag"    # I

    .line 1441
    if-nez p1, :cond_0

    return-void

    .line 1443
    :cond_0
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 1444
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHugePowerPackage # pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", add="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " abi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1447
    const/4 v2, 0x2

    if-eqz p2, :cond_2

    if-ne p3, v2, :cond_2

    .line 1448
    :try_start_0
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1449
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1456
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 1450
    :cond_2
    if-nez p2, :cond_4

    const/4 v3, 0x4

    if-ne p3, v3, :cond_4

    .line 1452
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1453
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1454
    :cond_3
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    :cond_4
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1458
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->mScreenOn:Z

    if-nez v1, :cond_5

    if-eqz p2, :cond_5

    if-ne p3, v2, :cond_5

    .line 1459
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 1460
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1463
    :cond_5
    return-void

    .line 1456
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateHugePowerPkgTempAction(Z)V
    .locals 6
    .param p1, "whitelist"    # Z

    .line 1466
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1468
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1469
    .local v2, "pkgName":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v3

    .line 1470
    .local v3, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    if-eqz p1, :cond_0

    .line 1471
    sget-object v4, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    goto :goto_1

    .line 1474
    :cond_0
    sget-object v4, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1478
    .end local v2    # "pkgName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1479
    .end local v3    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_1
    monitor-exit v0

    .line 1480
    return-void

    .line 1479
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateLinkedPkgsInfo(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "abi"    # Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .param p2, "callerStr"    # Ljava/lang/String;
    .param p3, "calleeStr"    # Ljava/lang/String;

    .line 2897
    invoke-virtual {p0, p2}, Lcom/android/server/am/OnePlusAppBootManager;->getArrayListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2898
    .local v0, "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 2899
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2900
    .local v2, "s":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLinkedPkgsInfo # caller pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2901
    :cond_0
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2902
    invoke-virtual {p1, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCallerPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 2904
    :cond_1
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLinkedPkgsInfo # caller pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2906
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    :goto_1
    goto :goto_0

    .line 2909
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/am/OnePlusAppBootManager;->getArrayListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2910
    if-eqz v0, :cond_7

    .line 2911
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2912
    .restart local v2    # "s":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLinkedPkgsInfo # callee pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2913
    :cond_4
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2914
    invoke-virtual {p1, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCalleePackage(Ljava/lang/String;)V

    goto :goto_3

    .line 2916
    :cond_5
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLinkedPkgsInfo # callee pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2918
    .end local v2    # "s":Ljava/lang/String;
    :cond_6
    :goto_3
    goto :goto_2

    .line 2920
    :cond_7
    return-void
.end method

.method private updateNotificationListener(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 605
    const/4 v0, 0x0

    .line 606
    .local v0, "update":Z
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mNotiListenerPkgSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 607
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mNotiListenerPkgSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 608
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mNotiListenerPkgSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 609
    const/4 v0, 0x1

    .line 611
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# updateNotificationListener # update="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " # pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 617
    :cond_1
    if-eqz v0, :cond_2

    .line 618
    new-instance v1, Landroid/content/Intent;

    const-string v2, "action.appboot.notification_listener_update"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 622
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    return-void

    .line 611
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateSettingsObserver(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 2390
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sms_default_application"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultSMSPackage:Ljava/lang/String;

    .line 2392
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "dialer_default_application"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultDailerPackage:Ljava/lang/String;

    .line 2394
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# updateSettingsObserver #tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mDefaultSMSPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultSMSPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mDefaultDailerPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultDailerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2400
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultSMSPackage:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2401
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultSMSPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 2403
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 2406
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultDailerPackage:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2407
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultDailerPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 2409
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 2411
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_2
    return-void
.end method


# virtual methods
.method public addDependencyPackageFlag(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callingPid"    # I

    .line 1412
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 1413
    return-void

    .line 1416
    :cond_0
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 1417
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v1

    .line 1419
    .local v1, "pkgFlag":I
    and-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_1

    .line 1421
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# addDependencyPackageFlag # go pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", callingPid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1425
    :cond_1
    return-void
.end method

.method addPackageProcessName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;

    .line 921
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 923
    .local v0, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 924
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    .end local v0    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_0

    .line 926
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 927
    .restart local v0    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 928
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    .end local v0    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 931
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 932
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 933
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 934
    .local v3, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuffer;

    const-string/jumbo v5, "mKillPackageProcessName: packageName = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 935
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-string v5, ", tags = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 936
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 937
    .local v6, "t":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 938
    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 939
    .end local v6    # "t":Ljava/lang/String;
    goto :goto_2

    .line 940
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 941
    const-string v5, "OnePlusAppBootManager"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    goto :goto_1

    .line 944
    :cond_2
    return-void
.end method

.method public canActivityGo(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 491
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 494
    :cond_0
    const/4 v0, 0x1

    .line 496
    .local v0, "ret":Z
    if-eqz p1, :cond_6

    .line 497
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    .line 499
    .local v2, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canActivityGo # aInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 502
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canActivityGo #2 className ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 507
    :cond_1
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 508
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 510
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 511
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v1, :cond_3

    .line 512
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# canActivityGo # ret=false callingPackage="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",aInfo="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",name="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " # blacklist"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 516
    :cond_3
    const/4 v1, 0x0

    return v1

    .line 520
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v1, :cond_5

    .line 521
    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 524
    :cond_5
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->updateNotificationListener(Ljava/lang/String;)V

    .line 526
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    .line 527
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    .line 530
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v1

    and-int/lit16 v1, v1, -0x81

    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPkgFlag(I)V

    .line 533
    .end local v2    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_6
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# canActivityGo # ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", aInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 537
    :cond_7
    return v0

    .line 492
    .end local v0    # "ret":Z
    :cond_8
    :goto_0
    return v1
.end method

.method public canInstrumentationGo(Landroid/content/ComponentName;II)Z
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "calllingPid"    # I
    .param p3, "callingUid"    # I

    .line 463
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    const/4 v0, 0x1

    .line 468
    .local v0, "ret":Z
    const/16 v2, 0x2710

    if-le p3, v2, :cond_1

    .line 469
    const/4 v0, 0x0

    .line 472
    :cond_1
    if-eqz v0, :cond_2

    .line 473
    if-eqz p1, :cond_2

    .line 474
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 476
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v3

    .line 477
    .local v3, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v3, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 478
    invoke-virtual {v3, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 483
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_2
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canInstrumentationGo # className="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", calllingPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 487
    :cond_3
    return v0

    .line 464
    .end local v0    # "ret":Z
    :cond_4
    :goto_0
    return v1
.end method

.method public canJobSchedulerServiceGo(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 6
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 948
    const/4 v0, 0x1

    .line 950
    .local v0, "ret":Z
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 954
    :cond_0
    const-string/jumbo v1, "persist.sys.appboot.allow"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 955
    return v2

    .line 958
    :cond_1
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->mEnableJobControl:Z

    if-nez v1, :cond_2

    .line 959
    return v2

    .line 962
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    const/16 v3, 0x2710

    if-ge v1, v3, :cond_3

    .line 963
    return v0

    .line 966
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 967
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v3

    .line 968
    .local v3, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v4

    if-eq v4, v2, :cond_4

    .line 969
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 970
    const/4 v0, 0x0

    .line 973
    :cond_4
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 974
    const-string v2, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# canJobSchedulerServiceGo # ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " # abi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " # job="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_5
    return v0

    .line 951
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v3    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_6
    :goto_0
    return v2
.end method

.method public canKillProcessService(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 874
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 875
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " canRestartService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sr.processName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_0
    if-eqz p1, :cond_3

    .line 891
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusAppBootManager;->isContainsProcessName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 892
    .local v0, "value":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 894
    if-nez p3, :cond_1

    .line 895
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v1

    .line 896
    .local v1, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v3

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v1, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPkgFlag(I)V

    .line 897
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "canKillProcessService # setPkgFlag PKG_FLAG_SPECIAL_LAUNCHER_APP"

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 899
    .end local v1    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_1
    return v2

    .line 900
    :cond_2
    if-ne v0, v2, :cond_3

    .line 901
    const/4 v1, 0x0

    return v1

    .line 905
    .end local v0    # "value":I
    :cond_3
    return p3
.end method

.method public canNotificationListenerServiceGo(Landroid/content/ComponentName;)Z
    .locals 6
    .param p1, "compName"    # Landroid/content/ComponentName;

    .line 625
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 629
    :cond_0
    const/4 v0, 0x1

    .line 631
    .local v0, "ret":Z
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 632
    .local v2, "pkgName":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 633
    return v0

    .line 636
    :cond_1
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v3

    .line 637
    .local v3, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v4

    if-eq v4, v1, :cond_2

    .line 638
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 639
    const/4 v0, 0x0

    .line 642
    :cond_2
    if-nez v0, :cond_3

    .line 643
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mNotiListenerPkgSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 644
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mNotiListenerPkgSet:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 645
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 647
    :cond_3
    :goto_0
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canNotificationListenerServiceGo # ret="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " # abi="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " # compName="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_1

    .line 651
    :cond_4
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v1, :cond_5

    .line 652
    if-nez v0, :cond_5

    const-string v1, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canNotificationListenerServiceGo forbid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_5
    :goto_1
    return v0

    .line 626
    .end local v0    # "ret":Z
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_6
    :goto_2
    return v1
.end method

.method public canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingType"    # Ljava/lang/String;

    .line 1362
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1366
    :cond_0
    const/4 v0, 0x1

    .line 1367
    .local v0, "ret":Z
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1368
    .local v2, "pkgName":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v3

    .line 1370
    .local v3, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v4, v1, :cond_1

    .line 1371
    const/4 v0, 0x1

    .line 1373
    const-string v4, "embryo"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v2, v4, v6}, Lcom/android/server/am/OnePlusAppBootManager;->canKillProcessService(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_4

    .line 1374
    const/4 v0, 0x0

    .line 1375
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "canProcGo # set false because of PKG_FLAG_SPECIAL_LAUNCHER_APP!"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1377
    :cond_1
    if-eqz p2, :cond_3

    const-string v4, "activity"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "embryo"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 1379
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 1380
    const/4 v0, 0x0

    goto :goto_1

    .line 1378
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 1383
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 1384
    invoke-direct {p0, v2}, Lcom/android/server/am/OnePlusAppBootManager;->isWidgetPkg(Ljava/lang/String;)Z

    move-result v0

    .line 1387
    :cond_5
    if-ne v0, v1, :cond_6

    const-string v4, "embryo"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v4

    if-eq v4, v1, :cond_6

    .line 1388
    invoke-virtual {v3, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1391
    :cond_6
    if-eqz v0, :cond_7

    .line 1392
    const/4 v4, 0x4

    invoke-direct {p0, v2, v6, v4}, Lcom/android/server/am/OnePlusAppBootManager;->updateHugePowerPackage(Ljava/lang/String;ZI)V

    .line 1396
    :cond_7
    const-string/jumbo v4, "persist.sys.appboot.allow"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1397
    .local v4, "allow":I
    if-ne v4, v1, :cond_8

    .line 1398
    const/4 v0, 0x1

    .line 1399
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# canProcGo # pkgName= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " # force can GO"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_2

    .line 1400
    :cond_8
    if-ne v4, v5, :cond_9

    .line 1401
    const/4 v0, 0x0

    .line 1402
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# canProcGo # pkgName= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " # force can NOT GO"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1405
    .end local v4    # "allow":I
    :cond_9
    :goto_2
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v1, :cond_a

    if-nez v0, :cond_b

    .line 1406
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canProcGo # ret="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " # abi="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1408
    :cond_b
    return v0

    .line 1363
    .end local v0    # "ret":Z
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_c
    :goto_3
    return v1
.end method

.method public canProviderGo(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 7
    .param p1, "cpr"    # Lcom/android/server/am/ContentProviderRecord;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .line 1242
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1245
    :cond_0
    const/4 v0, 0x1

    .line 1246
    .local v0, "ret":Z
    const/4 v2, 0x0

    .line 1247
    .local v2, "callerPkg":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1248
    .local v3, "calleePkg":Ljava/lang/String;
    if-eqz p1, :cond_a

    iget-object v4, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_a

    .line 1249
    iget-object v4, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1250
    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v4

    .line 1252
    .local v4, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    if-nez p2, :cond_2

    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1253
    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v5

    if-eq v5, v1, :cond_2

    iget-object v5, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1255
    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v5

    if-eq v5, v1, :cond_2

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 1256
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1257
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# canProviderGo # ret=false, cpr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " # blackprovider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 1261
    :cond_2
    if-eqz p2, :cond_3

    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_3

    .line 1262
    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1265
    :cond_3
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# canProviderGo # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " calling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1266
    :cond_4
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 1267
    const-string v5, "android"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    .line 1269
    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1270
    invoke-virtual {v4, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCallerPackage(Ljava/lang/String;)V

    .line 1271
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCalleePackage(Ljava/lang/String;)V

    .line 1275
    :cond_6
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v5

    if-eq v5, v1, :cond_7

    .line 1276
    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 1277
    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusAppBootManager;->isWidgetPkg(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1278
    const/4 v0, 0x0

    .line 1292
    :cond_7
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_8

    .line 1293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# canProviderGo # ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", callerApp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", cpr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " # abi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1297
    :cond_8
    if-eqz v0, :cond_9

    .line 1298
    invoke-virtual {v4, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1300
    .end local v4    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_9
    goto :goto_1

    .line 1301
    :cond_a
    const-string v1, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# canProviderGo # Exception: ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", cpr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", callerApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :goto_1
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v1, :cond_b

    .line 1306
    if-nez v0, :cond_b

    const-string v1, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canProviderGo forbid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_b
    return v0

    .line 1243
    .end local v0    # "ret":Z
    .end local v2    # "callerPkg":Ljava/lang/String;
    .end local v3    # "calleePkg":Ljava/lang/String;
    :cond_c
    :goto_2
    return v1
.end method

.method public canReceiverGo(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 7
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 1121
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1125
    :cond_0
    const/4 v0, 0x0

    .line 1126
    .local v0, "ret":Z
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    .line 1129
    .local v2, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    const-string/jumbo v3, "persist.sys.appboot.allow"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 1130
    return v1

    .line 1134
    :cond_1
    if-eqz p2, :cond_7

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_7

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1135
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetBroadcastActionList:Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x2710

    if-eqz v3, :cond_4

    .line 1136
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v1, :cond_2

    .line 1137
    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1144
    :cond_2
    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    .line 1145
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canReceiverGo # ret=true, info= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " # r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " # widget intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1147
    :cond_3
    return v1

    .line 1149
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    iget-object v6, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1155
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v1, :cond_5

    .line 1156
    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1159
    :cond_5
    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    .line 1160
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canReceiverGo # ret=true, info= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " # r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " # white intent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1162
    :cond_6
    return v1

    .line 1178
    :cond_7
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v1, :cond_f

    .line 1179
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_8

    .line 1180
    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1181
    const/4 v0, 0x1

    goto :goto_0

    .line 1182
    :cond_8
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 1183
    const/4 v0, 0x0

    .line 1184
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canReceiverGo # ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", info= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " # r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " # blacklist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1188
    :cond_9
    iget v3, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_a

    .line 1189
    const/4 v0, 0x1

    goto :goto_0

    .line 1190
    :cond_a
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_b

    .line 1191
    const/4 v0, 0x1

    goto :goto_0

    .line 1192
    :cond_b
    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_d

    .line 1193
    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lt v3, v4, :cond_c

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_e

    .line 1195
    :cond_c
    const/4 v0, 0x1

    goto :goto_0

    .line 1198
    :cond_d
    const/4 v0, 0x0

    .line 1201
    :cond_e
    :goto_0
    if-eqz v0, :cond_15

    .line 1202
    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    goto/16 :goto_1

    .line 1205
    :cond_f
    const/4 v0, 0x1

    .line 1206
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1207
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v3

    if-eq v3, v1, :cond_15

    .line 1208
    if-eqz p2, :cond_15

    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_15

    .line 1209
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1210
    .local v1, "temp":Ljava/lang/String;
    if-eqz v1, :cond_12

    .line 1211
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1212
    const/4 v0, 0x0

    .line 1213
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v3, :cond_10

    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v3, :cond_11

    .line 1214
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canReceiverGo # ret=false comp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " # black-action"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1216
    :cond_11
    return v0

    .line 1220
    :cond_12
    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_15

    .line 1221
    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1222
    if-eqz v1, :cond_14

    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1223
    const/4 v0, 0x0

    .line 1224
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v3, :cond_13

    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v3, :cond_14

    .line 1225
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canReceiverGo # ret=false comp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " # blackclass"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1228
    :cond_14
    return v0

    .line 1234
    .end local v1    # "temp":Ljava/lang/String;
    :cond_15
    :goto_1
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v1, :cond_16

    if-nez v0, :cond_17

    .line 1235
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# canReceiverGo # ret="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", info= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " # r="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " # abi="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1238
    :cond_17
    return v0

    .line 1122
    .end local v0    # "ret":Z
    .end local v2    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_18
    :goto_2
    return v1
.end method

.method public canServiceGo(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ILjava/lang/String;)Z
    .locals 17
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p4, "callingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 660
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_38

    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v5, :cond_0

    goto/16 :goto_a

    .line 664
    :cond_0
    const/4 v5, 0x0

    .line 665
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_1

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v7, :cond_1

    .line 666
    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 669
    :cond_1
    if-nez v5, :cond_2

    .line 670
    return v6

    .line 673
    :cond_2
    const/4 v7, 0x0

    .line 674
    .local v7, "ret":Z
    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v8

    .line 677
    .local v8, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    const-string/jumbo v9, "persist.sys.appboot.allow"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v6, :cond_3

    .line 678
    return v6

    .line 682
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 684
    .local v9, "action":Ljava/lang/String;
    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 686
    .local v11, "compName":Landroid/content/ComponentName;
    const/4 v12, 0x0

    .line 687
    .local v12, "callerPkg":Ljava/lang/String;
    move-object v13, v5

    .line 688
    .local v13, "calleePkg":Ljava/lang/String;
    if-eqz v1, :cond_4

    iget-object v14, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_4

    .line 689
    iget-object v14, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 690
    :cond_4
    if-eqz p5, :cond_5

    .line 691
    move-object/from16 v12, p5

    .line 693
    :cond_5
    :goto_0
    sget-boolean v15, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v15, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# canServiceGo # "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " calling "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 694
    :cond_6
    const/4 v10, 0x2

    if-eqz v12, :cond_14

    if-eqz v13, :cond_14

    .line 695
    const-string v15, "android"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string v15, "com.android.nfc"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    goto :goto_1

    .line 724
    :cond_7
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    .line 725
    invoke-virtual {v8, v12}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCallerPackage(Ljava/lang/String;)V

    .line 726
    invoke-static {v12}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCalleePackage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 696
    :cond_8
    :goto_1
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v15

    if-eq v15, v6, :cond_12

    .line 697
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v15

    if-ne v15, v10, :cond_11

    .line 698
    sget-object v10, Lcom/android/server/am/OnePlusAppBootManager;->mSyncServiceClassList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 699
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v6, :cond_9

    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v6, :cond_a

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# canServiceGo # ret=false pkgName "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " # SyncAdapter"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 700
    :cond_a
    const/4 v6, 0x0

    return v6

    .line 703
    :cond_b
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v10, :cond_11

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 704
    if-eqz v11, :cond_e

    .line 705
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    .line 706
    .local v10, "clz":Ljava/lang/String;
    if-eqz v10, :cond_e

    iget-object v15, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 707
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v6, :cond_c

    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v6, :cond_d

    .line 708
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "# canServiceGo # ret=false r "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " # blackclass"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 709
    :cond_d
    const/4 v6, 0x0

    return v6

    .line 713
    .end local v10    # "clz":Ljava/lang/String;
    :cond_e
    if-eqz v9, :cond_11

    iget-object v10, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 714
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v6, :cond_f

    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v6, :cond_10

    .line 715
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# canServiceGo # ret=false intent "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " # black-action"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 716
    :cond_10
    const/4 v6, 0x0

    return v6

    .line 720
    :cond_11
    invoke-virtual {v8, v6}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 722
    :cond_12
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v10, :cond_13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "# canServiceGo # ret=true pkgName "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " # android call"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 723
    :cond_13
    return v6

    .line 730
    :cond_14
    :goto_2
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v15

    if-eq v15, v6, :cond_21

    .line 731
    invoke-direct {v0, v5}, Lcom/android/server/am/OnePlusAppBootManager;->isWidgetPkg(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 732
    invoke-virtual {v8, v6}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 733
    const/4 v7, 0x1

    .line 734
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v10, :cond_15

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "# canServiceGo # ret="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " pkgName "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " # widgetpkg"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 735
    :cond_15
    return v6

    .line 737
    :cond_16
    if-eqz v9, :cond_18

    iget-object v15, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 738
    invoke-virtual {v8, v6}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 739
    const/4 v6, 0x1

    .line 740
    .end local v7    # "ret":Z
    .local v6, "ret":Z
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_17

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# canServiceGo # ret="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " pkgName "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " # white-action"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 741
    :cond_17
    return v6

    .line 744
    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    :cond_18
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v15

    if-ne v15, v6, :cond_19

    .line 745
    invoke-virtual {v8, v6}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 746
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 747
    :cond_19
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v15

    if-ne v15, v10, :cond_1c

    .line 748
    const/4 v7, 0x0

    .line 749
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v10, :cond_1a

    .line 750
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "# canServiceGo # ret="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " pkgName "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " # blacklist"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 751
    :cond_1a
    if-lez v4, :cond_1b

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v15

    if-ne v10, v15, :cond_1b

    .line 752
    const/4 v7, 0x1

    .line 753
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v10, :cond_1b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "# canServiceGo # ret="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " pkgName "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " # blacklist # callingUid"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 756
    :cond_1b
    if-nez v7, :cond_20

    if-eqz v1, :cond_20

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v15

    if-ne v10, v15, :cond_20

    .line 757
    const/4 v7, 0x1

    .line 758
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v10, :cond_20

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "# canServiceGo # ret="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " pkgName "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " # blacklist # proc uid"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_4

    .line 761
    :cond_1c
    const/16 v10, 0x2710

    if-nez v7, :cond_1e

    if-lez v4, :cond_1e

    .line 762
    if-ge v4, v10, :cond_1d

    .line 763
    const/4 v7, 0x1

    goto :goto_3

    .line 764
    :cond_1d
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v15

    if-ne v4, v15, :cond_1e

    .line 765
    const/4 v7, 0x1

    .line 769
    :cond_1e
    :goto_3
    if-nez v7, :cond_20

    if-eqz v1, :cond_20

    .line 770
    iget-object v15, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ge v15, v10, :cond_1f

    .line 771
    const/4 v7, 0x1

    goto :goto_4

    .line 772
    :cond_1f
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v15

    if-ne v10, v15, :cond_20

    .line 773
    const/4 v7, 0x1

    .line 778
    :cond_20
    :goto_4
    if-eqz v7, :cond_2a

    .line 779
    invoke-virtual {v8, v6}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    goto/16 :goto_5

    .line 783
    :cond_21
    const/4 v7, 0x1

    .line 784
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v10, :cond_2a

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 785
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v10

    if-eq v10, v6, :cond_2a

    if-eqz v12, :cond_22

    .line 786
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2a

    .line 788
    :cond_22
    if-eqz v11, :cond_27

    .line 789
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    .line 790
    .restart local v10    # "clz":Ljava/lang/String;
    if-eqz v10, :cond_27

    .line 791
    iget-object v15, v0, Lcom/android/server/am/OnePlusAppBootManager;->mCurAppServiceClassWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_24

    .line 792
    if-eqz v13, :cond_24

    sget-object v15, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_24

    .line 793
    sget-boolean v15, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v15, :cond_23

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# canServiceGo # ret=true r "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " # temp-white-class"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 794
    :cond_23
    const/4 v6, 0x1

    return v6

    .line 798
    :cond_24
    iget-object v6, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 799
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v6, :cond_25

    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v6, :cond_26

    :cond_25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "# canServiceGo # ret=false r "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " # blackclass"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 800
    :cond_26
    const/4 v6, 0x0

    return v6

    .line 806
    .end local v10    # "clz":Ljava/lang/String;
    :cond_27
    if-eqz v9, :cond_2a

    iget-object v6, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 807
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v6, :cond_28

    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v6, :cond_29

    .line 808
    :cond_28
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# canServiceGo # ret=false intent "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " # black-action"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 809
    :cond_29
    const/4 v6, 0x0

    return v6

    .line 814
    :cond_2a
    :goto_5
    if-nez v7, :cond_34

    .line 815
    if-eqz v12, :cond_34

    sget-object v6, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    .line 816
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    sget-object v6, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    .line 817
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 818
    :cond_2b
    const/4 v6, 0x0

    .line 820
    .local v6, "tag":Ljava/lang/String;
    if-eqz v11, :cond_2c

    .line 821
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "#"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 823
    :cond_2c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "#"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 826
    :goto_6
    if-eqz v1, :cond_2d

    .line 827
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "#"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 829
    :cond_2d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 832
    :goto_7
    invoke-virtual {v8, v6}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->updateLastCallingServiceBootPolicy(Ljava/lang/String;)Z

    move-result v7

    .line 833
    if-eqz v7, :cond_33

    .line 834
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v10, :cond_33

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v10

    if-eqz v10, :cond_33

    .line 835
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v10

    const/4 v15, 0x1

    if-eq v10, v15, :cond_33

    .line 836
    if-eqz v11, :cond_30

    .line 837
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    .line 838
    .restart local v10    # "clz":Ljava/lang/String;
    if-eqz v10, :cond_30

    iget-object v15, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_30

    .line 839
    sget-boolean v15, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v15, :cond_2e

    sget-boolean v15, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v15, :cond_2f

    .line 840
    :cond_2e
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# canServiceGo # ret=false r "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " # blackclass"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 841
    :cond_2f
    const/4 v1, 0x0

    return v1

    .line 845
    .end local v10    # "clz":Ljava/lang/String;
    :cond_30
    if-eqz v9, :cond_33

    iget-object v1, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 846
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v1, :cond_31

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v1, :cond_32

    .line 847
    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# canServiceGo # ret=false intent "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " # black-action"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 848
    :cond_32
    const/4 v1, 0x0

    return v1

    .line 853
    :cond_33
    if-eqz v7, :cond_34

    .line 854
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 855
    const-string v1, "OnePlusAppBootManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "let intent "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " go for boot policy!"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    .end local v6    # "tag":Ljava/lang/String;
    :cond_34
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v1, :cond_36

    if-nez v7, :cond_35

    goto :goto_8

    .line 867
    :cond_35
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v1, :cond_37

    .line 868
    if-nez v7, :cond_37

    const-string v1, "OnePlusAppBootManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "canServiceGo forbid "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 863
    :cond_36
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# canServiceGo # ret="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " # abi="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " # mCurrentActivityPkg="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mLastActivityPkg="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 870
    :cond_37
    :goto_9
    return v7

    .line 661
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v7    # "ret":Z
    .end local v8    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .end local v9    # "action":Ljava/lang/String;
    .end local v11    # "compName":Landroid/content/ComponentName;
    .end local v12    # "callerPkg":Ljava/lang/String;
    .end local v13    # "calleePkg":Ljava/lang/String;
    :cond_38
    :goto_a
    const/4 v1, 0x1

    return v1
.end method

.method public getAllAppBootModes(I)Ljava/util/List;
    .locals 8
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/appboot/AppBootMode;",
            ">;"
        }
    .end annotation

    .line 1585
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1586
    return-object v1

    .line 1589
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1591
    .local v0, "abmList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppBootMode;>;"
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v2

    .line 1592
    :try_start_0
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 1593
    monitor-exit v2

    return-object v1

    .line 1596
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 1597
    .local v3, "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 1598
    new-instance v4, Lcom/oneplus/appboot/AppBootMode;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v6

    .line 1599
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCallerPackageSet()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/oneplus/appboot/AppBootMode;-><init>(Ljava/lang/String;II)V

    .line 1598
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1601
    .end local v3    # "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_2
    goto :goto_0

    .line 1602
    :cond_3
    monitor-exit v2

    .line 1603
    return-object v0

    .line 1602
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppBootMode(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1607
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 1608
    const/4 v0, -0x1

    return v0

    .line 1611
    :cond_0
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 1612
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v1

    return v1
.end method

.method public getAppBootState()Z
    .locals 1

    .line 1651
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 1652
    const/4 v0, 0x0

    return v0

    .line 1654
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    return v0
.end method

.method getArrayListFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2863
    .local v0, "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto/16 :goto_3

    .line 2867
    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2868
    .local v1, "spt":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 2869
    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_6

    .line 2870
    aget-object v2, v1, v4

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2871
    .local v2, "ret":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2872
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2873
    .end local v2    # "ret":Ljava/lang/String;
    goto/16 :goto_1

    .line 2874
    :cond_2
    array-length v2, v1

    if-le v2, v5, :cond_6

    .line 2875
    aget-object v2, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2876
    .restart local v2    # "ret":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ret="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2877
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2878
    array-length v3, v1

    sub-int/2addr v3, v5

    aget-object v3, v1, v3

    .line 2879
    .local v3, "last":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2880
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ret="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2881
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2882
    move v4, v5

    .line 2882
    .local v4, "i":I
    :goto_0
    array-length v6, v1

    sub-int/2addr v6, v5

    if-ge v4, v6, :cond_6

    .line 2883
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2884
    :cond_5
    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2882
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2888
    .end local v2    # "ret":Ljava/lang/String;
    .end local v3    # "last":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_6
    :goto_1
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 2889
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2890
    .local v3, "s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2891
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_2

    .line 2893
    :cond_7
    return-object v0

    .line 2864
    .end local v1    # "spt":[Ljava/lang/String;
    :cond_8
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCalleePackageArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1707
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1708
    return-object v1

    .line 1711
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    goto :goto_0

    .line 1715
    :cond_1
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCalleePackageSet()Ljava/util/HashSet;

    move-result-object v0

    .line 1716
    .local v0, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1717
    .local v1, "pkgArray":[Ljava/lang/String;
    return-object v1

    .line 1712
    .end local v0    # "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1    # "pkgArray":[Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getCallerPackageArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1692
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1693
    return-object v1

    .line 1696
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    goto :goto_0

    .line 1700
    :cond_1
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCallerPackageSet()Ljava/util/HashSet;

    move-result-object v0

    .line 1701
    .local v0, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallerPackageArray # packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pkgSet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1702
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1703
    .local v1, "pkgArray":[Ljava/lang/String;
    return-object v1

    .line 1697
    .end local v0    # "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1    # "pkgArray":[Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v1
.end method

.method public getScreenState()Z
    .locals 1

    .line 3227
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mScreenOn:Z

    return v0
.end method

.method public initEnv(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 6
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 2334
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 2335
    return-void

    .line 2338
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 2339
    iput-object p2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    .line 2341
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppBootThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    .line 2342
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2343
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    .line 2345
    if-eqz p2, :cond_1

    .line 2346
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->registerPackageReceiver()V

    .line 2347
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->registerGeneralReceiver()V

    .line 2350
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager;->initOnlineConfig()V

    .line 2352
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mSettingsObserver:Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;

    .line 2353
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mResolver:Landroid/content/ContentResolver;

    .line 2354
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sms_default_application"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mSettingsObserver:Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2357
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "dialer_default_application"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mSettingsObserver:Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2360
    const-string/jumbo v0, "init"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusAppBootManager;->updateSettingsObserver(Ljava/lang/String;)V

    .line 2361
    const-string v0, "com.tencent.mobileqq"

    const-string v1, "com.tencent.mobileqq:MSF"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->addPackageProcessName(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mRegion:Ljava/lang/String;

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2363
    sget v0, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 2364
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 2365
    .local v0, "on":Z
    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 2366
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 2367
    const-string v2, "OnePlusAppBootManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initEnv # set from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    .end local v0    # "on":Z
    :cond_2
    new-array v0, v1, [I

    const/16 v1, 0x22

    aput v1, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2372
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->sendNextChangeRuleMsg(J)V

    .line 2374
    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpInfo()V

    .line 2375
    return-void
.end method

.method public initOnlineConfig()V
    .locals 5

    .line 2604
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    new-instance v3, Lcom/android/server/am/OnePlusAppBootManager$AppBootConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusAppBootManager$AppBootConfigUpdater;-><init>(Lcom/android/server/am/OnePlusAppBootManager;)V

    sget-object v4, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 2605
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 2606
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessage(Landroid/os/Message;)Z

    .line 2607
    return-void
.end method

.method public initPackages(Landroid/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .line 2284
    .local p1, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 2285
    return-void

    .line 2288
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, " initPackages # "

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2289
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2290
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, " initPackages # mPkgMap size > 0 , return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2291
    :cond_2
    return-void

    .line 2294
    :cond_3
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 2295
    .local v1, "item":Landroid/content/pm/PackageParser$Package;
    new-instance v2, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;-><init>(Ljava/lang/String;)V

    .line 2296
    .local v2, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 2297
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2298
    .end local v1    # "item":Landroid/content/pm/PackageParser$Package;
    .end local v2    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    goto :goto_0

    .line 2300
    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->readXml_specialList()V

    .line 2301
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager;->readXml_appboot()I

    .line 2304
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAbiRestoreList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2305
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAbiRestoreList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2306
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    .line 2307
    .restart local v2    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->access$1300(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;)I

    move-result v3

    and-int/lit8 v3, v3, -0x21

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->access$1302(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;I)I

    .line 2308
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->access$1300(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;)I

    move-result v3

    and-int/lit8 v3, v3, -0x41

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->access$1302(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;I)I

    .line 2309
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->access$1402(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;I)I

    .line 2310
    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 2311
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 2312
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    goto :goto_1

    .line 2315
    :cond_5
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->resumeWhiteListFromOnlineConfig()V

    .line 2316
    return-void
.end method

.method isContainsProcessName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;

    .line 908
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProcessServiceKillEnable:Z

    if-eqz v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 911
    .local v0, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    const/4 v1, 0x2

    return v1

    .line 914
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 917
    .end local v0    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public readXml_appboot()I
    .locals 34

    .line 2995
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 2996
    const/4 v0, -0x4

    return v0

    .line 2998
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "# readXml_appboot"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2999
    :cond_1
    const/4 v2, 0x0

    .line 3000
    .local v2, "ret":I
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/system/appboot/appboot.xml"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 3001
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3002
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "# readXml_appboot # file not exists"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3003
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 3005
    :cond_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 3006
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v5, 0x0

    .line 3007
    .local v5, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v0, 0x0

    move-object v6, v0

    .line 3009
    .local v6, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-object v5, v0

    .line 3010
    :try_start_1
    invoke-virtual {v5, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    move-object v6, v0

    .line 3012
    const-string v0, "appboot"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    move-object v7, v0

    .line 3013
    .local v7, "nlab":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    move-object v9, v0

    .line 3014
    .local v9, "attr":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v0, "version"

    invoke-interface {v9, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 3016
    .local v10, "version":Ljava/lang/String;
    const-string/jumbo v0, "switch"

    invoke-interface {v9, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 3017
    .local v11, "appbootSwitch":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v0, :cond_4

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " readXml_appboot # version "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " switch "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3075
    .end local v7    # "nlab":Lorg/w3c/dom/NodeList;
    .end local v9    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "version":Ljava/lang/String;
    .end local v11    # "appbootSwitch":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    goto/16 :goto_7

    .line 3018
    .restart local v7    # "nlab":Lorg/w3c/dom/NodeList;
    .restart local v9    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .restart local v10    # "version":Ljava/lang/String;
    .restart local v11    # "appbootSwitch":Ljava/lang/String;
    :cond_4
    :goto_0
    :try_start_3
    const-string v0, "0"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v12, 0x1

    xor-int/2addr v0, v12

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 3019
    const-string/jumbo v0, "pkg"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object v13, v0

    .line 3020
    .local v13, "nl":Lorg/w3c/dom/NodeList;
    if-nez v13, :cond_5

    .line 3021
    :try_start_4
    const-string v0, "OnePlusAppBootManager"

    const-string v8, "# readXml_appboot # error # nl = null"

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 3022
    const/4 v0, -0x2

    return v0

    .line 3024
    :cond_5
    :try_start_5
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    .line 3025
    .local v14, "xmlVersion":I
    move v0, v8

    .line 3025
    .local v0, "i":I
    :goto_1
    move v15, v0

    .line 3025
    .end local v0    # "i":I
    .local v15, "i":I
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v15, v0, :cond_e

    .line 3026
    invoke-interface {v13, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    move-object/from16 v16, v0

    .line 3027
    .local v16, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v0, "package"

    move-object/from16 v8, v16

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 3027
    .end local v16    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .local v8, "nnm":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 3028
    .local v17, "pkgName":Ljava/lang/String;
    const-string v0, "flag"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    .line 3029
    .local v18, "flag":Ljava/lang/String;
    const-string v0, "action"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .line 3031
    .local v19, "actionStr":Ljava/lang/String;
    const-string v0, "caller"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    .line 3032
    .local v20, "callerStr":Ljava/lang/String;
    const-string v0, "callee"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 3034
    .local v21, "calleeStr":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "package "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .end local v17    # "pkgName":Ljava/lang/String;
    .local v12, "pkgName":Ljava/lang/String;
    move-object/from16 v22, v3

    :try_start_6
    const-string v3, " # flag "

    .line 3034
    .end local v3    # "f":Ljava/io/File;
    .local v22, "f":Ljava/io/File;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3034
    .end local v18    # "flag":Ljava/lang/String;
    .local v3, "flag":Ljava/lang/String;
    move-object/from16 v23, v3

    const-string v3, " # action "

    .line 3034
    .end local v3    # "flag":Ljava/lang/String;
    .local v23, "flag":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 3034
    .end local v19    # "actionStr":Ljava/lang/String;
    .local v3, "actionStr":Ljava/lang/String;
    move-object/from16 v24, v4

    :try_start_7
    const-string v4, " # callerStr="

    .line 3034
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v24, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 3034
    .end local v20    # "callerStr":Ljava/lang/String;
    .local v4, "callerStr":Ljava/lang/String;
    move-object/from16 v25, v5

    :try_start_8
    const-string v5, " # calleeStr="

    .line 3034
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v25, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3034
    .end local v21    # "calleeStr":Ljava/lang/String;
    .local v5, "calleeStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_2

    .line 3075
    .end local v3    # "actionStr":Ljava/lang/String;
    .end local v4    # "callerStr":Ljava/lang/String;
    .end local v7    # "nlab":Lorg/w3c/dom/NodeList;
    .end local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v9    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "version":Ljava/lang/String;
    .end local v11    # "appbootSwitch":Ljava/lang/String;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "nl":Lorg/w3c/dom/NodeList;
    .end local v14    # "xmlVersion":I
    .end local v15    # "i":I
    .end local v23    # "flag":Ljava/lang/String;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v5, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_1
    move-exception v0

    move-object/from16 v25, v5

    .line 3075
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    goto/16 :goto_7

    .line 3075
    .end local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_2
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    .line 3075
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    goto/16 :goto_7

    .line 3038
    .end local v22    # "f":Ljava/io/File;
    .end local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v3, "f":Ljava/io/File;
    .restart local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "nlab":Lorg/w3c/dom/NodeList;
    .restart local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v9    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .restart local v10    # "version":Ljava/lang/String;
    .restart local v11    # "appbootSwitch":Ljava/lang/String;
    .restart local v13    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v14    # "xmlVersion":I
    .restart local v15    # "i":I
    .restart local v17    # "pkgName":Ljava/lang/String;
    .restart local v18    # "flag":Ljava/lang/String;
    .restart local v19    # "actionStr":Ljava/lang/String;
    .restart local v20    # "callerStr":Ljava/lang/String;
    .restart local v21    # "calleeStr":Ljava/lang/String;
    :cond_6
    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v12, v17

    move-object/from16 v23, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    .end local v17    # "pkgName":Ljava/lang/String;
    .end local v18    # "flag":Ljava/lang/String;
    .end local v19    # "actionStr":Ljava/lang/String;
    .end local v20    # "callerStr":Ljava/lang/String;
    .end local v21    # "calleeStr":Ljava/lang/String;
    .local v3, "actionStr":Ljava/lang/String;
    .local v4, "callerStr":Ljava/lang/String;
    .local v5, "calleeStr":Ljava/lang/String;
    .restart local v12    # "pkgName":Ljava/lang/String;
    .restart local v22    # "f":Ljava/io/File;
    .restart local v23    # "flag":Ljava/lang/String;
    .restart local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v0

    .line 3039
    .local v26, "action":I
    invoke-static {v12}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    move-object/from16 v27, v0

    .line 3040
    .local v27, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    move-object/from16 v28, v3

    move-object/from16 v3, v27

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/am/OnePlusAppBootManager;->updateLinkedPkgsInfo(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 3041
    .end local v27    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .local v3, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .local v28, "actionStr":Ljava/lang/String;
    move-object/from16 v29, v4

    const/4 v4, 0x1

    if-le v14, v4, :cond_8

    .line 3043
    .end local v4    # "callerStr":Ljava/lang/String;
    .local v29, "callerStr":Ljava/lang/String;
    :try_start_9
    const-string/jumbo v0, "setted"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 3044
    .local v0, "settedStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3045
    .local v4, "setted":I
    if-eqz v4, :cond_7

    move-object/from16 v30, v0

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v30, v0

    const/4 v0, 0x0

    .line 3045
    .end local v0    # "settedStr":Ljava/lang/String;
    .local v30, "settedStr":Ljava/lang/String;
    :goto_3
    invoke-virtual {v3, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setSetted(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 3048
    .end local v4    # "setted":I
    .end local v30    # "settedStr":Ljava/lang/String;
    goto :goto_4

    .line 3046
    :catch_3
    move-exception v0

    .line 3047
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v4, "OnePlusAppBootManager"

    move-object/from16 v31, v0

    const-string/jumbo v0, "readXml_appboot # tag setted parse error"

    .line 3047
    .end local v0    # "e":Ljava/lang/Exception;
    .local v31, "e":Ljava/lang/Exception;
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    .end local v31    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_4
    move-object/from16 v32, v5

    move/from16 v4, v26

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 3051
    .end local v5    # "calleeStr":Ljava/lang/String;
    .end local v26    # "action":I
    .local v4, "action":I
    .local v32, "calleeStr":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 3052
    invoke-virtual {v3, v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 3065
    :goto_5
    move/from16 v33, v4

    const/4 v4, 0x1

    goto :goto_6

    .line 3053
    :cond_9
    const/4 v0, 0x2

    if-ne v4, v0, :cond_a

    .line 3054
    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 3055
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    goto :goto_5

    .line 3056
    :cond_a
    const/4 v5, 0x0

    if-nez v4, :cond_c

    .line 3057
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v5

    move/from16 v33, v4

    const/4 v4, 0x1

    if-ne v5, v4, :cond_b

    .line 3058
    .end local v4    # "action":I
    .local v33, "action":I
    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    goto :goto_6

    .line 3060
    :cond_b
    invoke-virtual {v3, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    goto :goto_6

    .line 3065
    .end local v33    # "action":I
    .restart local v4    # "action":I
    :cond_c
    move/from16 v33, v4

    const/4 v4, 0x1

    .line 3065
    .end local v4    # "action":I
    .restart local v33    # "action":I
    :goto_6
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_d

    .line 3066
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_d

    .line 3067
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getSetted()I

    move-result v0

    if-nez v0, :cond_d

    .line 3068
    iget-object v0, v1, Lcom/android/server/am/OnePlusAppBootManager;->mAbiRestoreList:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->access$2600(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 3072
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 3025
    .end local v3    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .end local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v23    # "flag":Ljava/lang/String;
    .end local v28    # "actionStr":Ljava/lang/String;
    .end local v29    # "callerStr":Ljava/lang/String;
    .end local v32    # "calleeStr":Ljava/lang/String;
    .end local v33    # "action":I
    add-int/lit8 v0, v15, 0x1

    .line 3025
    .end local v15    # "i":I
    .local v0, "i":I
    move v12, v4

    move-object/from16 v3, v22

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    const/4 v8, 0x0

    goto/16 :goto_1

    .line 3075
    .end local v0    # "i":I
    .end local v7    # "nlab":Lorg/w3c/dom/NodeList;
    .end local v9    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "version":Ljava/lang/String;
    .end local v11    # "appbootSwitch":Ljava/lang/String;
    .end local v13    # "nl":Lorg/w3c/dom/NodeList;
    .end local v14    # "xmlVersion":I
    :catch_4
    move-exception v0

    goto :goto_7

    .line 3079
    .end local v22    # "f":Ljava/io/File;
    .end local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v3, "f":Ljava/io/File;
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v5, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_e
    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    .line 3081
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v22    # "f":Ljava/io/File;
    .restart local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    return v2

    .line 3075
    .end local v22    # "f":Ljava/io/File;
    .end local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_5
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    .line 3075
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v22    # "f":Ljava/io/File;
    .restart local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    goto :goto_7

    .line 3075
    .end local v22    # "f":Ljava/io/File;
    .end local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_6
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    .line 3076
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v22    # "f":Ljava/io/File;
    .restart local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_7
    const-string v3, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# readXml_appboot # parse error ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3078
    const/4 v3, -0x3

    return v3
.end method

.method public readXml_prelist()I
    .locals 20

    .line 3085
    const/4 v1, 0x0

    .line 3086
    .local v1, "ret":I
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/etc/presetlist.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 3087
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3088
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "# readXml_prelist # file not exists"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3089
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 3091
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 3092
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x0

    .line 3093
    .local v4, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v0, 0x0

    move-object v5, v0

    .line 3095
    .local v5, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object v4, v0

    .line 3096
    :try_start_1
    invoke-virtual {v4, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    move-object v5, v0

    .line 3098
    const-string/jumbo v0, "prelist"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 3099
    .local v0, "nlab":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 3100
    .local v7, "attr":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v8, "version"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 3101
    .local v8, "version":Ljava/lang/String;
    const-string/jumbo v9, "switch"

    invoke-interface {v7, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 3102
    .local v9, "appbootSwitch":Ljava/lang/String;
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v10, :cond_2

    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " readXml_prelist # version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " switch "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3117
    .end local v0    # "nlab":Lorg/w3c/dom/NodeList;
    .end local v7    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "appbootSwitch":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v4, p0

    goto/16 :goto_3

    .line 3104
    .restart local v0    # "nlab":Lorg/w3c/dom/NodeList;
    .restart local v7    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .restart local v8    # "version":Ljava/lang/String;
    .restart local v9    # "appbootSwitch":Ljava/lang/String;
    :cond_2
    :goto_0
    :try_start_3
    const-string/jumbo v10, "pkg"

    invoke-interface {v5, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 3105
    .local v10, "nl":Lorg/w3c/dom/NodeList;
    nop

    .line 3105
    .local v6, "i":I
    :goto_1
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v6, v11, :cond_4

    .line 3106
    invoke-interface {v10, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    .line 3107
    .local v11, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v12, "package"

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 3108
    .local v12, "pkgName":Ljava/lang/String;
    const-string v13, "flag"

    invoke-interface {v11, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    .line 3109
    .local v13, "flag":Ljava/lang/String;
    const-string v14, "action"

    invoke-interface {v11, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 3111
    .local v14, "action":Ljava/lang/String;
    sget-boolean v15, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v15, :cond_3

    :try_start_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string/jumbo v0, "package "

    .line 3111
    .end local v0    # "nlab":Lorg/w3c/dom/NodeList;
    .local v16, "nlab":Lorg/w3c/dom/NodeList;
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # flag "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # action "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 3113
    .end local v16    # "nlab":Lorg/w3c/dom/NodeList;
    .restart local v0    # "nlab":Lorg/w3c/dom/NodeList;
    :cond_3
    move-object/from16 v16, v0

    .line 3113
    .end local v0    # "nlab":Lorg/w3c/dom/NodeList;
    .restart local v16    # "nlab":Lorg/w3c/dom/NodeList;
    :goto_2
    :try_start_5
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    new-instance v15, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 3114
    move-object/from16 v17, v2

    :try_start_6
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 3114
    .end local v2    # "f":Ljava/io/File;
    .local v17, "f":Ljava/io/File;
    move-object/from16 v18, v3

    :try_start_7
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 3114
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v18, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    move-object/from16 v19, v4

    move-object/from16 v4, p0

    :try_start_8
    invoke-direct {v15, v4, v12, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;II)V

    .line 3113
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v19, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 3115
    add-int/lit8 v1, v1, 0x1

    .line 3105
    .end local v11    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "flag":Ljava/lang/String;
    .end local v14    # "action":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_1

    .line 3117
    .end local v6    # "i":I
    .end local v7    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "appbootSwitch":Ljava/lang/String;
    .end local v10    # "nl":Lorg/w3c/dom/NodeList;
    .end local v16    # "nlab":Lorg/w3c/dom/NodeList;
    :catch_1
    move-exception v0

    goto :goto_3

    .line 3117
    .end local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_2
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v4, p0

    .line 3117
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    goto :goto_3

    .line 3117
    .end local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_3
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v4, p0

    .line 3117
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    goto :goto_3

    .line 3120
    .end local v17    # "f":Ljava/io/File;
    .end local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_4
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v4, p0

    .line 3122
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v17    # "f":Ljava/io/File;
    .restart local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    return v1

    .line 3117
    .end local v17    # "f":Ljava/io/File;
    .end local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_4
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v4, p0

    .line 3117
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v17    # "f":Ljava/io/File;
    .restart local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    goto :goto_3

    .line 3117
    .end local v17    # "f":Ljava/io/File;
    .end local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_5
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object v2, v4

    move-object/from16 v4, p0

    move-object/from16 v19, v2

    .line 3118
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "f":Ljava/io/File;
    .restart local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_3
    const-string v2, "OnePlusAppBootManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# readXml_prelist # parse error ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    const/4 v2, -0x2

    return v2
.end method

.method public setAppBootMode(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 1616
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 1617
    const/4 v0, 0x0

    return v0

    .line 1619
    :cond_0
    const/4 v0, 0x0

    .line 1620
    .local v0, "ret":I
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v1

    .line 1621
    .local v1, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    packed-switch p2, :pswitch_data_0

    .line 1633
    const/16 v0, -0xa

    goto :goto_0

    .line 1625
    :pswitch_0
    invoke-virtual {v1, p2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1626
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1627
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    :cond_1
    const/4 v0, 0x1

    .line 1630
    nop

    .line 1638
    :goto_0
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# setAppBootMode # packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1642
    :cond_2
    if-lez v0, :cond_3

    .line 1643
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setSetted(I)V

    .line 1644
    const-wide/16 v2, 0x7d0

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    .line 1647
    :cond_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setAppBootState(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 1658
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 1659
    return-void

    .line 1662
    :cond_0
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# setAppBootState # on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mAppBootSwitch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    sget v0, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1665
    sget v0, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    .line 1666
    const-string/jumbo v0, "persist.sys.appboot.flags"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-eq v0, p1, :cond_2

    .line 1670
    sput-boolean p1, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 1672
    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    .line 1675
    :cond_2
    const-string/jumbo v0, "persist.sys.appboot.usersetted"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    return-void
.end method

.method public setCurrentIME(Landroid/content/Intent;)V
    .locals 2
    .param p1, "service"    # Landroid/content/Intent;

    .line 1555
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getPkgNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    .line 1556
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# setCurrentIME # mCurrentIME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1558
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1559
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 1560
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1561
    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1563
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_1
    return-void
.end method

.method public setCurrentWallpaperPackage(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 1566
    if-nez p1, :cond_0

    .line 1567
    return-void

    .line 1570
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    .line 1571
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# setCurrentWallpaperPackage # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1573
    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1574
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 1576
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1578
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_2
    return-void
.end method

.method public skipBroadcast(Landroid/content/Intent;Ljava/lang/String;IILcom/android/server/am/ProcessRecord;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .line 983
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# skipBroadcast # intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callerPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",callingPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",callingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",callerApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 986
    :cond_0
    const/16 v0, 0x2710

    const/4 v1, 0x0

    if-ge p4, v0, :cond_1

    .line 987
    return v1

    .line 990
    :cond_1
    if-nez p1, :cond_2

    .line 991
    return v1

    .line 994
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 996
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getPkgNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 997
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 998
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v3

    .line 999
    .local v3, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 1000
    const-string v1, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# skipBroadcast # black action : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    return v5

    .line 1006
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1007
    const-string v2, "com.tencent.mobileqq.broadcast.qq"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1008
    invoke-static {p2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    .line 1009
    .local v2, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v3

    and-int/lit16 v3, v3, -0x81

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPkgFlag(I)V

    .line 1010
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "skipBroadcast # remove PKG_FLAG_SPECIAL_LAUNCHER_APP !"

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1014
    .end local v2    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_4
    return v1
.end method

.method public trackProcess(ZLcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 9
    .param p1, "add"    # Z
    .param p2, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "reason"    # Ljava/lang/String;

    .line 351
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 352
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PKG_TRACK # trackProcess # add="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .local v0, "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 358
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 360
    .restart local v0    # "pkgName":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_2

    .line 361
    return-void

    .line 363
    :cond_2
    const/4 v1, 0x0

    .line 364
    .local v1, "pkgDied":Z
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mProcMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 365
    :try_start_0
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mProcMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 366
    .local v3, "procSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/am/ProcessRecord;>;"
    if-nez v3, :cond_3

    .line 367
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v3, v4

    .line 368
    sget-object v4, Lcom/android/server/am/OnePlusAppBootManager;->mProcMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    if-nez p1, :cond_3

    .line 370
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PKG_TRACK # Exception # no add when remove ProcessRecord:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_3
    if-eqz p1, :cond_4

    .line 374
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 376
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    .line 377
    .local v4, "size":I
    if-nez v4, :cond_5

    .line 378
    monitor-exit v2

    return-void

    .line 380
    :cond_5
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 381
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    move v4, v5

    .line 382
    if-nez v4, :cond_6

    .line 383
    const/4 v1, 0x1

    .line 385
    :cond_6
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_7

    .line 386
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 387
    .local v5, "contain":Z
    const-string v6, "OnePlusAppBootManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PKG_TRACK # trackProcess # pkgName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", contain="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .end local v3    # "procSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/am/ProcessRecord;>;"
    .end local v4    # "size":I
    .end local v5    # "contain":Z
    :cond_7
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    if-eqz v1, :cond_8

    .line 399
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusAppBootManager;->updateAppStopInfo(Ljava/lang/String;)V

    .line 401
    :cond_8
    return-void

    .line 391
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public updateAccesibilityServiceFlag(Landroid/content/Intent;Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "flag"    # I

    .line 1721
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1725
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusAppBootManager;->getPkgNameOfBind(Landroid/content/Intent;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 1727
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    goto :goto_0

    .line 1731
    :cond_1
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAccesibilityServiceFlag # packageName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", flag="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1732
    :cond_2
    if-ne p3, v2, :cond_3

    .line 1733
    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1735
    :cond_3
    return-void

    .line 1728
    :cond_4
    :goto_0
    return-void

    .line 1722
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_5
    :goto_1
    return-void
.end method

.method public updateAppStopInfo(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1496
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 1497
    return-void

    .line 1500
    :cond_0
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 1502
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1503
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1504
    :cond_1
    return-void

    .line 1507
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultSMSPackage:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultSMSPackage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1508
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # smspkg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1509
    :cond_3
    return-void

    .line 1512
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultDailerPackage:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultDailerPackage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1513
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # dailpkg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1514
    :cond_5
    return-void

    .line 1517
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->isWidgetPkg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1518
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # widgetpkg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1519
    :cond_7
    return-void

    .line 1522
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v1

    .line 1523
    .local v1, "action":I
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v2

    .line 1524
    .local v2, "pkgFlag":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_b

    .line 1525
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_9

    .line 1526
    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1527
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " # sys-whitelist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1529
    :cond_9
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1530
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateAppStopInfo # ignore pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " # 3rd-whitelist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1532
    :cond_a
    :goto_0
    return-void

    .line 1535
    :cond_b
    const/4 v5, 0x2

    if-ne v1, v5, :cond_d

    .line 1536
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1537
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateAppStopInfo # ignore pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " # blacklist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1538
    :cond_c
    return-void

    .line 1541
    :cond_d
    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_f

    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_f

    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_e

    goto :goto_1

    .line 1548
    :cond_e
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1549
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateAppStopInfo # ignore pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " # abi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_2

    .line 1544
    :cond_f
    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1545
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " # abi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1552
    :cond_10
    :goto_2
    return-void
.end method

.method public updateAppStopInfo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callingPid"    # I

    .line 1483
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 1484
    return-void

    .line 1486
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1487
    .local v0, "samePid":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 1489
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # samePid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1490
    :cond_2
    return-void

    .line 1492
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->updateAppStopInfo(Ljava/lang/String;)V

    .line 1493
    return-void
.end method

.method public updateBootFlag(Landroid/content/pm/ResolveInfo;I)V
    .locals 4
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "flag"    # I

    .line 1332
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 1333
    return-void

    .line 1336
    :cond_0
    const/4 v0, 0x0

    .line 1337
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 1338
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1

    .line 1339
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 1340
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_2

    .line 1341
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 1342
    :cond_2
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_4

    .line 1343
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 1348
    :goto_0
    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v1

    .line 1349
    .local v1, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v2

    if-eq v2, p2, :cond_3

    .line 1350
    invoke-virtual {v1, p2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1353
    :cond_3
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# updateBootFlag # abi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .end local v1    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    goto :goto_1

    .line 1345
    :cond_4
    return-void

    .line 1358
    :cond_5
    :goto_1
    return-void
.end method

.method public updatePowerFlag(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .line 1428
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 1429
    return-void

    .line 1432
    :cond_0
    const v0, 0x8000

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    .line 1433
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->updateHugePowerPackage(Ljava/lang/String;ZI)V

    .line 1435
    :cond_1
    return-void
.end method

.method public updateWidgetPackage(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "add"    # Z

    .line 575
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# updateWidgetPackage # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 577
    if-eqz p2, :cond_1

    .line 578
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 584
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 580
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 581
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 584
    :cond_2
    :goto_0
    monitor-exit v0

    .line 585
    return-void

    .line 584
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateWidgetPackages(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 588
    .local p1, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 589
    if-nez p1, :cond_0

    .line 590
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    .line 594
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 592
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    .line 594
    :goto_0
    monitor-exit v0

    .line 595
    return-void

    .line 594
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeXml_appboot(Ljava/util/HashMap;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;",
            ">;)I"
        }
    .end annotation

    .line 2940
    .local p1, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;>;"
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "writeXml_appboot #"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2942
    :cond_0
    const/4 v0, 0x0

    .line 2943
    .local v0, "ret":I
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 2944
    .local v1, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 2946
    .local v2, "writer":Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 2947
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2948
    const-string v3, "\n"

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2950
    const-string v3, ""

    const-string v4, "appboot"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2951
    const-string v3, ""

    const-string/jumbo v4, "version"

    sget-object v5, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_VERSION:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2952
    const-string v3, ""

    const-string/jumbo v4, "switch"

    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-eqz v5, :cond_1

    const-string v5, "1"

    goto :goto_0

    :cond_1
    const-string v5, "0"

    :goto_0
    invoke-interface {v1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2953
    const-string v3, "\n"

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2955
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2956
    :try_start_1
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 2957
    .local v4, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# writeXml_appboot # abi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2958
    :cond_2
    if-eqz v4, :cond_4

    .line 2960
    :try_start_2
    const-string v5, ""

    const-string/jumbo v6, "pkg"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2961
    const-string v5, ""

    const-string/jumbo v6, "package"

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2962
    const-string v5, ""

    const-string v6, "flag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2963
    const-string v5, ""

    const-string/jumbo v6, "setted"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getSetted()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2964
    const-string v5, ""

    const-string v6, "boot"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2965
    const-string v5, ""

    const-string v6, "action"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v8

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2966
    const-string v5, ""

    const-string v6, "caller"

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCallerPackageSetString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2967
    const-string v5, ""

    const-string v6, "callee"

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCalleePackageSetString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2968
    const-string v5, ""

    const-string/jumbo v6, "pkg"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2969
    const-string v5, "\n"

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2973
    goto :goto_3

    .line 2970
    :catch_0
    move-exception v5

    .line 2971
    .local v5, "abie":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "OnePlusAppBootManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "writeXml_appboot # Exception # "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 2975
    .end local v4    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .end local v5    # "abie":Ljava/lang/Exception;
    :cond_4
    :goto_3
    goto/16 :goto_1

    .line 2976
    :cond_5
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2977
    :try_start_4
    const-string v3, ""

    const-string v4, "appboot"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2978
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2981
    const-string v3, "/data/system/appboot/appboot.xml"

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusAppBootManager;->WriteStringToFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v3

    .line 2986
    goto :goto_4

    .line 2976
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 2982
    :catch_1
    move-exception v3

    .line 2983
    .local v3, "e":Ljava/lang/Exception;
    const/16 v0, -0xb

    .line 2984
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeXml_appboot # Exception # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2987
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2988
    :cond_6
    return v0
.end method
