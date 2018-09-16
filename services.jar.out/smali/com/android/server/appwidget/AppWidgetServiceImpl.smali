.class Lcom/android/server/appwidget/AppWidgetServiceImpl;
.super Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Lcom/android/server/WidgetBackupProvider;
.implements Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field private static DEBUG:Z = false

.field private static final ID_PROVIDER_CHANGED:I = 0x1

.field private static final ID_VIEWS_UPDATE:I = 0x0

.field private static final KEYGUARD_HOST_ID:I = 0x4b455947

.field private static final LOADED_PROFILE_ID:I = -0x1

.field private static final MIN_UPDATE_PERIOD:I

.field private static final NEW_KEYGUARD_HOST_PACKAGE:Ljava/lang/String; = "com.android.keyguard"

.field private static final OLD_KEYGUARD_HOST_PACKAGE:Ljava/lang/String; = "android"

.field private static final STATE_FILENAME:Ljava/lang/String; = "appwidgets.xml"

.field private static final TAG:Ljava/lang/String; = "AppWidgetServiceImpl"

.field private static final TAG_UNDEFINED:I = -0x1

.field private static final UNKNOWN_UID:I = -0x1

.field private static final UNKNOWN_USER_ID:I = -0xa

.field private static final UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field mAppBoot:Lcom/android/server/am/OnePlusAppBootManager;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field private final mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;",
            ">;"
        }
    .end annotation
.end field

.field private mIconUtilities:Lcom/android/server/policy/IconUtilities;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLoadedUserIds:Landroid/util/SparseIntArray;

.field private mLocale:Ljava/util/Locale;

.field private final mLock:Ljava/lang/Object;

.field private mMaxWidgetBitmapMemory:I

.field private final mNextAppWidgetIds:Landroid/util/SparseIntArray;

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSafeMode:Z

.field private mSaveStateHandler:Landroid/os/Handler;

.field private mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

.field private mUserManager:Landroid/os/UserManager;

.field private final mWidgetPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 2689
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 158
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 166
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x1b7740

    :goto_0
    sput v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->MIN_UPDATE_PERIOD:I

    .line 181
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 265
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;-><init>()V

    .line 183
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 222
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    .line 228
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    .line 231
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    .line 233
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    .line 254
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 262
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppBoot:Lcom/android/server/am/OnePlusAppBootManager;

    .line 266
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 267
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 154
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 154
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onConfigurationChanged()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 154
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "x2"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/widget/RemoteViews;
    .param p5, "x5"    # J

    .line 154
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "x2"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p5, "x5"    # J

    .line 154
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "x2"    # Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "x2"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # J

    .line 154
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 154
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 154
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 154
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 154
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 154
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/admin/DevicePolicyManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 154
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 154
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/widget/RemoteViews;

    .line 154
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/appwidget/AppWidgetServiceImpl;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveStateLocked(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 154
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 154
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 0
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 154
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .locals 0
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    return-void
.end method

.method static synthetic access$3700(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 0
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAndGetAppWidgetIdLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onPackageBroadcastReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Landroid/os/UserHandle;

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateWidgetPackageSuspensionMaskedState(Landroid/content/Intent;ZI)V

    return-void
.end method

.method private addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .locals 8
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 2311
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2312
    return v1

    .line 2315
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2316
    return v1

    .line 2319
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    .local v0, "componentName":Landroid/content/ComponentName;
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 2323
    .local v2, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v2, p1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    .line 2324
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v3, :cond_5

    .line 2328
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v5

    .line 2332
    .local v5, "existing":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v5, :cond_2

    .line 2333
    new-instance v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    move-object v4, v6

    .line 2334
    .local v4, "restoredProviderId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v5

    .line 2337
    .end local v4    # "restoredProviderId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    :cond_2
    if-eqz v5, :cond_3

    .line 2338
    iget-boolean v4, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-nez v4, :cond_4

    .line 2340
    iput-object v2, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 2341
    iput-boolean v1, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 2342
    iget-object v1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v1, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2343
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 2344
    const-string v1, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider placeholder now reified: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2348
    :cond_3
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2350
    :cond_4
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 2353
    .end local v5    # "existing":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_5
    return v1
.end method

.method private bindLoadedWidgetsLocked(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;",
            ">;)V"
        }
    .end annotation

    .line 2844
    .local p1, "loadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2845
    .local v0, "loadedWidgetCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2846
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;

    .line 2847
    .local v2, "loadedWidget":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->widget:Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2849
    .local v3, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->providerTag:I

    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->findProviderByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2850
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v4, :cond_0

    .line 2853
    goto :goto_1

    .line 2856
    :cond_0
    iget v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->hostTag:I

    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->findHostByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2857
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-nez v4, :cond_1

    .line 2859
    goto :goto_1

    .line 2862
    :cond_1
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2863
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2864
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2845
    .end local v2    # "loadedWidget":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    .end local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2866
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "connection"    # Landroid/content/ServiceConnection;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 3629
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3631
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const v3, 0x2000001

    invoke-virtual {v2, p1, p2, v3, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3635
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3636
    nop

    .line 3637
    return-void

    .line 3635
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 3
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1910
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1911
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelBroadcasts() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    :cond_0
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 1914
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1915
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1917
    .local v0, "token":J
    :try_start_0
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1919
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1920
    nop

    .line 1921
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    .end local v0    # "token":J
    goto :goto_0

    .line 1919
    .restart local v0    # "token":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1923
    .end local v0    # "token":J
    :cond_1
    :goto_0
    return-void
.end method

.method private clearProvidersAndHostsTagsLocked()V
    .locals 5

    .line 3101
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3102
    .local v0, "providerCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_0

    .line 3103
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3104
    .local v4, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iput v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 3102
    .end local v4    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3107
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3108
    .local v2, "hostCount":I
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 3109
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3110
    .local v4, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iput v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 3108
    .end local v4    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3112
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1
    .param p0, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 2227
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 2228
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    return-object v0

    .line 2230
    :cond_0
    return-object p0
.end method

.method private static cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 2237
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 2238
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0

    .line 2240
    :cond_0
    return-object p0
.end method

.method private static cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "rv"    # Landroid/widget/RemoteViews;

    .line 2220
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 2221
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    .line 2223
    :cond_0
    return-object p0
.end method

.method private computeMaximumWidgetBitmapMemory()V
    .locals 5

    .line 291
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 292
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 293
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 294
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 297
    iget v3, v2, Landroid/graphics/Point;->x:I

    const/4 v4, 0x6

    mul-int/2addr v4, v3

    iget v3, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    .line 298
    return-void
.end method

.method private createMaskedWidgetBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "providerPackage"    # Ljava/lang/String;
    .param p2, "providerUserId"    # I

    .line 584
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 588
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 589
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 588
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 590
    .local v2, "userContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 591
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 593
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIconUtilities:Lcom/android/server/policy/IconUtilities;

    invoke-virtual {v5}, Lcom/android/server/policy/IconUtilities;->getDisabledColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 594
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIconUtilities:Lcom/android/server/policy/IconUtilities;

    invoke-virtual {v5, v4}, Lcom/android/server/policy/IconUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 594
    return-object v5

    .line 601
    .end local v2    # "userContext":Landroid/content/Context;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 595
    :catch_0
    move-exception v2

    .line 596
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v3, "AppWidgetServiceImpl"

    const-string v4, "Fail to get application icon"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    const/4 v3, 0x0

    .line 601
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    return-object v3

    .line 601
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private createMaskedWidgetRemoteViews(Landroid/graphics/Bitmap;ZLandroid/app/PendingIntent;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "showBadge"    # Z
    .param p3, "onClickIntent"    # Landroid/app/PendingIntent;

    .line 607
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x1090122

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 609
    .local v0, "views":Landroid/widget/RemoteViews;
    if-eqz p1, :cond_0

    .line 610
    const v1, 0x10204c3

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 612
    :cond_0
    if-nez p2, :cond_1

    .line 613
    const v1, 0x10204c4

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 615
    :cond_1
    if-eqz p3, :cond_2

    .line 616
    const v1, 0x10204c5

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 618
    :cond_2
    return-object v0
.end method

.method private decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 4
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1973
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 1974
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1975
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1976
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1977
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1978
    .local v2, "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1981
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1982
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1983
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1986
    .end local v1    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    .end local v2    # "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 1987
    :cond_1
    return-void
.end method

.method private deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1883
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1885
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1886
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1887
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 1889
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1891
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1892
    .local v1, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v1, :cond_0

    .line 1893
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1894
    iget-boolean v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v2, :cond_0

    .line 1896
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendDeletedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1898
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1900
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 1903
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 1907
    :cond_0
    return-void
.end method

.method private deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .locals 3
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1868
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1869
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1870
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1871
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1869
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1873
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1876
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 1877
    return-void
.end method

.method private deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2377
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V

    .line 2378
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2381
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 2382
    return-void
.end method

.method private deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V
    .locals 5
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "userId"    # I

    .line 2358
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2359
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2360
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2361
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2362
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v3

    if-ne p2, v3, :cond_1

    .line 2363
    :cond_0
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2365
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 2367
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2368
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2369
    iput-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2370
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 2371
    iput-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2359
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2374
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1927
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;)V

    .line 1947
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1949
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const v4, 0x2000001

    iget-object v5, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1951
    invoke-virtual {v5}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v5

    .line 1949
    invoke-virtual {v3, p1, v0, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1953
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1954
    nop

    .line 1955
    return-void

    .line 1953
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private static dumpGrant(Landroid/util/Pair;ILjava/io/PrintWriter;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .line 2491
    .local p0, "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v0, "  ["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x5d

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2492
    const-string v0, " user="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2493
    const-string v0, " package="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2494
    return-void
.end method

.method private static dumpHost(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V
    .locals 1
    .param p0, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 2483
    const-string v0, "  ["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] hostId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2484
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2485
    const-string v0, "    callbacks="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2486
    const-string v0, "    widgets.size="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2487
    const-string v0, " zombie="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2488
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 814
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 815
    .local v0, "N":I
    const-string v1, "Providers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 817
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-static {v3, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V

    .line 816
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 820
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 821
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    const-string v2, "Widgets:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    move v2, v1

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 824
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    invoke-static {v3, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/io/PrintWriter;)V

    .line 823
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 827
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 828
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    const-string v2, "Hosts:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    move v2, v1

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 831
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-static {v3, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpHost(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V

    .line 830
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 834
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 835
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    const-string v2, "Grants:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    nop

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_3

    .line 838
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 839
    .local v2, "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {v2, v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpGrant(Landroid/util/Pair;ILjava/io/PrintWriter;)V

    .line 837
    .end local v2    # "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 841
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 777
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump proto for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " widgets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 780
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 781
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 782
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    invoke-direct {p0, v0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpProtoWidget(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 781
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 784
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 785
    return-void
.end method

.method private dumpProtoWidget(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 788
    iget-object v0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 793
    :cond_0
    const-wide v0, 0x20b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 794
    .local v0, "token":J
    const-wide v2, 0x10800000001L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 795
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v4

    iget-object v5, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_1

    .line 794
    move v4, v6

    goto :goto_0

    .line 795
    :cond_1
    nop

    .line 794
    move v4, v7

    :goto_0
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 796
    const-wide v2, 0x10800000002L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v6, v7

    :goto_1
    invoke-virtual {p1, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 797
    const-wide v2, 0x10900000003L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 798
    const-wide v2, 0x10900000004L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 799
    const-wide v2, 0x10900000005L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 800
    iget-object v2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    .line 801
    const-wide v2, 0x10500000006L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v5, "appWidgetMinWidth"

    .line 802
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 801
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 803
    const-wide v2, 0x10500000007L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v5, "appWidgetMinHeight"

    .line 804
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 803
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 805
    const-wide v2, 0x10500000008L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v5, "appWidgetMaxWidth"

    .line 806
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 805
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 807
    const-wide v2, 0x10500000009L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v5, "appWidgetMaxHeight"

    .line 808
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 807
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 810
    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 811
    return-void

    .line 789
    .end local v0    # "token":J
    :cond_4
    :goto_2
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip dumping widget because host or provider is null: widget.host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " widget.provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-void
.end method

.method private static dumpProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V
    .locals 2
    .param p0, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 2460
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2461
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    const-string v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "] provider "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2462
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2463
    const-string v1, "    min=("

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2464
    const-string/jumbo v1, "x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2465
    const-string v1, ")   minResize=("

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2466
    const-string/jumbo v1, "x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2467
    const-string v1, ") updatePeriodMillis="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2468
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2469
    const-string v1, " resizeMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2470
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2471
    const-string v1, " widgetCategory="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2472
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2473
    const-string v1, " autoAdvanceViewId="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2474
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2475
    const-string v1, " initialLayout=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2476
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2477
    const-string v1, " initialKeyguardLayout=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2478
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2479
    const-string v1, " zombie="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2480
    return-void
.end method

.method private static dumpWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/io/PrintWriter;)V
    .locals 1
    .param p0, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 2497
    const-string v0, "  ["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] id="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2498
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2499
    const-string v0, "    host="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2500
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2501
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_0

    .line 2502
    const-string v0, "    provider="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2504
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz v0, :cond_1

    .line 2505
    const-string v0, "    host.callbacks="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2507
    :cond_1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    .line 2508
    const-string v0, "    views="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2510
    :cond_2
    return-void
.end method

.method private ensureGroupStateLoadedLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 710
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 711
    return-void
.end method

.method private ensureGroupStateLoadedLocked(IZ)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "enforceUserUnlockingOrUnlocked"    # Z

    .line 714
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isUserRunningAndUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 715
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must be unlocked for widgets to be available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 719
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must have unlocked parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v0

    .line 727
    .local v0, "profileIds":[I
    const/4 v1, 0x0

    .line 728
    .local v1, "newMemberCount":I
    array-length v2, v0

    .line 729
    .local v2, "profileIdCount":I
    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .local v1, "i":I
    .local v4, "newMemberCount":I
    :goto_2
    const/4 v5, -0x1

    if-ge v1, v2, :cond_5

    .line 730
    aget v6, v0, v1

    .line 731
    .local v6, "profileId":I
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_4

    .line 732
    aput v5, v0, v1

    goto :goto_3

    .line 734
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 729
    .end local v6    # "profileId":I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 738
    .end local v1    # "i":I
    :cond_5
    if-gtz v4, :cond_6

    .line 739
    return-void

    .line 742
    :cond_6
    const/4 v1, 0x0

    .line 743
    .local v1, "newMemberIndex":I
    new-array v6, v4, [I

    .line 744
    .local v6, "newProfileIds":[I
    nop

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_8

    .line 745
    aget v7, v0, v3

    .line 746
    .local v7, "profileId":I
    if-eq v7, v5, :cond_7

    .line 747
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 748
    aput v7, v6, v1

    .line 749
    add-int/lit8 v1, v1, 0x1

    .line 744
    .end local v7    # "profileId":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 753
    .end local v3    # "i":I
    :cond_8
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->clearProvidersAndHostsTagsLocked()V

    .line 755
    invoke-direct {p0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->loadGroupWidgetProvidersLocked([I)V

    .line 756
    invoke-direct {p0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->loadGroupStateLocked([I)V

    .line 757
    return-void
.end method

.method private findHostByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .locals 5
    .param p1, "tag"    # I

    .line 2883
    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 2884
    return-object v0

    .line 2886
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2887
    .local v1, "hostCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2888
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2889
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    if-ne v4, p1, :cond_1

    .line 2890
    return-object v3

    .line 2887
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2893
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private findProviderByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .locals 5
    .param p1, "tag"    # I

    .line 2869
    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 2870
    return-object v0

    .line 2872
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2873
    .local v1, "providerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2874
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2875
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    if-ne v4, p1, :cond_1

    .line 2876
    return-object v3

    .line 2873
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2879
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private getCanonicalPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3599
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3602
    .local v0, "identity":J
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4, v2, p3}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3604
    nop

    .line 3613
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3604
    return-object p1

    .line 3613
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 3605
    :catch_0
    move-exception v3

    .line 3606
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v2

    .line 3607
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3608
    .local v4, "packageNames":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    .line 3609
    aget-object v2, v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3613
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3609
    return-object v2

    .line 3613
    .end local v3    # "re":Landroid/os/RemoteException;
    .end local v4    # "packageNames":[Ljava/lang/String;
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3614
    nop

    .line 3615
    const/4 v2, 0x0

    return-object v2

    .line 3613
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 2719
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2720
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2722
    invoke-direct {p0, v0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2724
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2725
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v2

    .line 2728
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getSavedStateFile(I)Landroid/util/AtomicFile;
    .locals 4
    .param p0, "userId"    # I

    .line 3383
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 3384
    .local v0, "dir":Ljava/io/File;
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getStateFile(I)Ljava/io/File;

    move-result-object v1

    .line 3385
    .local v1, "settingsFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p0, :cond_1

    .line 3386
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3387
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3390
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/appwidgets.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3393
    .local v2, "oldFile":Ljava/io/File;
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3395
    .end local v2    # "oldFile":Ljava/io/File;
    :cond_1
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v2
.end method

.method private static getStateFile(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .line 3379
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "appwidgets.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUidForPackage(Ljava/lang/String;I)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2700
    const/4 v0, 0x0

    .line 2702
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2704
    .local v1, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_0

    .line 2708
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2705
    :catch_0
    move-exception v3

    .line 2708
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2709
    nop

    .line 2711
    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_0

    goto :goto_1

    .line 2715
    :cond_0
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    return v3

    .line 2712
    :cond_1
    :goto_1
    const/4 v3, -0x1

    return v3
.end method

.method private static getWidgetIds(Ljava/util/ArrayList;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;)[I"
        }
    .end annotation

    .line 2451
    .local p0, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2452
    .local v0, "instancesSize":I
    new-array v1, v0, [I

    .line 2453
    .local v1, "appWidgetIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2454
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    iget v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    aput v3, v1, v2

    .line 2453
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2456
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V
    .locals 8
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "viewId"    # I
    .param p5, "requestId"    # J

    .line 2050
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->viewDataChanged(II)V

    .line 2051
    iput-wide p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2056
    goto :goto_0

    .line 2052
    :catch_0
    move-exception v0

    .line 2055
    .local v0, "re":Landroid/os/RemoteException;
    const/4 p2, 0x0

    .line 2060
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2061
    if-nez p2, :cond_1

    .line 2062
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2064
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2065
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2066
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2067
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;

    invoke-direct {v4, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    .line 2086
    .local v4, "connection":Landroid/content/ServiceConnection;
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2087
    .local v5, "userId":I
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/Intent$FilterComparison;

    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 2090
    .local v6, "intent":Landroid/content/Intent;
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v6, v4, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    .line 2092
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    .end local v4    # "connection":Landroid/content/ServiceConnection;
    .end local v5    # "userId":I
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_1

    .line 2094
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    monitor-exit v0

    .line 2095
    return-void

    .line 2094
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V
    .locals 5
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p5, "requestId"    # J

    .line 2159
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 2160
    iput-wide p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2166
    goto :goto_0

    .line 2161
    :catch_0
    move-exception v0

    .line 2162
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2163
    :try_start_1
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget host dead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2164
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2165
    monitor-exit v1

    .line 2167
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2165
    .restart local v0    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private handleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V
    .locals 5
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2206
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/appwidget/IAppWidgetHost;->providersChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2212
    goto :goto_0

    .line 2207
    :catch_0
    move-exception v0

    .line 2208
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2209
    :try_start_1
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget host dead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2210
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2211
    monitor-exit v1

    .line 2213
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2211
    .restart local v0    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private handleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V
    .locals 5
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "views"    # Landroid/widget/RemoteViews;
    .param p5, "requestId"    # J

    .line 2122
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 2123
    iput-wide p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2129
    goto :goto_0

    .line 2124
    :catch_0
    move-exception v0

    .line 2125
    .local v0, "re":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2126
    :try_start_1
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget host dead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2127
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2128
    monitor-exit v1

    .line 2130
    .end local v0    # "re":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 2128
    .restart local v0    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private incrementAndGetAppWidgetIdLocked(I)I
    .locals 2
    .param p1, "userId"    # I

    .line 1834
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->peekNextAppWidgetIdLocked(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1835
    .local v0, "appWidgetId":I
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1836
    return v0
.end method

.method private incrementAppWidgetServiceRefCount(ILandroid/util/Pair;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;)V"
        }
    .end annotation

    .line 1961
    .local p2, "serviceId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1962
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .local v0, "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_0

    .line 1964
    .end local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1965
    .restart local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1968
    return-void
.end method

.method private static isLocalBinder()Z
    .locals 2

    .line 2216
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isProfileWithLockedParent(I)Z
    .locals 5
    .param p1, "userId"    # I

    .line 3691
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3693
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 3694
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3695
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 3696
    .local v3, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_0

    .line 3697
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isUserRunningAndUnlocked(I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 3698
    const/4 v4, 0x1

    .line 3702
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3698
    return v4

    .line 3702
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "parentInfo":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3703
    nop

    .line 3704
    const/4 v2, 0x0

    return v2

    .line 3702
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isProfileWithUnlockedParent(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 3708
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3709
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3710
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3711
    .local v1, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 3712
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3713
    const/4 v2, 0x1

    return v2

    .line 3716
    .end local v1    # "parentInfo":Landroid/content/pm/UserInfo;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isUserRunningAndUnlocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 760
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0
.end method

.method private loadGroupStateLocked([I)V
    .locals 11
    .param p1, "profileIds"    # [I

    .line 2808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2810
    .local v0, "loadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    const/4 v1, 0x0

    .line 2812
    .local v1, "version":I
    array-length v2, p1

    .line 2813
    .local v2, "profileIdCount":I
    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .local v1, "i":I
    .local v4, "version":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 2814
    aget v5, p1, v1

    .line 2817
    .local v5, "profileId":I
    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getSavedStateFile(I)Landroid/util/AtomicFile;

    move-result-object v6

    .line 2818
    .local v6, "file":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v7, "stream":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 2819
    :try_start_1
    invoke-direct {p0, v7, v5, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->readProfileStateFromFileLocked(Ljava/io/FileInputStream;ILjava/util/List;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v9

    .line 2820
    if-eqz v7, :cond_0

    :try_start_2
    invoke-static {v8, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2822
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :cond_0
    goto :goto_2

    .line 2820
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v9

    goto :goto_1

    .line 2818
    :catch_0
    move-exception v8

    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2820
    :goto_1
    if-eqz v7, :cond_1

    :try_start_4
    invoke-static {v8, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v7    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    .line 2821
    .local v7, "e":Ljava/io/IOException;
    const-string v8, "AppWidgetServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to read state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    .end local v5    # "profileId":I
    .end local v6    # "file":Landroid/util/AtomicFile;
    .end local v7    # "e":Ljava/io/IOException;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2825
    .end local v1    # "i":I
    :cond_2
    if-ltz v4, :cond_3

    .line 2827
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->bindLoadedWidgetsLocked(Ljava/util/List;)V

    .line 2830
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->performUpgradeLocked(I)V

    goto :goto_4

    .line 2833
    :cond_3
    const-string v1, "AppWidgetServiceImpl"

    const-string v5, "Failed to read state, clearing widgets and hosts."

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->clearWidgetsLocked()V

    .line 2835
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2836
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2837
    .local v1, "N":I
    nop

    .local v3, "i":I
    :goto_3
    if-ge v3, v1, :cond_4

    .line 2838
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2837
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2841
    .end local v1    # "N":I
    .end local v3    # "i":I
    :cond_4
    :goto_4
    return-void
.end method

.method private loadGroupWidgetProvidersLocked([I)V
    .locals 8
    .param p1, "profileIds"    # [I

    .line 2287
    const/4 v0, 0x0

    .line 2288
    .local v0, "allReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2290
    .local v1, "intent":Landroid/content/Intent;
    array-length v2, p1

    .line 2291
    .local v2, "profileCount":I
    const/4 v3, 0x0

    move-object v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "allReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    if-ge v0, v2, :cond_2

    .line 2292
    aget v5, p1, v0

    .line 2294
    .local v5, "profileId":I
    invoke-direct {p0, v1, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 2295
    .local v6, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2296
    if-nez v4, :cond_0

    .line 2297
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 2299
    :cond_0
    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2291
    .end local v5    # "profileId":I
    .end local v6    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2303
    .end local v0    # "i":I
    :cond_2
    if-nez v4, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 2304
    .local v0, "N":I
    :goto_1
    nop

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_4

    .line 2305
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2306
    .local v5, "receiver":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 2304
    .end local v5    # "receiver":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2308
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method private lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .locals 4
    .param p1, "hostId"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 2267
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2268
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2269
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2270
    .local v2, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2271
    return-object v2

    .line 2268
    .end local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2274
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .locals 3
    .param p1, "id"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 1855
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v0

    .line 1856
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_0

    .line 1857
    return-object v0

    .line 1860
    :cond_0
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    move-object v0, v1

    .line 1861
    iput-object p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 1862
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1864
    return-object v0
.end method

.method private lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .locals 4
    .param p1, "id"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 2256
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2257
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2258
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2259
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2260
    return-object v2

    .line 2257
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2263
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2244
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2245
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2246
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2247
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 2248
    invoke-virtual {v3, v2, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->canAccessAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2249
    return-object v2

    .line 2245
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2252
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 17
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "targetWidget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 626
    move-object/from16 v3, p2

    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 627
    .local v4, "widgetCount":I
    if-nez v4, :cond_0

    .line 628
    return-void

    .line 630
    :cond_0
    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 631
    .local v5, "providerPackage":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v6

    .line 632
    .local v6, "providerUserId":I
    invoke-direct {v1, v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->createMaskedWidgetBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 633
    .local v7, "iconBitmap":Landroid/graphics/Bitmap;
    if-nez v7, :cond_1

    .line 634
    return-void

    .line 638
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 640
    .local v8, "identity":J
    :try_start_0
    iget-boolean v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    if-eqz v0, :cond_3

    .line 641
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 642
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v10

    .line 643
    .local v10, "showBadge":Z
    iget-object v11, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v11, v5, v6}, Landroid/content/pm/PackageManagerInternal;->getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 645
    .local v11, "suspendingPackage":Ljava/lang/String;
    const-string v12, "android"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 646
    iget-object v12, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    const/4 v13, 0x1

    invoke-virtual {v12, v6, v13}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v12

    .local v12, "onClickIntent":Landroid/content/Intent;
    goto :goto_0

    .line 649
    .end local v12    # "onClickIntent":Landroid/content/Intent;
    :cond_2
    iget-object v12, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v12, v5, v6}, Landroid/content/pm/PackageManagerInternal;->getSuspendedDialogMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 651
    .local v12, "dialogMessage":Ljava/lang/String;
    invoke-static {v5, v11, v12, v6}, Lcom/android/internal/app/SuspendedAppActivity;->createSuspendedAppInterceptIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v11    # "suspendingPackage":Ljava/lang/String;
    .end local v12    # "dialogMessage":Ljava/lang/String;
    move-object v12, v13

    .local v12, "onClickIntent":Landroid/content/Intent;
    :goto_0
    move-object v0, v12

    .line 654
    .end local v12    # "onClickIntent":Landroid/content/Intent;
    .local v0, "onClickIntent":Landroid/content/Intent;
    goto :goto_1

    .end local v0    # "onClickIntent":Landroid/content/Intent;
    .end local v10    # "showBadge":Z
    :cond_3
    iget-boolean v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    if-eqz v0, :cond_4

    .line 655
    const/4 v10, 0x1

    .line 656
    .restart local v10    # "showBadge":Z
    invoke-static {v6}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object v0

    .restart local v0    # "onClickIntent":Landroid/content/Intent;
    goto :goto_1

    .line 659
    .end local v0    # "onClickIntent":Landroid/content/Intent;
    .end local v10    # "showBadge":Z
    :cond_4
    const/4 v10, 0x1

    .line 660
    .restart local v10    # "showBadge":Z
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v11, v6}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    .line 662
    .restart local v0    # "onClickIntent":Landroid/content/Intent;
    if-eqz v0, :cond_5

    .line 663
    const/high16 v11, 0x10800000

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 667
    :cond_5
    :goto_1
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    if-ge v11, v4, :cond_9

    .line 668
    iget-object v12, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 669
    .local v12, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v3, :cond_6

    if-eq v3, v12, :cond_6

    .end local v12    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    goto :goto_3

    .line 670
    .restart local v12    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_6
    const/4 v13, 0x0

    .line 671
    .local v13, "intent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_7

    .line 672
    iget-object v14, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget v15, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    const/high16 v2, 0x8000000

    invoke-static {v14, v15, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object v13, v2

    .line 675
    :cond_7
    invoke-direct {v1, v7, v10, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->createMaskedWidgetRemoteViews(Landroid/graphics/Bitmap;ZLandroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 676
    .local v2, "views":Landroid/widget/RemoteViews;
    invoke-static {v12, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->access$900(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 677
    invoke-virtual {v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v14

    invoke-direct {v1, v12, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    .end local v2    # "views":Landroid/widget/RemoteViews;
    .end local v12    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v13    # "intent":Landroid/app/PendingIntent;
    :cond_8
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p1

    goto :goto_2

    .line 681
    .end local v11    # "j":I
    :cond_9
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 682
    nop

    .line 681
    move v2, v10

    .line 683
    .end local v10    # "showBadge":Z
    .local v2, "showBadge":Z
    return-void

    .line 681
    .end local v0    # "onClickIntent":Landroid/content/Intent;
    .end local v2    # "showBadge":Z
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private onConfigurationChanged()V
    .locals 12

    .line 350
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 351
    const-string v0, "AppWidgetServiceImpl"

    const-string/jumbo v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 355
    .local v0, "revised":Ljava/util/Locale;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 356
    :cond_1
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    .line 358
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    const/4 v2, 0x0

    .line 364
    .local v2, "changedGroups":Landroid/util/SparseIntArray;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 365
    .local v3, "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 367
    .local v4, "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 368
    .local v5, "N":I
    add-int/lit8 v6, v5, -0x1

    .line 368
    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_5

    .line 369
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 371
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v8

    .line 372
    .local v8, "userId":I
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9, v8}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 373
    invoke-direct {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 374
    goto :goto_1

    .line 376
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 378
    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 379
    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 380
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 381
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v10

    .line 379
    invoke-direct {p0, v9, v10, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v9

    .line 383
    .local v9, "changed":Z
    if-eqz v9, :cond_4

    .line 384
    if-nez v2, :cond_3

    .line 385
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    move-object v2, v10

    .line 387
    :cond_3
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 388
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v11

    .line 387
    invoke-virtual {v10, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    move-result v10

    .line 389
    .local v10, "groupId":I
    invoke-virtual {v2, v10, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 368
    .end local v7    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v8    # "userId":I
    .end local v9    # "changed":Z
    .end local v10    # "groupId":I
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 394
    .end local v6    # "i":I
    :cond_5
    if-eqz v2, :cond_6

    .line 395
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    .line 396
    .local v6, "groupCount":I
    const/4 v7, 0x0

    .line 396
    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_6

    .line 397
    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 398
    .local v8, "groupId":I
    invoke-direct {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 396
    .end local v8    # "groupId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 401
    .end local v2    # "changedGroups":Landroid/util/SparseIntArray;
    .end local v3    # "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v4    # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    .end local v5    # "N":I
    .end local v6    # "groupCount":I
    .end local v7    # "i":I
    :cond_6
    monitor-exit v1

    .line 403
    :cond_7
    return-void

    .line 401
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private onPackageBroadcastReceived(Landroid/content/Intent;I)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 406
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 408
    .local v1, "added":Z
    const/4 v2, 0x0

    .line 409
    .local v2, "changed":Z
    const/4 v3, 0x0

    .line 412
    .local v3, "componentsModified":Z
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x53ae571d

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_3

    const v5, -0x4fc097e4

    if-eq v4, v5, :cond_2

    const v5, -0x3bb3e592

    if-eq v4, v5, :cond_1

    const v5, 0x4cef8b35    # 1.25589928E8f

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v6

    goto :goto_1

    :cond_1
    const-string v4, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v7

    goto :goto_1

    :cond_2
    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    goto :goto_1

    :cond_3
    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v4, -0x1

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 425
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 426
    .local v4, "uri":Landroid/net/Uri;
    if-nez v4, :cond_5

    .line 427
    return-void

    .line 419
    .end local v4    # "uri":Landroid/net/Uri;
    :pswitch_0
    const/4 v1, 0x1

    .line 422
    :pswitch_1
    const-string v4, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, "pkgList":[Ljava/lang/String;
    goto :goto_2

    .line 415
    .end local v4    # "pkgList":[Ljava/lang/String;
    :pswitch_2
    const-string v4, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 416
    .restart local v4    # "pkgList":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 417
    goto :goto_2

    .line 429
    .local v4, "uri":Landroid/net/Uri;
    :cond_5
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 430
    .local v5, "pkgName":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 431
    return-void

    .line 433
    :cond_6
    new-array v8, v6, [Ljava/lang/String;

    aput-object v5, v8, v7

    .line 434
    .local v8, "pkgList":[Ljava/lang/String;
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 435
    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 438
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "pkgName":Ljava/lang/String;
    move-object v4, v8

    .end local v8    # "pkgList":[Ljava/lang/String;
    .local v4, "pkgList":[Ljava/lang/String;
    :goto_2
    if-eqz v4, :cond_14

    array-length v5, v4

    if-nez v5, :cond_7

    goto/16 :goto_9

    .line 442
    :cond_7
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 443
    :try_start_0
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 444
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_8

    .line 447
    :cond_8
    invoke-direct {p0, p2, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 449
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 451
    .local v8, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_c

    if-eqz v2, :cond_9

    goto :goto_5

    .line 472
    :cond_9
    if-eqz v8, :cond_b

    const-string v9, "android.intent.extra.REPLACING"

    .line 473
    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_3

    :cond_a
    move v6, v7

    nop

    .line 475
    .local v6, "packageRemovedPermanently":Z
    :cond_b
    :goto_3
    if-eqz v6, :cond_11

    .line 476
    array-length v9, v4

    :goto_4
    if-ge v7, v9, :cond_11

    aget-object v10, v4, v7

    .line 477
    .local v10, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v10, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeHostsAndProvidersForPackageLocked(Ljava/lang/String;I)Z

    move-result v11

    or-int/2addr v3, v11

    .line 476
    .end local v10    # "pkgName":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 452
    .end local v6    # "packageRemovedPermanently":Z
    :cond_c
    :goto_5
    if-eqz v1, :cond_e

    if-eqz v8, :cond_d

    const-string v9, "android.intent.extra.REPLACING"

    .line 453
    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_e

    :cond_d
    goto :goto_6

    :cond_e
    move v6, v7

    .line 455
    .local v6, "newPackageAdded":Z
    :goto_6
    array-length v9, v4

    :goto_7
    if-ge v7, v9, :cond_10

    aget-object v10, v4, v7

    .line 457
    .restart local v10    # "pkgName":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-direct {p0, v10, p2, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v11

    or-int/2addr v3, v11

    .line 462
    if-eqz v6, :cond_f

    if-nez p2, :cond_f

    .line 463
    invoke-direct {p0, v10, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v11

    .line 464
    .local v11, "uid":I
    if-ltz v11, :cond_f

    .line 465
    invoke-direct {p0, v10, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->resolveHostUidLocked(Ljava/lang/String;I)V

    .line 455
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "uid":I
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 469
    .end local v6    # "newPackageAdded":Z
    :cond_10
    nop

    .line 483
    :cond_11
    if-eqz v3, :cond_12

    .line 484
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 487
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 489
    .end local v8    # "extras":Landroid/os/Bundle;
    :cond_12
    monitor-exit v5

    .line 490
    return-void

    .line 445
    :cond_13
    :goto_8
    monitor-exit v5

    return-void

    .line 489
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 439
    :cond_14
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onWidgetRemovedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 7
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3012
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v0, :cond_0

    return-void

    .line 3014
    :cond_0
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    .line 3015
    .local v0, "userId":I
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3016
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 3017
    .local v2, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 3018
    return-void

    .line 3022
    :cond_1
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3023
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 3024
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3025
    .local v5, "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v6, :cond_2

    .end local v5    # "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    goto :goto_1

    .line 3026
    .restart local v5    # "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_2
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v6

    if-ne v6, v0, :cond_3

    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 3027
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3028
    return-void

    .line 3023
    .end local v5    # "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3031
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3032
    return-void
.end method

.method private onWidgetsClearedLocked()V
    .locals 1

    .line 3044
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3045
    return-void
.end method

.method private parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 18
    .param p1, "providerId"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "metadataKey"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 2602
    move-object/from16 v4, p3

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 2603
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v0

    .line 2602
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    nop

    .line 2604
    if-nez v6, :cond_1

    .line 2605
    :try_start_1
    const-string v0, "AppWidgetServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " meta-data for AppWidget provider \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2607
    nop

    .line 2689
    if-eqz v6, :cond_0

    :try_start_2
    invoke-static {v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2607
    :cond_0
    return-object v5

    .line 2689
    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 2602
    :catch_0
    move-exception v0

    move-object v5, v0

    goto/16 :goto_6

    .line 2610
    :cond_1
    :try_start_3
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .local v0, "attrs":Landroid/util/AttributeSet;
    :goto_0
    move-object v7, v0

    .line 2613
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .local v7, "attrs":Landroid/util/AttributeSet;
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v8, v0

    .local v8, "type":I
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v0, v10, :cond_2

    if-eq v8, v9, :cond_2

    .line 2610
    .end local v8    # "type":I
    move-object v0, v7

    goto :goto_0

    .line 2618
    .restart local v8    # "type":I
    :cond_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 2619
    .local v11, "nodeName":Ljava/lang/String;
    const-string v0, "appwidget-provider"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v0, :cond_4

    .line 2620
    :try_start_4
    const-string v0, "AppWidgetServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Meta-data does not start with appwidget-provider tag for AppWidget provider "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2623
    nop

    .line 2689
    if-eqz v6, :cond_3

    :try_start_5
    invoke-static {v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2623
    :cond_3
    return-object v5

    .line 2626
    :cond_4
    :try_start_6
    new-instance v0, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    move-object v12, v0

    .line 2627
    .local v12, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    iput-object v0, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2628
    iput-object v3, v12, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 2631
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2633
    .local v13, "identity":J
    :try_start_7
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2634
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget v15, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 2635
    .local v15, "userId":I
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v9, v15}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 2637
    .local v5, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "userId":I
    move-object/from16 v0, v16

    .line 2639
    .local v0, "resources":Landroid/content/res/Resources;
    :try_start_8
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2640
    nop

    .line 2639
    nop

    .line 2642
    sget-object v5, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    invoke-virtual {v0, v7, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 2648
    .local v5, "sa":Landroid/content/res/TypedArray;
    nop

    .line 2649
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 2650
    .local v15, "value":Landroid/util/TypedValue;
    if-eqz v15, :cond_5

    iget v9, v15, Landroid/util/TypedValue;->data:I

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_1
    iput v9, v12, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 2651
    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 2652
    .end local v15    # "value":Landroid/util/TypedValue;
    .local v9, "value":Landroid/util/TypedValue;
    if-eqz v9, :cond_6

    iget v15, v9, Landroid/util/TypedValue;->data:I

    goto :goto_2

    :cond_6
    const/4 v15, 0x0

    :goto_2
    iput v15, v12, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 2653
    const/16 v15, 0x8

    invoke-virtual {v5, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    move-object v9, v15

    .line 2655
    if-eqz v9, :cond_7

    iget v15, v9, Landroid/util/TypedValue;->data:I

    goto :goto_3

    :cond_7
    iget v15, v12, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    :goto_3
    iput v15, v12, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 2656
    const/16 v15, 0x9

    invoke-virtual {v5, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    move-object v9, v15

    .line 2658
    if-eqz v9, :cond_8

    iget v15, v9, Landroid/util/TypedValue;->data:I

    goto :goto_4

    :cond_8
    iget v15, v12, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    :goto_4
    iput v15, v12, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 2659
    const/4 v10, 0x2

    const/4 v15, 0x0

    invoke-virtual {v5, v10, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v12, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 2661
    const/4 v10, 0x3

    invoke-virtual {v5, v10, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v12, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 2663
    const/16 v10, 0xa

    invoke-virtual {v5, v10, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v12, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 2666
    const/4 v10, 0x4

    .line 2667
    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2668
    .local v10, "className":Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 2669
    new-instance v15, Landroid/content/ComponentName;

    move-object/from16 v17, v0

    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .end local v0    # "resources":Landroid/content/res/Resources;
    .local v17, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v15, v12, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    goto :goto_5

    .line 2672
    .end local v17    # "resources":Landroid/content/res/Resources;
    .restart local v0    # "resources":Landroid/content/res/Resources;
    :cond_9
    move-object/from16 v17, v0

    .end local v0    # "resources":Landroid/content/res/Resources;
    .restart local v17    # "resources":Landroid/content/res/Resources;
    :goto_5
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 2673
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    iput v0, v12, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 2674
    const/4 v0, 0x5

    const/4 v15, 0x0

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v12, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 2676
    const/4 v0, 0x6

    const/4 v15, -0x1

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v12, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 2678
    const/4 v0, 0x7

    const/4 v15, 0x0

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v12, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 2681
    const/16 v0, 0xb

    const/4 v15, 0x1

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v12, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 2684
    const/16 v0, 0xc

    const/4 v15, 0x0

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v12, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    .line 2687
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2688
    nop

    .line 2689
    if-eqz v6, :cond_a

    const/4 v15, 0x0

    :try_start_9
    invoke-static {v15, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1

    .line 2688
    :cond_a
    return-object v12

    .line 2639
    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .end local v9    # "value":Landroid/util/TypedValue;
    .end local v10    # "className":Ljava/lang/String;
    .end local v17    # "resources":Landroid/content/res/Resources;
    :catchall_1
    move-exception v0

    :try_start_a
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2689
    .end local v7    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "type":I
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v12    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v13    # "identity":J
    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    goto :goto_7

    .line 2602
    :goto_6
    :try_start_b
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2689
    :goto_7
    if-eqz v6, :cond_b

    :try_start_c
    invoke-static {v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_b
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1

    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v0

    .line 2693
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "AppWidgetServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XML parsing failed for AppWidget provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2695
    const/4 v5, 0x0

    return-object v5
.end method

.method private parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .locals 3
    .param p1, "providerId"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "oldProvider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2582
    const/4 v0, 0x0

    .line 2583
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz p3, :cond_0

    iget-object v1, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2584
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 2586
    :cond_0
    if-nez v0, :cond_1

    .line 2587
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-string v2, "android.appwidget.provider"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 2590
    :cond_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2591
    return-object v1

    .line 2594
    :cond_2
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-direct {v2, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    move-object v1, v2

    .line 2595
    .local v1, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iput-object p1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 2596
    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2597
    return-object v1
.end method

.method private peekNextAppWidgetIdLocked(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 1847
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 1848
    const/4 v0, 0x1

    return v0

    .line 1850
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method private performUpgradeLocked(I)V
    .locals 8
    .param p1, "fromVersion"    # I

    .line 3349
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 3350
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading widget database from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    :cond_0
    move v1, p1

    .line 3357
    .local v1, "version":I
    if-nez v1, :cond_2

    .line 3358
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const-string v4, "android"

    const v5, 0x4b455947    # 1.2933447E7f

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 3361
    .local v2, "oldHostId":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v3

    .line 3362
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v3, :cond_1

    .line 3363
    const-string v4, "com.android.keyguard"

    const/4 v6, 0x0

    invoke-direct {p0, v4, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v4

    .line 3365
    .local v4, "uid":I
    if-ltz v4, :cond_1

    .line 3366
    new-instance v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    const-string v7, "com.android.keyguard"

    invoke-direct {v6, v4, v5, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    iput-object v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 3370
    .end local v4    # "uid":I
    :cond_1
    const/4 v1, 0x1

    .line 3373
    .end local v2    # "oldHostId":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_2
    if-ne v1, v0, :cond_3

    .line 3376
    return-void

    .line 3374
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to upgrade widget database"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .locals 3
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2278
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v0, :cond_1

    .line 2279
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2280
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pruning host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2284
    :cond_1
    return-void
.end method

.method private queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 2732
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2734
    .local v0, "identity":J
    const/16 v2, 0x80

    .line 2738
    .local v2, "flags":I
    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    .line 2743
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithUnlockedParent(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2744
    const/high16 v3, 0xc0000

    or-int/2addr v2, v3

    .line 2750
    :cond_0
    or-int/lit16 v2, v2, 0x400

    .line 2752
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 2753
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 2752
    invoke-interface {v3, p1, v4, v2, p2}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 2754
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2758
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2752
    return-object v3

    .line 2758
    .end local v2    # "flags":I
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 2755
    :catch_0
    move-exception v2

    .line 2756
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2758
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2756
    return-object v3

    .line 2758
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private readProfileStateFromFileLocked(Ljava/io/FileInputStream;ILjava/util/List;)I
    .locals 27
    .param p1, "stream"    # Ljava/io/FileInputStream;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;",
            ">;)I"
        }
    .end annotation

    .line 3179
    .local p3, "outLoadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 3179
    const/4 v3, -0x1

    move v4, v3

    .line 3181
    .local v4, "version":I
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v5, v0

    .line 3182
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v6, p1

    :try_start_1
    invoke-interface {v5, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    .line 3184
    const/4 v0, -0x1

    .line 3185
    .local v0, "legacyProviderIndex":I
    move v7, v4

    move v4, v0

    move v0, v3

    .line 3185
    .local v0, "legacyHostIndex":I
    .local v4, "legacyProviderIndex":I
    .local v7, "version":I
    :goto_0
    move v8, v0

    .line 3188
    .end local v0    # "legacyHostIndex":I
    .local v8, "legacyHostIndex":I
    :try_start_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v9, v0

    .line 3189
    .local v9, "type":I
    const/4 v0, 0x2

    if-ne v9, v0, :cond_c

    .line 3190
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 3191
    .local v11, "tag":Ljava/lang/String;
    const-string v0, "gs"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    .line 3192
    const-string/jumbo v0, "version"

    invoke-interface {v5, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v12, v0

    .line 3194
    .local v12, "attributeValue":Ljava/lang/String;
    :try_start_3
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3197
    .end local v7    # "version":I
    .local v0, "version":I
    goto :goto_1

    .line 3195
    .end local v0    # "version":I
    .restart local v7    # "version":I
    :catch_0
    move-exception v0

    move-object v13, v0

    .line 3196
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 3198
    .end local v7    # "version":I
    .end local v12    # "attributeValue":Ljava/lang/String;
    .local v0, "version":I
    :goto_1
    nop

    .line 3335
    move-object/from16 v1, p3

    move v7, v0

    goto/16 :goto_d

    .line 3198
    .end local v0    # "version":I
    .restart local v7    # "version":I
    :cond_0
    :try_start_4
    const-string/jumbo v0, "p"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3199
    add-int/lit8 v4, v4, 0x1

    .line 3202
    const-string/jumbo v0, "pkg"

    invoke-interface {v5, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3203
    .local v0, "pkg":Ljava/lang/String;
    const-string v14, "cl"

    invoke-interface {v5, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3205
    .local v14, "cl":Ljava/lang/String;
    invoke-direct {v1, v0, v14, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getCanonicalPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    .line 3206
    if-nez v0, :cond_1

    .line 3207
    nop

    .line 3335
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v14    # "cl":Ljava/lang/String;
    :goto_2
    move/from16 v21, v4

    goto/16 :goto_5

    .line 3210
    .restart local v0    # "pkg":Ljava/lang/String;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v14    # "cl":Ljava/lang/String;
    :cond_1
    invoke-direct {v1, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v15

    .line 3211
    .local v15, "uid":I
    if-gez v15, :cond_2

    .line 3212
    goto :goto_2

    .line 3215
    :cond_2
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v0, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3217
    .local v3, "componentName":Landroid/content/ComponentName;
    invoke-direct {v1, v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v16

    move-object/from16 v17, v16

    .line 3218
    .local v17, "providerInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v13, v17

    if-nez v13, :cond_3

    .line 3219
    .end local v17    # "providerInfo":Landroid/content/pm/ActivityInfo;
    .local v13, "providerInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_2

    .line 3222
    :cond_3
    new-instance v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-direct {v10, v15, v3, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3223
    .local v10, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {v1, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v16

    .line 3225
    .local v16, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v16, :cond_4

    iget-boolean v12, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-eqz v12, :cond_4

    .line 3227
    new-instance v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-object/from16 v18, v0

    const/4 v0, 0x0

    invoke-direct {v12, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3227
    .end local v0    # "pkg":Ljava/lang/String;
    .local v18, "pkg":Ljava/lang/String;
    move-object v0, v12

    .line 3228
    .end local v16    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .local v0, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    new-instance v12, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v12}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    iput-object v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3229
    iget-object v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v19, v3

    iget-object v3, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 3229
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .local v19, "componentName":Landroid/content/ComponentName;
    iput-object v3, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 3230
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v13, v3, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 3231
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 3232
    iput-object v10, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 3233
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3236
    .end local v18    # "pkg":Ljava/lang/String;
    .end local v19    # "componentName":Landroid/content/ComponentName;
    .local v0, "pkg":Ljava/lang/String;
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v16    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_4
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    .line 3236
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v18    # "pkg":Ljava/lang/String;
    .restart local v19    # "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, v16

    .line 3236
    .end local v16    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .local v0, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :goto_3
    const-string/jumbo v3, "tag"

    const/4 v12, 0x0

    invoke-interface {v5, v12, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3237
    .local v3, "tagAttribute":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 3238
    const/16 v12, 0x10

    invoke-static {v3, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    goto :goto_4

    :cond_5
    move v12, v4

    .line 3239
    .local v12, "providerTag":I
    :goto_4
    iput v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 3241
    move-object/from16 v20, v3

    const-string/jumbo v3, "info_tag"

    .line 3241
    .end local v3    # "tagAttribute":Ljava/lang/String;
    .local v20, "tagAttribute":Ljava/lang/String;
    move/from16 v21, v4

    const/4 v4, 0x0

    invoke-interface {v5, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3241
    .end local v4    # "legacyProviderIndex":I
    .local v21, "legacyProviderIndex":I
    iput-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 3242
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-nez v3, :cond_6

    .line 3243
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-direct {v1, v10, v13, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    .line 3245
    .local v3, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v3, :cond_6

    .line 3246
    iput-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3249
    .end local v0    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v3    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v10    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v12    # "providerTag":I
    .end local v13    # "providerInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "cl":Ljava/lang/String;
    .end local v15    # "uid":I
    .end local v18    # "pkg":Ljava/lang/String;
    .end local v19    # "componentName":Landroid/content/ComponentName;
    .end local v20    # "tagAttribute":Ljava/lang/String;
    :cond_6
    nop

    .line 3335
    .end local v11    # "tag":Ljava/lang/String;
    .end local v21    # "legacyProviderIndex":I
    .restart local v4    # "legacyProviderIndex":I
    :goto_5
    move-object/from16 v1, p3

    move v0, v8

    move/from16 v4, v21

    .line 3335
    .end local v4    # "legacyProviderIndex":I
    .restart local v21    # "legacyProviderIndex":I
    goto/16 :goto_e

    .line 3249
    .end local v21    # "legacyProviderIndex":I
    .restart local v4    # "legacyProviderIndex":I
    .restart local v11    # "tag":Ljava/lang/String;
    :cond_7
    const-string v0, "h"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3250
    add-int/lit8 v8, v8, 0x1

    .line 3251
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3254
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    const-string/jumbo v10, "pkg"

    invoke-interface {v5, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 3256
    .local v3, "pkg":Ljava/lang/String;
    invoke-direct {v1, v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v10

    .line 3257
    .local v10, "uid":I
    if-gez v10, :cond_8

    .line 3258
    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    .line 3261
    :cond_8
    iget-boolean v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz v12, :cond_9

    iget-boolean v12, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-eqz v12, :cond_b

    .line 3264
    :cond_9
    const-string/jumbo v12, "id"

    const/4 v13, 0x0

    invoke-interface {v5, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0x10

    invoke-static {v12, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 3267
    .local v12, "hostId":I
    const-string/jumbo v14, "tag"

    invoke-interface {v5, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3268
    .local v13, "tagAttribute":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 3269
    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    goto :goto_6

    :cond_a
    move v14, v8

    .line 3271
    .local v14, "hostTag":I
    :goto_6
    iput v14, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 3272
    new-instance v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-direct {v15, v10, v12, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    iput-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 3273
    iget-object v15, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3275
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v10    # "uid":I
    .end local v12    # "hostId":I
    .end local v13    # "tagAttribute":Ljava/lang/String;
    .end local v14    # "hostTag":I
    :cond_b
    nop

    .line 3335
    .end local v8    # "legacyHostIndex":I
    .end local v11    # "tag":Ljava/lang/String;
    .local v0, "legacyHostIndex":I
    :cond_c
    :goto_7
    move-object/from16 v1, p3

    goto/16 :goto_d

    .line 3275
    .end local v0    # "legacyHostIndex":I
    .restart local v8    # "legacyHostIndex":I
    .restart local v11    # "tag":Ljava/lang/String;
    :cond_d
    const-string v0, "b"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3276
    const-string/jumbo v0, "packageName"

    const/4 v3, 0x0

    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3277
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {v1, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v3

    .line 3278
    .local v3, "uid":I
    if-ltz v3, :cond_e

    .line 3279
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 3280
    .local v10, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v12, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v12, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3282
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v3    # "uid":I
    .end local v10    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_e
    goto :goto_7

    :cond_f
    const-string v0, "g"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3283
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3284
    .local v0, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const-string/jumbo v10, "id"

    invoke-interface {v5, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v3, 0x10

    invoke-static {v10, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 3286
    iget v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    const/4 v10, 0x1

    add-int/2addr v3, v10

    invoke-direct {v1, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->setMinAppWidgetIdLocked(II)V

    .line 3289
    const-string/jumbo v3, "rid"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3290
    .local v3, "restoredIdString":Ljava/lang/String;
    if-nez v3, :cond_10

    const/4 v10, 0x0

    goto :goto_8

    .line 3291
    :cond_10
    const/16 v10, 0x10

    invoke-static {v3, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    move v10, v12

    :goto_8
    iput v10, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    .line 3293
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3294
    .local v10, "options":Landroid/os/Bundle;
    const-string/jumbo v12, "min_width"

    const/4 v13, 0x0

    invoke-interface {v5, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3295
    .local v12, "minWidthString":Ljava/lang/String;
    if-eqz v12, :cond_11

    .line 3296
    const-string v13, "appWidgetMinWidth"

    .line 3297
    const/16 v14, 0x10

    invoke-static {v12, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 3296
    invoke-virtual {v10, v13, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3299
    :cond_11
    const-string/jumbo v13, "min_height"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3300
    .local v13, "minHeightString":Ljava/lang/String;
    if-eqz v13, :cond_12

    .line 3301
    const-string v14, "appWidgetMinHeight"

    .line 3302
    const/16 v15, 0x10

    invoke-static {v13, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 3301
    invoke-virtual {v10, v14, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3304
    :cond_12
    const-string/jumbo v2, "max_width"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3305
    .local v2, "maxWidthString":Ljava/lang/String;
    if-eqz v2, :cond_13

    .line 3306
    const-string v14, "appWidgetMaxWidth"

    .line 3307
    move-object/from16 v22, v3

    const/16 v15, 0x10

    invoke-static {v2, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 3306
    .end local v3    # "restoredIdString":Ljava/lang/String;
    .local v22, "restoredIdString":Ljava/lang/String;
    invoke-virtual {v10, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9

    .line 3309
    .end local v22    # "restoredIdString":Ljava/lang/String;
    .restart local v3    # "restoredIdString":Ljava/lang/String;
    :cond_13
    move-object/from16 v22, v3

    .line 3309
    .end local v3    # "restoredIdString":Ljava/lang/String;
    .restart local v22    # "restoredIdString":Ljava/lang/String;
    :goto_9
    const-string/jumbo v3, "max_height"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3310
    .local v3, "maxHeightString":Ljava/lang/String;
    if-eqz v3, :cond_14

    .line 3311
    const-string v14, "appWidgetMaxHeight"

    .line 3312
    move-object/from16 v23, v2

    const/16 v15, 0x10

    invoke-static {v3, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 3311
    .end local v2    # "maxWidthString":Ljava/lang/String;
    .local v23, "maxWidthString":Ljava/lang/String;
    invoke-virtual {v10, v14, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    .line 3314
    .end local v23    # "maxWidthString":Ljava/lang/String;
    .restart local v2    # "maxWidthString":Ljava/lang/String;
    :cond_14
    move-object/from16 v23, v2

    .line 3314
    .end local v2    # "maxWidthString":Ljava/lang/String;
    .restart local v23    # "maxWidthString":Ljava/lang/String;
    :goto_a
    const-string/jumbo v2, "host_category"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3315
    .local v2, "categoryString":Ljava/lang/String;
    if-eqz v2, :cond_15

    .line 3316
    const-string v14, "appWidgetCategory"

    .line 3317
    move-object/from16 v24, v3

    const/16 v15, 0x10

    invoke-static {v2, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 3316
    .end local v3    # "maxHeightString":Ljava/lang/String;
    .local v24, "maxHeightString":Ljava/lang/String;
    invoke-virtual {v10, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_b

    .line 3319
    .end local v24    # "maxHeightString":Ljava/lang/String;
    .restart local v3    # "maxHeightString":Ljava/lang/String;
    :cond_15
    move-object/from16 v24, v3

    .line 3319
    .end local v3    # "maxHeightString":Ljava/lang/String;
    .restart local v24    # "maxHeightString":Ljava/lang/String;
    :goto_b
    iput-object v10, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 3321
    const-string v3, "h"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v15, 0x10

    invoke-static {v3, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 3323
    .local v3, "hostTag":I
    const-string/jumbo v15, "p"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3324
    .local v15, "providerString":Ljava/lang/String;
    if-eqz v15, :cond_16

    const-string/jumbo v14, "p"

    .line 3325
    move-object/from16 v25, v2

    const/4 v2, 0x0

    invoke-interface {v5, v2, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3324
    .end local v2    # "categoryString":Ljava/lang/String;
    .local v25, "categoryString":Ljava/lang/String;
    const/16 v14, 0x10

    invoke-static {v2, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_c

    .line 3325
    .end local v25    # "categoryString":Ljava/lang/String;
    .restart local v2    # "categoryString":Ljava/lang/String;
    :cond_16
    move-object/from16 v25, v2

    .line 3325
    .end local v2    # "categoryString":Ljava/lang/String;
    .restart local v25    # "categoryString":Ljava/lang/String;
    const/4 v2, -0x1

    .line 3330
    .local v2, "providerTag":I
    :goto_c
    new-instance v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;

    invoke-direct {v14, v1, v0, v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;II)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3332
    .local v14, "loadedWidgets":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    move-object/from16 v1, p3

    :try_start_5
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 3332
    .end local v0    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v2    # "providerTag":I
    .end local v3    # "hostTag":I
    .end local v10    # "options":Landroid/os/Bundle;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "minWidthString":Ljava/lang/String;
    .end local v13    # "minHeightString":Ljava/lang/String;
    .end local v14    # "loadedWidgets":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    .end local v15    # "providerString":Ljava/lang/String;
    .end local v22    # "restoredIdString":Ljava/lang/String;
    .end local v23    # "maxWidthString":Ljava/lang/String;
    .end local v24    # "maxHeightString":Ljava/lang/String;
    .end local v25    # "categoryString":Ljava/lang/String;
    goto :goto_d

    .line 3336
    .end local v4    # "legacyProviderIndex":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "legacyHostIndex":I
    .end local v9    # "type":I
    :catch_1
    move-exception v0

    goto :goto_10

    .line 3335
    .local v0, "legacyHostIndex":I
    .restart local v4    # "legacyProviderIndex":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "type":I
    :goto_d
    move v0, v8

    :goto_e
    const/4 v2, 0x1

    if-ne v9, v2, :cond_17

    .line 3343
    .end local v0    # "legacyHostIndex":I
    .end local v4    # "legacyProviderIndex":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    nop

    .line 3345
    return v7

    .line 3185
    .restart local v0    # "legacyHostIndex":I
    .restart local v4    # "legacyProviderIndex":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_17
    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v3, -0x1

    goto/16 :goto_0

    .line 3336
    .end local v0    # "legacyHostIndex":I
    .end local v4    # "legacyProviderIndex":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v0

    move-object/from16 v1, p3

    goto :goto_10

    .line 3336
    .end local v7    # "version":I
    .local v4, "version":I
    :catch_3
    move-exception v0

    goto :goto_f

    :catch_4
    move-exception v0

    move-object/from16 v6, p1

    .line 3336
    .end local v4    # "version":I
    .restart local v7    # "version":I
    :goto_f
    move-object/from16 v1, p3

    move v7, v4

    .line 3341
    .local v0, "e":Ljava/lang/Exception;
    :goto_10
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    const/4 v2, -0x1

    return v2
.end method

.method private registerBroadcastReceiver()V
    .locals 11

    .line 303
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    .local v0, "configFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 310
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 311
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 319
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 320
    .local v2, "sdFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 325
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 326
    .local v3, "offModeFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v4, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 331
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 332
    .local v4, "suspendPackageFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v5, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    move-object v8, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 336
    return-void
.end method

.method private registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    .locals 19
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "appWidgetIds"    # [I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2419
    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    if-lez v0, :cond_2

    .line 2423
    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 2424
    .local v4, "alreadyRegistered":Z
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 2425
    .local v5, "intent":Landroid/content/Intent;
    const-string v0, "appWidgetIds"

    move-object/from16 v6, p2

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2426
    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2427
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 2429
    .local v7, "token":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/high16 v9, 0x8000000

    iget-object v10, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2430
    invoke-virtual {v10}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v10

    .line 2429
    invoke-static {v0, v3, v5, v9, v10}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2432
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2433
    nop

    .line 2434
    if-nez v4, :cond_3

    .line 2435
    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    int-to-long v9, v0

    .line 2436
    .local v9, "period":J
    sget v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->MIN_UPDATE_PERIOD:I

    int-to-long v11, v0

    cmp-long v0, v9, v11

    if-gez v0, :cond_1

    .line 2437
    sget v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->MIN_UPDATE_PERIOD:I

    int-to-long v9, v0

    .line 2439
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    move-wide v13, v11

    .line 2441
    .local v13, "oldId":J
    :try_start_1
    iget-object v11, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v12, 0x2

    .line 2442
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    add-long/2addr v15, v9

    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2441
    move-wide v1, v13

    move-wide v13, v15

    .end local v13    # "oldId":J
    .local v1, "oldId":J
    move-wide v15, v9

    move-object/from16 v17, v0

    :try_start_2
    invoke-virtual/range {v11 .. v17}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2444
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2445
    goto :goto_2

    .line 2444
    :catchall_0
    move-exception v0

    goto :goto_1

    .end local v1    # "oldId":J
    .restart local v13    # "oldId":J
    :catchall_1
    move-exception v0

    move-wide v1, v13

    .end local v13    # "oldId":J
    .restart local v1    # "oldId":J
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2432
    .end local v1    # "oldId":J
    .end local v9    # "period":J
    :catchall_2
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2448
    .end local v4    # "alreadyRegistered":Z
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "token":J
    :cond_2
    move-object/from16 v6, p2

    :cond_3
    :goto_2
    return-void
.end method

.method private registerOnCrossProfileProvidersChangedListener()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V

    .line 343
    :cond_0
    return-void
.end method

.method private reloadWidgetsMaskedState(I)V
    .locals 14
    .param p1, "userId"    # I

    .line 511
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 513
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 515
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 516
    .local v3, "lockedProfile":Z
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v4

    .line 517
    .local v4, "quietProfile":Z
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 518
    .local v5, "N":I
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_3

    .line 519
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 520
    .local v8, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v9

    .line 521
    .local v9, "providerUserId":I
    if-eq v9, p1, :cond_0

    .line 522
    goto :goto_4

    .line 525
    :cond_0
    invoke-virtual {v8, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedByLockedProfileLocked(Z)Z

    move-result v10

    .line 526
    .local v10, "changed":Z
    invoke-virtual {v8, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedByQuietProfileLocked(Z)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v10, v11

    .line 530
    :try_start_1
    iget-object v11, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v12, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 531
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v13

    .line 530
    invoke-interface {v11, v12, v13}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    .local v11, "suspended":Z
    goto :goto_1

    .line 537
    .end local v11    # "suspended":Z
    :catch_0
    move-exception v11

    goto :goto_2

    .line 532
    :catch_1
    move-exception v11

    .line 534
    .local v11, "ex":Ljava/lang/IllegalArgumentException;
    nop

    .end local v11    # "ex":Ljava/lang/IllegalArgumentException;
    move v11, v6

    .line 536
    .local v11, "suspended":Z
    :goto_1
    :try_start_2
    invoke-virtual {v8, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedBySuspendedPackageLocked(Z)Z

    move-result v12
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    or-int/2addr v10, v12

    .line 539
    .end local v11    # "suspended":Z
    goto :goto_3

    .line 537
    :goto_2
    nop

    .line 538
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v12, "AppWidgetServiceImpl"

    const-string v13, "Failed to query application info"

    invoke-static {v12, v13, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    .end local v11    # "e":Landroid/os/RemoteException;
    :goto_3
    if-eqz v10, :cond_2

    .line 541
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 542
    const/4 v11, 0x0

    invoke-direct {p0, v8, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_4

    .line 544
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 518
    .end local v8    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v9    # "providerUserId":I
    .end local v10    # "changed":Z
    :cond_2
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 549
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "lockedProfile":Z
    .end local v4    # "quietProfile":Z
    .end local v5    # "N":I
    .end local v7    # "i":I
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 550
    nop

    .line 551
    return-void

    .line 549
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private removeHostsAndProvidersForPackageLocked(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3580
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeProvidersForPackageLocked(Ljava/lang/String;I)Z

    move-result v0

    .line 3585
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3586
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 3587
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3588
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3589
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 3590
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 3591
    const/4 v0, 0x1

    .line 3586
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3595
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method private removeProvidersForPackageLocked(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3565
    const/4 v0, 0x0

    .line 3567
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3568
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 3569
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3570
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3571
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 3572
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3573
    const/4 v0, 0x1

    .line 3568
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3576
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method private removeWidgetsForPackageLocked(Ljava/lang/String;II)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "parentUserId"    # I

    .line 3553
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3554
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3555
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3556
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3557
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_0

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 3558
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 3559
    invoke-direct {p0, v2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V

    .line 3554
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3562
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private resolveHostUidLocked(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 696
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 697
    .local v0, "N":I
    const/4 v1, 0x0

    .line 697
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 698
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 699
    .local v2, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 700
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 701
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " resolved to uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    iget-object v5, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-direct {v3, p2, v4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    iput-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 704
    return-void

    .line 697
    .end local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 707
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private saveGroupStateAsync(I)V
    .locals 2
    .param p1, "groupId"    # I

    .line 1990
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1991
    return-void
.end method

.method private saveStateLocked(I)V
    .locals 9
    .param p1, "userId"    # I

    .line 3062
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->tagProvidersAndHosts()V

    .line 3064
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v0

    .line 3066
    .local v0, "profileIds":[I
    array-length v1, v0

    .line 3067
    .local v1, "profileCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3068
    aget v3, v0, v2

    .line 3070
    .local v3, "profileId":I
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getSavedStateFile(I)Landroid/util/AtomicFile;

    move-result-object v4

    .line 3073
    .local v4, "file":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 3074
    .local v5, "stream":Ljava/io/FileOutputStream;
    invoke-direct {p0, v5, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->writeProfileStateToFileLocked(Ljava/io/FileOutputStream;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3075
    invoke-virtual {v4, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1

    .line 3077
    :cond_0
    invoke-virtual {v4, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3078
    const-string v6, "AppWidgetServiceImpl"

    const-string v7, "Failed to save state, restoring backup."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3082
    :goto_1
    goto :goto_2

    .line 3080
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    .line 3081
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "AppWidgetServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed open state file for write: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    .end local v3    # "profileId":I
    .end local v4    # "file":Landroid/util/AtomicFile;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3084
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private scheduleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)V
    .locals 5
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "viewId"    # I

    .line 2019
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 2024
    :cond_0
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 2025
    .local v0, "requestId":J
    if-eqz p1, :cond_1

    .line 2026
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p2, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2028
    :cond_1
    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 2034
    :cond_2
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 2035
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2036
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2037
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2038
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2039
    iput p2, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 2041
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2043
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2044
    return-void

    .line 2031
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_3
    :goto_0
    return-void

    .line 2022
    .end local v0    # "requestId":J
    :cond_4
    :goto_1
    return-void
.end method

.method private scheduleNotifyGroupHostsForProvidersChangedLocked(I)V
    .locals 9
    .param p1, "userId"    # I

    .line 2170
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v0

    .line 2172
    .local v0, "profileIds":[I
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2173
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 2174
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2176
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    const/4 v4, 0x0

    .line 2177
    .local v4, "hostInGroup":Z
    array-length v5, v0

    .line 2178
    .local v5, "M":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_1

    .line 2179
    aget v7, v0, v6

    .line 2180
    .local v7, "profileId":I
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v8

    if-ne v8, v7, :cond_0

    .line 2181
    const/4 v4, 0x1

    .line 2182
    goto :goto_2

    .line 2178
    .end local v7    # "profileId":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2186
    .end local v6    # "j":I
    :cond_1
    :goto_2
    if-nez v4, :cond_2

    .line 2187
    goto :goto_3

    .line 2190
    :cond_2
    if-eqz v3, :cond_4

    iget-boolean v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v6, :cond_4

    iget-object v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v6, :cond_3

    .line 2191
    goto :goto_3

    .line 2194
    :cond_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v6

    .line 2195
    .local v6, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v3, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2196
    iget-object v7, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v7, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2198
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2200
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 2173
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v4    # "hostInGroup":Z
    .end local v5    # "M":I
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2202
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method private scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 5
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2133
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 2134
    .local v0, "requestId":J
    if-eqz p1, :cond_0

    .line 2136
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->clear()V

    .line 2137
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->append(IJ)V

    .line 2139
    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2144
    :cond_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 2145
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2146
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2147
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2148
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2149
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2151
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2153
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2154
    return-void

    .line 2141
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_2
    :goto_0
    return-void
.end method

.method private scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "updateViews"    # Landroid/widget/RemoteViews;

    .line 2098
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 2099
    .local v0, "requestId":J
    if-eqz p1, :cond_0

    .line 2100
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2102
    :cond_0
    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 2107
    :cond_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 2108
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2109
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2110
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2111
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2112
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2114
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2116
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2117
    return-void

    .line 2104
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_3
    :goto_1
    return-void
.end method

.method private sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 3619
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3621
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3623
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3624
    nop

    .line 3625
    return-void

    .line 3623
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendDeletedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2398
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2399
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2400
    const-string v1, "appWidgetId"

    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2401
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2402
    return-void
.end method

.method private sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2405
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2406
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2407
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2408
    return-void
.end method

.method private sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 2
    .param p1, "p"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2385
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2386
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2387
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2388
    return-void
.end method

.method private sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "appWidgetIds"    # [I

    .line 2391
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2392
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2393
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2394
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2395
    return-void
.end method

.method private static serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 8
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2532
    const-string v0, "g"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2533
    const-string/jumbo v0, "id"

    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2534
    const-string/jumbo v0, "rid"

    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2535
    const-string v0, "h"

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2536
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_0

    .line 2537
    const-string/jumbo v0, "p"

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2539
    :cond_0
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    .line 2540
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v2, "appWidgetMinWidth"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2541
    .local v0, "minWidth":I
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v3, "appWidgetMinHeight"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2542
    .local v2, "minHeight":I
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v4, "appWidgetMaxWidth"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2543
    .local v3, "maxWidth":I
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v5, "appWidgetMaxHeight"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2544
    .local v4, "maxHeight":I
    const-string/jumbo v5, "min_width"

    const/4 v6, 0x0

    if-lez v0, :cond_1

    move v7, v0

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v1, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2545
    const-string/jumbo v5, "min_height"

    if-lez v2, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v1, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2546
    const-string/jumbo v5, "max_width"

    if-lez v3, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v6

    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v1, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2547
    const-string/jumbo v5, "max_height"

    if-lez v4, :cond_4

    move v6, v4

    nop

    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2548
    const-string/jumbo v5, "host_category"

    iget-object v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v7, "appWidgetCategory"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2551
    .end local v0    # "minWidth":I
    .end local v2    # "minHeight":I
    .end local v3    # "maxWidth":I
    .end local v4    # "maxHeight":I
    :cond_5
    const-string v0, "g"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2552
    return-void
.end method

.method private static serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .locals 3
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2524
    const-string v0, "h"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2525
    const-string/jumbo v0, "pkg"

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2526
    const-string/jumbo v0, "id"

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2527
    const-string/jumbo v0, "tag"

    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2528
    const-string v0, "h"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2529
    return-void
.end method

.method private static serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 3
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "p"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2513
    const-string/jumbo v0, "p"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2514
    const-string/jumbo v0, "pkg"

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2515
    const-string v0, "cl"

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2516
    const-string/jumbo v0, "tag"

    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2517
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2518
    const-string/jumbo v0, "info_tag"

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2520
    :cond_0
    const-string/jumbo v0, "p"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2521
    return-void
.end method

.method private setMinAppWidgetIdLocked(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "minWidgetId"    # I

    .line 1840
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->peekNextAppWidgetIdLocked(I)I

    move-result v0

    .line 1841
    .local v0, "nextAppWidgetId":I
    if-ge v0, p2, :cond_0

    .line 1842
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1844
    :cond_0
    return-void
.end method

.method private tagProvidersAndHosts()V
    .locals 4

    .line 3087
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3088
    .local v0, "providerCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3089
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3090
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iput v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 3088
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3093
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3094
    .local v2, "hostCount":I
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 3095
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3096
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iput v1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 3094
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3098
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private unbindService(Landroid/content/ServiceConnection;)V
    .locals 3
    .param p1, "connection"    # Landroid/content/ServiceConnection;

    .line 3640
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3642
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3644
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3645
    nop

    .line 3646
    return-void

    .line 3644
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 4
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 686
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 687
    .local v0, "widgetCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 688
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 689
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->access$1000(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 690
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V

    .line 687
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 693
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private updateAppBootPackages()V
    .locals 8

    .line 2982
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 2983
    .local v0, "debug":Z
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2984
    .local v1, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2985
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 2986
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2987
    .local v4, "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v5, :cond_0

    .end local v4    # "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    goto :goto_1

    .line 2988
    .restart local v4    # "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_0
    if-eqz v0, :cond_1

    const-string v5, "AppWidgetServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "haha_widget # updateAppBootPackages # "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    :cond_1
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2985
    .end local v4    # "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2992
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppBoot:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-virtual {v3, v1}, Lcom/android/server/am/OnePlusAppBootManager;->updateWidgetPackages(Ljava/util/HashSet;)V

    .line 2993
    return-void
.end method

.method private updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "views"    # Landroid/widget/RemoteViews;
    .param p4, "partially"    # Z

    .line 1806
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1808
    .local v0, "userId":I
    if-eqz p2, :cond_3

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_1

    .line 1813
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1814
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1815
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1817
    array-length v2, p2

    .line 1818
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1819
    aget v4, p2, v3

    .line 1823
    .local v4, "appWidgetId":I
    nop

    .line 1824
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1823
    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v5

    .line 1826
    .local v5, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v5, :cond_1

    .line 1827
    invoke-direct {p0, v5, p3, p4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 1818
    .end local v4    # "appWidgetId":I
    .end local v5    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1830
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_2
    monitor-exit v1

    .line 1831
    return-void

    .line 1830
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1809
    :cond_3
    :goto_1
    return-void
.end method

.method private updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V
    .locals 4
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "isPartialUpdate"    # Z

    .line 1995
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v0, :cond_3

    .line 1998
    if-eqz p3, :cond_0

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p2}, Landroid/widget/RemoteViews;->mergeRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 2003
    :cond_0
    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 2006
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 2008
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v0

    move v1, v0

    .local v1, "memoryUsage":I
    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    if-gt v0, v2, :cond_1

    .end local v1    # "memoryUsage":I
    goto :goto_1

    .line 2009
    .restart local v1    # "memoryUsage":I
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 2010
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteViews for widget update exceeds maximum bitmap memory usage (used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2014
    .end local v1    # "memoryUsage":I
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V

    .line 2016
    :cond_3
    return-void
.end method

.method private updateOHPDPackages()V
    .locals 5

    .line 2999
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3000
    .local v0, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3001
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3002
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3003
    .local v3, "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v4, :cond_0

    .end local v3    # "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    goto :goto_1

    .line 3004
    .restart local v3    # "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_0
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3001
    .end local v3    # "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3007
    .end local v2    # "i":I
    :cond_1
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->getInstance()Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateWidgetPackages(Ljava/util/HashSet;)V

    .line 3008
    return-void
.end method

.method private updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;",
            ">;)Z"
        }
    .end annotation

    .local p3, "removedProviders":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 3475
    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 3477
    .local v4, "providersUpdated":Z
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 3478
    .local v5, "keep":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3479
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3480
    invoke-direct {v0, v6, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 3483
    .local v7, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v7, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 3484
    .local v9, "N":I
    :goto_0
    move v10, v4

    const/4 v4, 0x0

    .local v4, "i":I
    .local v10, "providersUpdated":Z
    :goto_1
    if-ge v4, v9, :cond_7

    .line 3485
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 3486
    .local v11, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3488
    .local v12, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v14, 0x40000

    and-int/2addr v13, v14

    if-eqz v13, :cond_1

    .line 3489
    nop

    .line 3484
    move-object/from16 v16, v6

    goto :goto_2

    .line 3492
    :cond_1
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 3493
    new-instance v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v14, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v15, Landroid/content/ComponentName;

    iget-object v8, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v6

    iget-object v6, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .end local v6    # "intent":Landroid/content/Intent;
    .local v16, "intent":Landroid/content/Intent;
    invoke-direct {v15, v8, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {v13, v14, v15, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    move-object v8, v13

    .line 3496
    .local v8, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {v0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v13

    .line 3497
    .local v13, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v13, :cond_3

    .line 3498
    invoke-direct {v0, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3499
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3500
    const/4 v6, 0x1

    .line 3484
    .end local v10    # "providersUpdated":Z
    .local v6, "providersUpdated":Z
    move v10, v6

    .end local v6    # "providersUpdated":Z
    .end local v7    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v9    # "N":I
    .end local v11    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v12    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v13    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v10    # "providersUpdated":Z
    .local v19, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v21, "N":I
    :cond_2
    :goto_2
    move-object/from16 v19, v7

    move/from16 v21, v9

    goto :goto_5

    .line 3503
    .end local v19    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21    # "N":I
    .restart local v7    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local v9    # "N":I
    .restart local v11    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_3
    invoke-direct {v0, v8, v11, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v14

    .line 3504
    .local v14, "parsed":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v14, :cond_5

    .line 3505
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3507
    iget-object v15, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v15, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3509
    iget-object v15, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3510
    .local v15, "M":I
    if-lez v15, :cond_5

    .line 3511
    iget-object v6, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v6

    .line 3515
    .local v6, "appWidgetIds":[I
    invoke-direct {v0, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3516
    invoke-direct {v0, v13, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 3519
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_3
    move/from16 v18, v17

    .end local v17    # "j":I
    .local v18, "j":I
    move-object/from16 v19, v7

    move/from16 v7, v18

    if-ge v7, v15, :cond_4

    .line 3520
    .end local v18    # "j":I
    .local v7, "j":I
    .restart local v19    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v20, v8

    iget-object v8, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .end local v8    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .local v20, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3521
    .local v8, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    move/from16 v21, v9

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 3522
    .end local v9    # "N":I
    .restart local v21    # "N":I
    invoke-direct {v0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 3519
    .end local v8    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    add-int/lit8 v17, v7, 0x1

    .end local v7    # "j":I
    .restart local v17    # "j":I
    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move/from16 v9, v21

    goto :goto_3

    .line 3525
    .end local v17    # "j":I
    .end local v20    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v21    # "N":I
    .local v8, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local v9    # "N":I
    :cond_4
    move-object/from16 v20, v8

    move/from16 v21, v9

    .end local v8    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v9    # "N":I
    .restart local v20    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local v21    # "N":I
    invoke-direct {v0, v13, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .end local v6    # "appWidgetIds":[I
    .end local v15    # "M":I
    goto :goto_4

    .line 3528
    .end local v19    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v20    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v21    # "N":I
    .local v7, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local v9    # "N":I
    :cond_5
    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    .end local v7    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v9    # "N":I
    .restart local v19    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v20    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local v21    # "N":I
    :goto_4
    const/4 v6, 0x1

    .line 3484
    .end local v10    # "providersUpdated":Z
    .end local v11    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v12    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v13    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v14    # "parsed":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v20    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .local v6, "providersUpdated":Z
    move v10, v6

    goto :goto_5

    .end local v16    # "intent":Landroid/content/Intent;
    .end local v19    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21    # "N":I
    .local v6, "intent":Landroid/content/Intent;
    .restart local v7    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "N":I
    .restart local v10    # "providersUpdated":Z
    :cond_6
    move-object/from16 v16, v6

    move-object/from16 v19, v7

    move/from16 v21, v9

    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "N":I
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v19    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v21    # "N":I
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v6, v16

    move-object/from16 v7, v19

    move/from16 v9, v21

    goto/16 :goto_1

    .line 3534
    .end local v4    # "i":I
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v19    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21    # "N":I
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v7    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "N":I
    :cond_7
    move-object/from16 v16, v6

    move-object/from16 v19, v7

    move/from16 v21, v9

    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "N":I
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v19    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v21    # "N":I
    iget-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3535
    .end local v21    # "N":I
    .local v4, "N":I
    add-int/lit8 v6, v4, -0x1

    .local v6, "i":I
    :goto_6
    if-ltz v6, :cond_a

    .line 3536
    iget-object v7, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3537
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3538
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v8

    if-ne v8, v2, :cond_9

    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 3539
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 3540
    if-eqz v3, :cond_8

    .line 3541
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3543
    :cond_8
    invoke-direct {v0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3544
    const/4 v7, 0x1

    .line 3535
    .end local v10    # "providersUpdated":Z
    .local v7, "providersUpdated":Z
    move v10, v7

    .end local v7    # "providersUpdated":Z
    .restart local v10    # "providersUpdated":Z
    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 3548
    .end local v6    # "i":I
    :cond_a
    return v10
.end method

.method private updateWidgetPackageSuspensionMaskedState(Landroid/content/Intent;ZI)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "suspended"    # Z
    .param p3, "profileId"    # I

    .line 558
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "packagesArray":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 560
    return-void

    .line 562
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 563
    .local v1, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 564
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 565
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 566
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 567
    .local v5, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v6

    .line 568
    .local v6, "providerUserId":I
    if-ne v6, p3, :cond_3

    iget-object v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 569
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 570
    goto :goto_1

    .line 572
    :cond_1
    invoke-virtual {v5, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedBySuspendedPackageLocked(Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 573
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 574
    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_1

    .line 576
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 565
    .end local v5    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v6    # "providerUserId":I
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 580
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_4
    monitor-exit v2

    .line 581
    return-void

    .line 580
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private writeProfileStateToFileLocked(Ljava/io/FileOutputStream;I)Z
    .locals 9
    .param p1, "stream"    # Ljava/io/FileOutputStream;
    .param p2, "userId"    # I

    .line 3118
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3119
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3120
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3121
    const-string v3, "gs"

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3122
    const-string/jumbo v3, "version"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3124
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3125
    .local v3, "N":I
    move v5, v0

    .line 3125
    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 3126
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3128
    .local v6, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v7

    if-eq v7, p2, :cond_0

    .line 3129
    goto :goto_1

    .line 3131
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->shouldBePersisted()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3132
    invoke-static {v1, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3125
    .end local v6    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3136
    .end local v5    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 3137
    move v5, v0

    .line 3137
    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v3, :cond_4

    .line 3138
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3140
    .local v6, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v7

    if-eq v7, p2, :cond_3

    .line 3141
    goto :goto_3

    .line 3143
    :cond_3
    invoke-static {v1, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 3137
    .end local v6    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3146
    .end local v5    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 3147
    move v5, v0

    .line 3147
    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v3, :cond_6

    .line 3148
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3150
    .local v6, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v7

    if-eq v7, p2, :cond_5

    .line 3151
    goto :goto_5

    .line 3153
    :cond_5
    invoke-static {v1, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 3147
    .end local v6    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3156
    .end local v5    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 3157
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3158
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 3160
    .local v6, "binding":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, p2, :cond_7

    .line 3161
    goto :goto_6

    .line 3163
    :cond_7
    const-string v7, "b"

    invoke-interface {v1, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3164
    const-string/jumbo v7, "packageName"

    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-interface {v1, v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3165
    const-string v7, "b"

    invoke-interface {v1, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3166
    .end local v6    # "binding":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_6

    .line 3168
    :cond_8
    const-string v6, "gs"

    invoke-interface {v1, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3169
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3170
    return v2

    .line 3171
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "N":I
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v1

    .line 3172
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    return v0
.end method


# virtual methods
.method addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 4
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2900
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2904
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addWidgetLocked # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2906
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2907
    .local v0, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v0, :cond_0

    .line 2908
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppBoot:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/OnePlusAppBootManager;->updateWidgetPackage(Ljava/lang/String;Z)V

    .line 2915
    .end local v0    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_0
    new-array v0, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x5c

    aput v3, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2918
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2919
    .restart local v0    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v0, :cond_1

    .line 2920
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->getInstance()Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateWidgetPackage(Ljava/lang/String;Z)V

    .line 2926
    .end local v0    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2927
    return-void
.end method

.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    .line 937
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 939
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 940
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allocateAppWidgetId() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 946
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 948
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isInstantAppLocked(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 949
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instant package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cannot host app widgets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const/4 v2, 0x0

    monitor-exit v1

    return v2

    .line 953
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 955
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_2

    .line 956
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 959
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAndGetAppWidgetIdLocked(I)I

    move-result v2

    .line 963
    .local v2, "appWidgetId":I
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v3, v4, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 964
    .local v3, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v4

    .line 966
    .local v4, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    new-instance v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 967
    .local v5, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iput v2, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 968
    iput-object v4, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 972
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 975
    iget-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    invoke-virtual {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 978
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 980
    sget-boolean v6, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 981
    const-string v6, "AppWidgetServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Allocated widget id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for host "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_3
    monitor-exit v1

    return v2

    .line 986
    .end local v2    # "appWidgetId":I
    .end local v3    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v4    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v5    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 17
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "providerProfileId"    # I
    .param p4, "providerComponent"    # Landroid/content/ComponentName;
    .param p5, "options"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    .line 1130
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 1132
    .local v6, "userId":I
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1133
    const-string v0, "AppWidgetServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bindAppWidgetId() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_0
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1140
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isEnabledGroupProfile(I)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_1

    .line 1141
    return v7

    .line 1146
    :cond_1
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 1147
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1146
    invoke-virtual {v0, v8, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1148
    return v7

    .line 1151
    :cond_2
    iget-object v8, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1152
    :try_start_0
    invoke-direct {v1, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1155
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->hasCallerBindPermissionOrBindWhiteListedLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1157
    monitor-exit v8

    return v7

    .line 1162
    :cond_3
    nop

    .line 1163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1162
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v0

    .line 1165
    .local v0, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v0, :cond_4

    .line 1166
    const-string v9, "AppWidgetServiceImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad widget id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    monitor-exit v8

    return v7

    .line 1170
    :cond_4
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v9, :cond_5

    .line 1171
    const-string v9, "AppWidgetServiceImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Widget id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " already bound to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v11, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    monitor-exit v8

    return v7

    .line 1176
    :cond_5
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v9

    .line 1178
    .local v9, "providerUid":I
    if-gez v9, :cond_6

    .line 1179
    const-string v10, "AppWidgetServiceImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " not installed  for profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    monitor-exit v8

    return v7

    .line 1186
    :cond_6
    new-instance v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/4 v11, 0x0

    invoke-direct {v10, v9, v5, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1187
    .local v10, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {v1, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v11

    .line 1189
    .local v11, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v11, :cond_7

    .line 1190
    const-string v12, "AppWidgetServiceImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No widget provider "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " for profile "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    monitor-exit v8

    return v7

    .line 1195
    :cond_7
    iget-boolean v12, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v12, :cond_8

    .line 1196
    const-string v12, "AppWidgetServiceImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can\'t bind to a 3rd party provider in safe mode "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    monitor-exit v8

    return v7

    .line 1201
    :cond_8
    iput-object v11, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1202
    if-eqz p5, :cond_9

    invoke-static/range {p5 .. p5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v13

    goto :goto_0

    :cond_9
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v13, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 1205
    iget-object v13, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v14, "appWidgetCategory"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-nez v13, :cond_a

    .line 1206
    iget-object v13, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v15, "appWidgetCategory"

    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1210
    :cond_a
    iget-object v13, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    iget-object v13, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    if-eqz v13, :cond_b

    iget-object v13, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v13, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    if-eqz v13, :cond_b

    .line 1215
    iget-object v13, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppBoot:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v15, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v15, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15, v14}, Lcom/android/server/am/OnePlusAppBootManager;->updateWidgetPackage(Ljava/lang/String;Z)V

    .line 1219
    :cond_b
    invoke-virtual {v1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1221
    iget-object v13, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1222
    .local v13, "widgetCount":I
    if-ne v13, v14, :cond_c

    .line 1224
    invoke-direct {v1, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 1231
    :cond_c
    new-array v15, v14, [I

    aput v3, v15, v7

    invoke-direct {v1, v11, v15}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 1234
    iget-object v15, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v15}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v15

    invoke-direct {v1, v11, v15}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 1236
    invoke-direct {v1, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1238
    sget-boolean v15, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v15, :cond_d

    .line 1239
    const-string v15, "AppWidgetServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bound widget "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " to provider "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_d
    const/4 v7, 0x1

    new-array v14, v7, [I

    const/16 v7, 0x5c

    const/4 v15, 0x0

    aput v7, v14, v15

    invoke-static {v14}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1246
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->getInstance()Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v7

    iget-object v14, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v14, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v7, v14, v15}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateWidgetPackage(Ljava/lang/String;Z)V

    .line 1250
    .end local v0    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v9    # "providerUid":I
    .end local v10    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v11    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v13    # "widgetCount":I
    :cond_e
    monitor-exit v8

    .line 1252
    const/4 v0, 0x1

    return v0

    .line 1250
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/IServiceConnection;I)Z
    .locals 24
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "caller"    # Landroid/app/IApplicationThread;
    .param p5, "activtiyToken"    # Landroid/os/IBinder;
    .param p6, "connection"    # Landroid/app/IServiceConnection;
    .param p7, "flags"    # I

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v12, p3

    .line 1313
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 1314
    .local v13, "userId":I
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1315
    const-string v0, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindRemoteViewsService() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_0
    iget-object v14, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1319
    :try_start_0
    invoke-direct {v1, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1323
    nop

    .line 1324
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1323
    move-object/from16 v15, p1

    invoke-direct {v1, v2, v0, v15}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v0

    move-object v11, v0

    .line 1326
    .local v11, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v11, :cond_4

    .line 1331
    iget-object v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_3

    .line 1336
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object v10, v0

    .line 1340
    .local v10, "componentName":Landroid/content/ComponentName;
    iget-object v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 1341
    .local v9, "providerPackage":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1342
    .local v8, "servicePackage":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1349
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    iget-object v3, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1350
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v3

    .line 1349
    invoke-virtual {v0, v10, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceServiceExistsAndRequiresBindRemoteViewsPermission(Landroid/content/ComponentName;I)V

    .line 1355
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide v6, v3

    .line 1359
    .local v6, "callingIdentity":J
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 1361
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 1362
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    iget-object v4, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1363
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v17
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1359
    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v18, v13

    move-object/from16 v19, v14

    move-wide v13, v6

    move-object v6, v12

    .end local v6    # "callingIdentity":J
    .local v13, "callingIdentity":J
    .local v18, "userId":I
    move-object v7, v0

    move-object/from16 v20, v8

    move-object/from16 v8, p6

    .end local v8    # "servicePackage":Ljava/lang/String;
    .local v20, "servicePackage":Ljava/lang/String;
    move-object/from16 v21, v9

    move/from16 v9, p7

    .end local v9    # "providerPackage":Ljava/lang/String;
    .local v21, "providerPackage":Ljava/lang/String;
    move-object/from16 v22, v10

    move-object/from16 v10, v16

    .end local v10    # "componentName":Landroid/content/ComponentName;
    .local v22, "componentName":Landroid/content/ComponentName;
    move-object v15, v11

    move/from16 v11, v17

    .end local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v15, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :try_start_2
    invoke-interface/range {v3 .. v11}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1368
    iget-object v0, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 1369
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Landroid/content/Intent$FilterComparison;

    invoke-direct {v3, v12}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1368
    invoke-direct {v1, v2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAppWidgetServiceRefCount(ILandroid/util/Pair;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1370
    const/4 v0, 0x1

    .line 1375
    :try_start_3
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19

    .line 1370
    return v0

    .line 1375
    :cond_1
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1372
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1375
    .end local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v18    # "userId":I
    .end local v20    # "servicePackage":Ljava/lang/String;
    .end local v21    # "providerPackage":Ljava/lang/String;
    .end local v22    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "callingIdentity":J
    .restart local v8    # "servicePackage":Ljava/lang/String;
    .restart local v9    # "providerPackage":Ljava/lang/String;
    .restart local v10    # "componentName":Landroid/content/ComponentName;
    .restart local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "userId":I
    :catchall_1
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object v15, v11

    move/from16 v18, v13

    move-object/from16 v19, v14

    move-wide v13, v6

    .end local v6    # "callingIdentity":J
    .end local v8    # "servicePackage":Ljava/lang/String;
    .end local v9    # "providerPackage":Ljava/lang/String;
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "callingIdentity":J
    .restart local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v18    # "userId":I
    .restart local v20    # "servicePackage":Ljava/lang/String;
    .restart local v21    # "providerPackage":Ljava/lang/String;
    .restart local v22    # "componentName":Landroid/content/ComponentName;
    :goto_0
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1372
    .end local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v18    # "userId":I
    .end local v20    # "servicePackage":Ljava/lang/String;
    .end local v21    # "providerPackage":Ljava/lang/String;
    .end local v22    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "callingIdentity":J
    .restart local v8    # "servicePackage":Ljava/lang/String;
    .restart local v9    # "providerPackage":Ljava/lang/String;
    .restart local v10    # "componentName":Landroid/content/ComponentName;
    .restart local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "userId":I
    :catch_1
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object v15, v11

    move/from16 v18, v13

    move-object/from16 v19, v14

    move-wide v13, v6

    .line 1375
    .end local v6    # "callingIdentity":J
    .end local v8    # "servicePackage":Ljava/lang/String;
    .end local v9    # "providerPackage":Ljava/lang/String;
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "callingIdentity":J
    .restart local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v18    # "userId":I
    .restart local v20    # "servicePackage":Ljava/lang/String;
    .restart local v21    # "providerPackage":Ljava/lang/String;
    .restart local v22    # "componentName":Landroid/content/ComponentName;
    :goto_1
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1376
    :goto_2
    nop

    .line 1377
    .end local v13    # "callingIdentity":J
    .end local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v20    # "servicePackage":Ljava/lang/String;
    .end local v21    # "providerPackage":Ljava/lang/String;
    .end local v22    # "componentName":Landroid/content/ComponentName;
    monitor-exit v19

    .line 1380
    const/4 v0, 0x0

    return v0

    .line 1343
    .end local v18    # "userId":I
    .restart local v8    # "servicePackage":Ljava/lang/String;
    .restart local v9    # "providerPackage":Ljava/lang/String;
    .restart local v10    # "componentName":Landroid/content/ComponentName;
    .restart local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "userId":I
    :cond_2
    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object v15, v11

    move/from16 v18, v13

    move-object/from16 v19, v14

    .end local v8    # "servicePackage":Ljava/lang/String;
    .end local v9    # "providerPackage":Ljava/lang/String;
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v13    # "userId":I
    .restart local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v18    # "userId":I
    .restart local v20    # "servicePackage":Ljava/lang/String;
    .restart local v21    # "providerPackage":Ljava/lang/String;
    .restart local v22    # "componentName":Landroid/content/ComponentName;
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "The taget service not in the same package as the widget provider"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1332
    .end local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v18    # "userId":I
    .end local v20    # "servicePackage":Ljava/lang/String;
    .end local v21    # "providerPackage":Ljava/lang/String;
    .end local v22    # "componentName":Landroid/content/ComponentName;
    .restart local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v13    # "userId":I
    :cond_3
    move-object v15, v11

    move/from16 v18, v13

    move-object/from16 v19, v14

    .end local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v13    # "userId":I
    .restart local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v18    # "userId":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No provider for widget "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1327
    .end local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v18    # "userId":I
    .restart local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v13    # "userId":I
    :cond_4
    move-object v15, v11

    move/from16 v18, v13

    move-object/from16 v19, v14

    .end local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v13    # "userId":I
    .restart local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v18    # "userId":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad widget id"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1377
    .end local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v18    # "userId":I
    .restart local v13    # "userId":I
    :catchall_2
    move-exception v0

    move/from16 v18, v13

    move-object/from16 v19, v14

    .end local v13    # "userId":I
    .restart local v18    # "userId":I
    :goto_3
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3
.end method

.method clearWidgetsLocked()V
    .locals 1

    .line 3038
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3040
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetsClearedLocked()V

    .line 3041
    return-void
.end method

.method public createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;
    .locals 19
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "intentFlags"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 1079
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1081
    .local v4, "userId":I
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1082
    const-string v0, "AppWidgetServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createAppWidgetConfigIntentSender() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_0
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1088
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1089
    :try_start_0
    invoke-direct {v1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1093
    nop

    .line 1094
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1093
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v0

    move-object v6, v0

    .line 1096
    .local v6, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v6, :cond_2

    .line 1100
    iget-object v0, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v7, v0

    .line 1101
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v7, :cond_1

    .line 1106
    move/from16 v8, p3

    and-int/lit16 v9, v8, -0xc4

    .line 1108
    .local v9, "secureFlags":I
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 1109
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "appWidgetId"

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1110
    iget-object v0, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1111
    invoke-virtual {v10, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-wide v14, v11

    .line 1116
    .local v14, "identity":J
    :try_start_2
    iget-object v11, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/16 v16, 0x0

    new-instance v13, Landroid/os/UserHandle;

    .line 1119
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    invoke-direct {v13, v0}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1116
    move-object v0, v13

    move-object v13, v10

    move-wide/from16 v17, v14

    const/high16 v14, 0x54000000

    .end local v14    # "identity":J
    .local v17, "identity":J
    move-object/from16 v15, v16

    move-object/from16 v16, v0

    :try_start_3
    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1120
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1122
    move-wide/from16 v11, v17

    :try_start_4
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v17    # "identity":J
    .local v11, "identity":J
    monitor-exit v5

    .line 1116
    return-object v0

    .line 1122
    .end local v11    # "identity":J
    .restart local v17    # "identity":J
    :catchall_0
    move-exception v0

    move-wide/from16 v11, v17

    .end local v17    # "identity":J
    .restart local v11    # "identity":J
    goto :goto_0

    .end local v11    # "identity":J
    .restart local v14    # "identity":J
    :catchall_1
    move-exception v0

    move-wide v11, v14

    .end local v14    # "identity":J
    .restart local v11    # "identity":J
    :goto_0
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1102
    .end local v9    # "secureFlags":I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "identity":J
    :cond_1
    move/from16 v8, p3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Widget not bound "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1097
    .end local v7    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_2
    move/from16 v8, p3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad widget id "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1124
    .end local v6    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_2
    move-exception v0

    move/from16 v8, p3

    :goto_1
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_1
.end method

.method public deleteAllHosts()V
    .locals 9

    .line 1418
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1420
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1421
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAllHosts() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1425
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1427
    const/4 v2, 0x0

    .line 1429
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1430
    .local v3, "N":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 1431
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1434
    .local v5, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 1435
    invoke-direct {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 1436
    const/4 v2, 0x1

    .line 1438
    sget-boolean v6, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 1439
    const-string v6, "AppWidgetServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleted host "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    .end local v5    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1444
    .end local v4    # "i":I
    :cond_2
    if-eqz v2, :cond_3

    .line 1445
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1447
    .end local v2    # "changed":Z
    .end local v3    # "N":I
    :cond_3
    monitor-exit v1

    .line 1448
    return-void

    .line 1447
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public deleteAppWidgetId(Ljava/lang/String;I)V
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I

    .line 991
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 993
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 994
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAppWidgetId() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1000
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1001
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1005
    nop

    .line 1006
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1005
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v2

    .line 1008
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v2, :cond_1

    .line 1009
    monitor-exit v1

    return-void

    .line 1012
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1014
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1016
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1017
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted widget id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_2
    monitor-exit v1

    .line 1021
    return-void

    .line 1020
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public deleteHost(Ljava/lang/String;I)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    .line 1385
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1387
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1388
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteHost() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1394
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1395
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1399
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 1400
    .local v2, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v3

    .line 1402
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-nez v3, :cond_1

    .line 1403
    monitor-exit v1

    return-void

    .line 1406
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 1408
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1410
    sget-boolean v4, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1411
    const-string v4, "AppWidgetServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted host "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    .end local v2    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_2
    monitor-exit v1

    .line 1414
    return-void

    .line 1413
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 765
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 768
    :try_start_0
    array-length v1, p3

    if-lez v1, :cond_1

    const-string v1, "--proto"

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 769
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 771
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpInternal(Ljava/io/PrintWriter;)V

    .line 773
    :goto_0
    monitor-exit v0

    .line 774
    return-void

    .line 773
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 1257
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1259
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1260
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppWidgetIds() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1266
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1267
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1271
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1272
    .local v2, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    .line 1274
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v3, :cond_1

    .line 1275
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 1278
    :cond_1
    const/4 v4, 0x0

    new-array v4, v4, [I

    monitor-exit v1

    return-object v4

    .line 1279
    .end local v2    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAppWidgetIdsForHost(Ljava/lang/String;I)[I
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    .line 1284
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1286
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1287
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppWidgetIdsForHost() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1293
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1294
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1298
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 1299
    .local v2, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v3

    .line 1301
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v3, :cond_1

    .line 1302
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 1305
    :cond_1
    const/4 v4, 0x0

    new-array v4, v4, [I

    monitor-exit v1

    return-object v4

    .line 1306
    .end local v2    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I

    .line 1452
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1454
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1455
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppWidgetInfo() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1461
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1462
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1466
    nop

    .line 1467
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1466
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v2

    .line 1469
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v3, :cond_1

    .line 1470
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1473
    :cond_1
    const/4 v3, 0x0

    monitor-exit v1

    return-object v3

    .line 1474
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I

    .line 1545
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1547
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1548
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppWidgetOptions() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1554
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1555
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1559
    nop

    .line 1560
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1559
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v2

    .line 1562
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 1563
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1566
    :cond_1
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    monitor-exit v1

    return-object v3

    .line 1567
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAppWidgetPackageList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 848
    .local v0, "N":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 849
    .local v1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 849
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 850
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 851
    .local v3, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v4, :cond_0

    .line 852
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 853
    .local v4, "pack":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    const-string v5, "AppWidgetServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "widget package = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    .end local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v4    # "pack":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 858
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I

    .line 1479
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1481
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1482
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppWidgetViews() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1488
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1489
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1493
    nop

    .line 1494
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1493
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v2

    .line 1496
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v2, :cond_1

    .line 1497
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1500
    :cond_1
    const/4 v3, 0x0

    monitor-exit v1

    return-object v3

    .line 1501
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getInstalledProvidersForProfile(IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 12
    .param p1, "categoryFilter"    # I
    .param p2, "profileId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1756
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1758
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1759
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstalledProvidersForProfiles() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isEnabledGroupProfile(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1764
    const/4 v1, 0x0

    return-object v1

    .line 1767
    :cond_1
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1768
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isCallerInstantAppLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1769
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instant uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cannot access widget providers"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1774
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1776
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1778
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1779
    .local v3, "providerCount":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_7

    .line 1780
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1781
    .local v6, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1785
    .local v7, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz p3, :cond_4

    iget-object v8, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 1786
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    move v8, v4

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v8, 0x1

    .line 1787
    .local v8, "inPackage":Z
    :goto_2
    iget-boolean v9, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v9, :cond_6

    iget v9, v7, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v9, p1

    if-eqz v9, :cond_6

    if-nez v8, :cond_5

    .line 1788
    goto :goto_3

    .line 1792
    :cond_5
    invoke-virtual {v7}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 1793
    .local v9, "providerProfileId":I
    if-ne v9, p2, :cond_6

    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    iget-object v11, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v11, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 1795
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1794
    invoke-virtual {v10, v11, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1796
    invoke-static {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1779
    .end local v6    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v7    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v8    # "inPackage":Z
    .end local v9    # "providerProfileId":I
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1800
    .end local v5    # "i":I
    :cond_7
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v4

    .line 1801
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v3    # "providerCount":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getWidgetParticipants(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2556
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetState(Ljava/lang/String;I)[B
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2561
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "grantId"    # I

    .line 1025
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1026
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasBindAppWidgetPermission() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1034
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1036
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v1

    .line 1037
    .local v1, "packageUid":I
    if-gez v1, :cond_1

    .line 1038
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1041
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1042
    .local v2, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    monitor-exit v0

    return v3

    .line 1043
    .end local v1    # "packageUid":I
    .end local v2    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBoundWidgetPackage(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3049
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 3052
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3053
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 3054
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 3055
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 3057
    .end local v1    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v0

    .line 3058
    const/4 v0, 0x0

    return v0

    .line 3057
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3050
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system process can call this"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRequestPinAppWidgetSupported()Z
    .locals 4

    .line 1711
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1712
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isCallerInstantAppLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1713
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instant uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " query information about app widgets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1717
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1718
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    .line 1719
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ShortcutServiceInternal;->isRequestPinItemSupported(II)Z

    move-result v0

    .line 1718
    return v0

    .line 1717
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "viewId"    # I

    .line 1593
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1595
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1596
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyAppWidgetViewDataChanged() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1602
    if-eqz p2, :cond_4

    array-length v1, p2

    if-nez v1, :cond_1

    goto :goto_1

    .line 1606
    :cond_1
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1607
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1609
    array-length v2, p2

    .line 1610
    .local v2, "N":I
    const/4 v3, 0x0

    .line 1610
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 1611
    aget v4, p2, v3

    .line 1615
    .local v4, "appWidgetId":I
    nop

    .line 1616
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1615
    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v5

    .line 1618
    .local v5, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v5, :cond_2

    .line 1619
    invoke-direct {p0, v5, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)V

    .line 1610
    .end local v4    # "appWidgetId":I
    .end local v5    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1622
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_3
    monitor-exit v1

    .line 1623
    return-void

    .line 1622
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1603
    :cond_4
    :goto_1
    return-void
.end method

.method public onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V
    .locals 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3650
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result v0

    .line 3654
    .local v0, "parentId":I
    if-eq v0, p1, :cond_6

    .line 3655
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3656
    const/4 v2, 0x0

    .line 3658
    .local v2, "providersChanged":Z
    :try_start_0
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3659
    .local v3, "previousPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3660
    .local v4, "providerCount":I
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 3661
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3662
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v8

    if-ne v8, p1, :cond_0

    .line 3663
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3660
    .end local v7    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3667
    .end local v6    # "i":I
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 3668
    .local v6, "packageCount":I
    move v7, v2

    move v2, v5

    .local v2, "i":I
    .local v7, "providersChanged":Z
    :goto_1
    if-ge v2, v6, :cond_2

    .line 3669
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3670
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3671
    const/4 v9, 0x0

    invoke-direct {p0, v8, p1, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v9

    or-int/2addr v7, v9

    .line 3668
    .end local v8    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3676
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 3677
    .local v2, "removedCount":I
    nop

    .local v5, "i":I
    :goto_2
    if-ge v5, v2, :cond_3

    .line 3678
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetsForPackageLocked(Ljava/lang/String;II)V

    .line 3677
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3682
    .end local v5    # "i":I
    :cond_3
    if-nez v7, :cond_4

    if-lez v2, :cond_5

    .line 3683
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 3684
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 3686
    .end local v2    # "removedCount":I
    .end local v3    # "previousPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "providerCount":I
    .end local v6    # "packageCount":I
    .end local v7    # "providersChanged":Z
    :cond_5
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3688
    :cond_6
    :goto_3
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 270
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 271
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 272
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 273
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 274
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 275
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 276
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 277
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    .line 278
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    .line 279
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    .line 280
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-direct {v0, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 281
    new-instance v0, Lcom/android/server/policy/IconUtilities;

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/policy/IconUtilities;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIconUtilities:Lcom/android/server/policy/IconUtilities;

    .line 283
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->computeMaximumWidgetBitmapMemory()V

    .line 284
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerBroadcastReceiver()V

    .line 285
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerOnCrossProfileProvidersChangedListener()V

    .line 287
    const-class v0, Landroid/appwidget/AppWidgetManagerInternal;

    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;

    invoke-direct {v2, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 288
    return-void
.end method

.method onUserStopped(I)V
    .locals 10
    .param p1, "userId"    # I

    .line 3399
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3400
    const/4 v1, 0x0

    .line 3403
    .local v1, "crossProfileWidgetsChanged":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3404
    .local v2, "widgetCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x1

    if-ltz v3, :cond_5

    .line 3405
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3407
    .local v5, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, p1, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    move v6, v7

    .line 3408
    .local v6, "hostInUser":Z
    :goto_1
    iget-object v8, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v8, :cond_1

    move v8, v4

    goto :goto_2

    :cond_1
    move v8, v7

    .line 3409
    .local v8, "hasProvider":Z
    :goto_2
    if-eqz v8, :cond_2

    iget-object v9, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v9

    if-ne v9, p1, :cond_2

    goto :goto_3

    :cond_2
    move v4, v7

    .line 3414
    .local v4, "providerInUser":Z
    :goto_3
    if-eqz v6, :cond_4

    if-eqz v8, :cond_3

    if-eqz v4, :cond_4

    .line 3415
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 3416
    iget-object v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3417
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3418
    if-eqz v8, :cond_4

    .line 3419
    iget-object v9, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3420
    iput-object v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3404
    .end local v4    # "providerInUser":Z
    .end local v5    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v6    # "hostInUser":Z
    .end local v8    # "hasProvider":Z
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3426
    .end local v3    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3427
    .local v3, "hostCount":I
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_4
    if-ltz v5, :cond_7

    .line 3428
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3429
    .local v6, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v7

    if-ne v7, p1, :cond_6

    .line 3430
    iget-object v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v4

    or-int/2addr v1, v7

    .line 3431
    invoke-direct {p0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 3427
    .end local v6    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 3439
    .end local v5    # "i":I
    :cond_7
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 3440
    .local v4, "grantCount":I
    add-int/lit8 v5, v4, -0x1

    .restart local v5    # "i":I
    :goto_5
    if-ltz v5, :cond_9

    .line 3441
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 3442
    .local v6, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_8

    .line 3443
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 3440
    .end local v6    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 3448
    .end local v5    # "i":I
    :cond_9
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    .line 3449
    .local v5, "userIndex":I
    if-ltz v5, :cond_a

    .line 3450
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3454
    :cond_a
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    .line 3455
    .local v6, "nextIdIndex":I
    if-ltz v6, :cond_b

    .line 3456
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3461
    :cond_b
    if-eqz v1, :cond_c

    .line 3462
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 3464
    .end local v1    # "crossProfileWidgetsChanged":Z
    .end local v2    # "widgetCount":I
    .end local v3    # "hostCount":I
    .end local v4    # "grantCount":I
    .end local v5    # "userIndex":I
    .end local v6    # "nextIdIndex":I
    :cond_c
    monitor-exit v0

    .line 3465
    return-void

    .line 3464
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onUserUnlocked(I)V
    .locals 10
    .param p1, "userId"    # I

    .line 2763
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2764
    return-void

    .line 2766
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2767
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is no longer unlocked - exiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    return-void

    .line 2770
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2771
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2772
    :try_start_0
    const-string v3, "appwidget ensure"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2773
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 2774
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2775
    const-string v3, "appwidget reload"

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2776
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedStateForGroup(I)V

    .line 2777
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2779
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2780
    .local v3, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_4

    .line 2781
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2784
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v8

    if-eq v8, p1, :cond_2

    .line 2785
    goto :goto_1

    .line 2788
    :cond_2
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 2789
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appwidget init "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v9, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2790
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2789
    invoke-static {v4, v5, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2791
    invoke-direct {p0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 2792
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v8

    .line 2793
    .local v8, "appWidgetIds":[I
    invoke-direct {p0, v7, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 2794
    invoke-direct {p0, v7, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 2795
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2780
    .end local v7    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v8    # "appWidgetIds":[I
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2798
    .end local v3    # "N":I
    .end local v6    # "i":I
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2799
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Async processing of onUserUnlocked u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2800
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2799
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    return-void

    .line 2798
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 4
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2934
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v0, :cond_0

    return-void

    .line 2936
    :cond_0
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    .line 2937
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 2938
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 2939
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2941
    :cond_1
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2945
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2946
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-direct {p0, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_0

    .line 2948
    :cond_2
    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->access$1000(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)Z

    .line 2950
    :goto_0
    return-void
.end method

.method public partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "views"    # Landroid/widget/RemoteViews;

    .line 1583
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1584
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "partiallyUpdateAppWidgetIds() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V

    .line 1588
    return-void
.end method

.method reloadWidgetsMaskedStateForGroup(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 498
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    .line 503
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v1

    .line 504
    .local v1, "profileIds":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 505
    .local v4, "profileId":I
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    .line 504
    .end local v4    # "profileId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 507
    .end local v1    # "profileIds":[I
    :cond_1
    monitor-exit v0

    .line 508
    return-void

    .line 507
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2958
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2960
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetRemovedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2963
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_0

    .line 2964
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppBootPackages()V

    .line 2970
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2973
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateOHPDPackages()V

    .line 2977
    :cond_1
    return-void
.end method

.method public requestPinAppWidget(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "resultSender"    # Landroid/content/IntentSender;

    .line 1726
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1727
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1729
    .local v7, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1730
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestPinAppWidget() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1736
    :try_start_0
    invoke-direct {p0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1739
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v2

    .line 1740
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-boolean v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1743
    :cond_1
    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object v8, v4

    .line 1744
    .local v8, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget v4, v8, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    .line 1745
    monitor-exit v1

    return v3

    .line 1747
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1749
    const-class v1, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutServiceInternal;

    .line 1750
    move-object v2, p1

    move-object v3, v8

    move-object v4, p3

    move-object v5, p4

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->requestPinAppWidget(Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Z

    move-result v1

    .line 1749
    return v1

    .line 1741
    .end local v8    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_3
    :goto_0
    :try_start_1
    monitor-exit v1

    return v3

    .line 1747
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public restoreFinished(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2576
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreFinished(I)V

    .line 2577
    return-void
.end method

.method public restoreStarting(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2566
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreStarting(I)V

    .line 2567
    return-void
.end method

.method public restoreWidgetState(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restoredState"    # [B
    .param p3, "userId"    # I

    .line 2571
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 2572
    return-void
.end method

.method public sendOptionsChangedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2411
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2412
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2413
    const-string v1, "appWidgetId"

    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2414
    const-string v1, "appWidgetOptions"

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2415
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2416
    return-void
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "grantId"    # I
    .param p3, "grantPermission"    # Z

    .line 1049
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1050
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBindAppWidgetPermission() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1058
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1060
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v1

    .line 1061
    .local v1, "packageUid":I
    if-gez v1, :cond_1

    .line 1062
    monitor-exit v0

    return-void

    .line 1065
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1066
    .local v2, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p3, :cond_2

    .line 1067
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1069
    :cond_2
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1072
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1073
    .end local v1    # "packageUid":I
    .end local v2    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    monitor-exit v0

    .line 1074
    return-void

    .line 1073
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSafeMode(Z)V
    .locals 0
    .param p1, "safeMode"    # Z

    .line 346
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    .line 347
    return-void
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;
    .locals 20
    .param p1, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "hostId"    # I
    .param p4, "appWidgetIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I[I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/appwidget/PendingHostUpdate;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 865
    move-object/from16 v3, p4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 867
    .local v4, "userId":I
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 868
    const-string v0, "AppWidgetServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startListening() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_0
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 874
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 876
    :try_start_0
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isInstantAppLocked(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 877
    const-string v0, "AppWidgetServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Instant package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cannot host app widgets"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 881
    :cond_1
    invoke-direct {v1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 885
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v7, p3

    :try_start_1
    invoke-direct {v0, v6, v7, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 886
    .local v0, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {v1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    .local v6, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    move-object/from16 v8, p1

    :try_start_2
    iput-object v8, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 889
    sget-object v9, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v9

    .line 890
    .local v9, "updateSequenceNo":J
    array-length v11, v3

    .line 891
    .local v11, "N":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 892
    .local v12, "outUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/PendingHostUpdate;>;"
    new-instance v13, Landroid/util/LongSparseArray;

    invoke-direct {v13}, Landroid/util/LongSparseArray;-><init>()V

    .line 893
    .local v13, "updatesMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/appwidget/PendingHostUpdate;>;"
    const/4 v15, 0x0

    .line 893
    .local v15, "i":I
    :goto_0
    if-ge v15, v11, :cond_4

    .line 894
    aget v14, v3, v15

    invoke-virtual {v6, v14, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getPendingUpdatesForId(ILandroid/util/LongSparseArray;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 897
    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v14

    .line 898
    .local v14, "M":I
    const/16 v16, 0x0

    .line 898
    .local v16, "j":I
    :goto_1
    move/from16 v17, v16

    .line 898
    .end local v16    # "j":I
    .local v17, "j":I
    move-object/from16 v18, v0

    move/from16 v0, v17

    if-ge v0, v14, :cond_3

    .line 899
    .end local v17    # "j":I
    .local v0, "j":I
    .local v18, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-virtual {v13, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Landroid/appwidget/PendingHostUpdate;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    add-int/lit8 v16, v0, 0x1

    .line 898
    .end local v0    # "j":I
    .restart local v16    # "j":I
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    goto :goto_1

    .line 893
    .end local v14    # "M":I
    .end local v16    # "j":I
    .end local v18    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .local v0, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :cond_2
    move-object/from16 v18, v0

    .line 893
    .end local v0    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .restart local v18    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :cond_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    goto :goto_0

    .line 904
    .end local v15    # "i":I
    .end local v18    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .restart local v0    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :cond_4
    move-object/from16 v18, v0

    .line 904
    .end local v0    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .restart local v18    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    iput-wide v9, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J

    .line 905
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v12}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v5

    return-object v0

    .line 906
    .end local v6    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v9    # "updateSequenceNo":J
    .end local v11    # "N":I
    .end local v12    # "outUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/PendingHostUpdate;>;"
    .end local v13    # "updatesMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/appwidget/PendingHostUpdate;>;"
    .end local v18    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :catchall_0
    move-exception v0

    move-object/from16 v8, p1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v8, p1

    move/from16 v7, p3

    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method public stopListening(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    .line 911
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 913
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 914
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopListening() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 920
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 921
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 925
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 926
    .local v2, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v3

    .line 928
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v3, :cond_1

    .line 929
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 930
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 932
    .end local v2    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_1
    monitor-exit v1

    .line 933
    return-void

    .line 932
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "views"    # Landroid/widget/RemoteViews;

    .line 1573
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1574
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppWidgetIds() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V

    .line 1578
    return-void
.end method

.method public updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1506
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1508
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1509
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAppWidgetOptions() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1515
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1516
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1520
    nop

    .line 1521
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1520
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v2

    .line 1523
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v2, :cond_1

    .line 1524
    monitor-exit v1

    return-void

    .line 1530
    :cond_1
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-nez v3, :cond_2

    .line 1531
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 1534
    :cond_2
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    invoke-virtual {v3, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1537
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendOptionsChangedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1539
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1540
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    monitor-exit v1

    .line 1541
    return-void

    .line 1540
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 9
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 1627
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1629
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1630
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAppWidgetProvider() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1636
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1637
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1641
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1642
    .local v2, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    .line 1644
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v3, :cond_1

    .line 1645
    const-string v4, "AppWidgetServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider doesn\'t exist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    monitor-exit v1

    return-void

    .line 1649
    :cond_1
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 1650
    .local v4, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1651
    .local v5, "N":I
    const/4 v6, 0x0

    move v7, v6

    .line 1651
    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_2

    .line 1652
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1653
    .local v8, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v8, p2, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 1651
    .end local v8    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1655
    .end local v2    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v4    # "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    .end local v5    # "N":I
    .end local v7    # "i":I
    :cond_2
    monitor-exit v1

    .line 1656
    return-void

    .line 1655
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateAppWidgetProviderInfo(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 11
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "metadataKey"    # Ljava/lang/String;

    .line 1660
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1661
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1662
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAppWidgetProvider() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1668
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1669
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1673
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1674
    .local v2, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    .line 1675
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v3, :cond_5

    .line 1679
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1681
    monitor-exit v1

    return-void

    .line 1684
    :cond_1
    if-nez p2, :cond_2

    .line 1685
    const-string v4, "android.appwidget.provider"

    goto :goto_0

    :cond_2
    move-object v4, p2

    .line 1686
    .local v4, "keyToUse":Ljava/lang/String;
    :goto_0
    iget-object v5, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 1687
    invoke-direct {p0, v2, v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    .line 1688
    .local v5, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v5, :cond_4

    .line 1693
    iput-object v5, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1694
    iput-object p2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 1697
    iget-object v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1698
    .local v6, "N":I
    const/4 v7, 0x0

    move v8, v7

    .line 1698
    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_3

    .line 1699
    iget-object v9, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1700
    .local v9, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1701
    iget-object v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-direct {p0, v9, v10, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 1698
    .end local v9    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1704
    .end local v8    # "i":I
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1705
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 1706
    .end local v2    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v4    # "keyToUse":Ljava/lang/String;
    .end local v5    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v6    # "N":I
    monitor-exit v1

    .line 1707
    return-void

    .line 1689
    .restart local v2    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v4    # "keyToUse":Ljava/lang/String;
    .restart local v5    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " meta-data to a valid AppWidget provider"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1676
    .end local v4    # "keyToUse":Ljava/lang/String;
    .end local v5    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not a valid AppWidget provider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1706
    .end local v2    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
