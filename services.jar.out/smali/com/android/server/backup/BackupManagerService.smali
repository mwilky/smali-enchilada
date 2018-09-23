.class public Lcom/android/server/backup/BackupManagerService;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerServiceInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final BACKUP_ENABLE_FILE:Ljava/lang/String; = "backup_enabled"

.field public static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field public static final BACKUP_FILE_VERSION:I = 0x5

.field public static final BACKUP_FINISHED_ACTION:Ljava/lang/String; = "android.intent.action.BACKUP_FINISHED"

.field public static final BACKUP_FINISHED_PACKAGE_EXTRA:Ljava/lang/String; = "packageName"

.field public static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field public static final BACKUP_MANIFEST_VERSION:I = 0x1

.field public static final BACKUP_METADATA_FILENAME:Ljava/lang/String; = "_meta"

.field public static final BACKUP_METADATA_VERSION:I = 0x1

.field public static final BACKUP_WIDGET_METADATA_TOKEN:I = 0x1ffed01

.field private static final BUSY_BACKOFF_FUZZ:I = 0x6ddd00

.field private static final BUSY_BACKOFF_MIN_MILLIS:J = 0x36ee80L

.field private static final COMPRESS_FULL_BACKUPS:Z = true

.field private static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field public static final DEBUG:Z = true

.field public static final DEBUG_BACKUP_TRACE:Z = true

.field public static final DEBUG_SCHEDULING:Z = true

.field private static final INITIALIZATION_DELAY_MILLIS:J = 0xbb8L

.field private static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field public static final KEY_WIDGET_STATE:Ljava/lang/String; = "\uffed\uffedwidget"

.field public static final MORE_DEBUG:Z = false

.field private static final OP_ACKNOWLEDGED:I = 0x1

.field public static final OP_PENDING:I = 0x0

.field private static final OP_TIMEOUT:I = -0x1

.field public static final OP_TYPE_BACKUP:I = 0x2

.field public static final OP_TYPE_BACKUP_WAIT:I = 0x0

.field public static final OP_TYPE_RESTORE_WAIT:I = 0x1

.field public static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field public static final RUN_BACKUP_ACTION:Ljava/lang/String; = "android.app.backup.intent.RUN"

.field public static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field private static final SCHEDULE_FILE_VERSION:I = 0x1

.field private static final SERVICE_ACTION_TRANSPORT_HOST:Ljava/lang/String; = "android.backup.TRANSPORT_HOST"

.field public static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.providers.settings"

.field public static final SHARED_BACKUP_AGENT_PACKAGE:Ljava/lang/String; = "com.android.sharedstoragebackup"

.field public static final TAG:Ljava/lang/String; = "BackupManagerService"

.field private static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field private static final TIMEOUT_INTERVAL:J = 0x2710L

.field private static final TRANSPORT_RETRY_INTERVAL:J = 0x36ee80L

.field static sInstance:Lcom/android/server/backup/Trampoline;


# instance fields
.field private mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field private mActivityManager:Landroid/app/IActivityManager;

.field private final mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/params/AdbParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mAgentConnectLock:Ljava/lang/Object;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAncestralToken:J

.field private mAutoRestore:Z

.field private mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

.field private mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field private final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

.field private mBackupPolicyEnforcer:Lcom/android/server/backup/BackupPolicyEnforcer;

.field private volatile mBackupRunning:Z

.field private final mBackupTrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseStateDir:Ljava/io/File;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClearDataLock:Ljava/lang/Object;

.field private volatile mClearingData:Z

.field private mConnectedAgent:Landroid/app/IBackupAgent;

.field private volatile mConnecting:Z

.field private mConstants:Lcom/android/server/backup/BackupManagerConstants;

.field private mContext:Landroid/content/Context;

.field private final mCurrentOpLock:Ljava/lang/Object;

.field private final mCurrentOperations:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCurrentOpLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/internal/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentToken:J

.field private mDataDir:Ljava/io/File;

.field private mEnabled:Z

.field private mFullBackupQueue:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFullBackupScheduleFile:Ljava/io/File;

.field private mFullBackupScheduleWriter:Ljava/lang/Runnable;

.field private mIsRestoreInProgress:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPendingRestores"
    .end annotation
.end field

.field private mJournal:Lcom/android/server/backup/DataChangedJournal;

.field private mJournalDir:Ljava/io/File;

.field private volatile mLastBackupPass:J

.field final mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field private mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingInits:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRestores:Ljava/util/Queue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPendingRestores"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

.field private mProvisioned:Z

.field private mProvisionedObserver:Landroid/database/ContentObserver;

.field private final mQueueLock:Ljava/lang/Object;

.field private final mRegisterTransportsRequestedTime:J

.field private final mRng:Ljava/security/SecureRandom;

.field private mRunBackupIntent:Landroid/app/PendingIntent;

.field private mRunBackupReceiver:Landroid/content/BroadcastReceiver;

.field private mRunInitIntent:Landroid/app/PendingIntent;

.field private mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field private mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation
.end field

.field private mStorageManager:Landroid/os/storage/IStorageManager;

.field private mTokenFile:Ljava/io/File;

.field private final mTokenGenerator:Ljava/util/Random;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;

.field private mWakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

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

.method constructor <init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)V
    .locals 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPendingRestores:Ljava/util/Queue;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    iput-wide v3, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$1;

    invoke-direct {v3, v1}, Lcom/android/server/backup/BackupManagerService$1;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$2;

    invoke-direct {v3, v1}, Lcom/android/server/backup/BackupManagerService$2;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/Trampoline;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/backup/Trampoline;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    new-instance v3, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/backup/BackupAgentTimeoutParameters;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->start()V

    new-instance v3, Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/android/server/backup/internal/BackupHandler;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Looper;)V

    iput-object v3, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    iput-boolean v4, v1, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    const-string v4, "backup_auto_restore"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    iput-boolean v4, v1, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    new-instance v4, Lcom/android/server/backup/internal/ProvisionedObserver;

    iget-object v7, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {v4, v1, v7}, Lcom/android/server/backup/internal/ProvisionedObserver;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Handler;)V

    iput-object v4, v1, Lcom/android/server/backup/BackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    const-string v4, "device_provisioned"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/backup/BackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v4, p4

    iput-object v4, v1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v7, v1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    iget-object v7, v1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-static {v7}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELinux restorecon failed on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v7, p5

    iput-object v7, v1, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v8, Lcom/android/server/backup/BackupPasswordManager;

    iget-object v9, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v11, v1, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/backup/BackupPasswordManager;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/security/SecureRandom;)V

    iput-object v8, v1, Lcom/android/server/backup/BackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    new-instance v8, Lcom/android/server/backup/internal/RunBackupReceiver;

    invoke-direct {v8, v1}, Lcom/android/server/backup/internal/RunBackupReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v8, v1, Lcom/android/server/backup/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v9, "android.app.backup.intent.RUN"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/backup/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    const-string v10, "android.permission.BACKUP"

    invoke-virtual {v2, v9, v8, v10, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v9, Lcom/android/server/backup/internal/RunInitializeReceiver;

    invoke-direct {v9, v1}, Lcom/android/server/backup/internal/RunInitializeReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v9, v1, Lcom/android/server/backup/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    move-object v8, v9

    const-string v9, "android.app.backup.intent.INIT"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/backup/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    const-string v10, "android.permission.BACKUP"

    invoke-virtual {v2, v9, v8, v10, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.app.backup.intent.RUN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v2, v5, v9, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/backup/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.app.backup.intent.INIT"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v2, v5, v11, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    new-instance v5, Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v12, "pending"

    invoke-direct {v5, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    iget-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    new-instance v5, Lcom/android/server/backup/BackupManagerConstants;

    iget-object v10, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v12, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-direct {v5, v10, v12}, Lcom/android/server/backup/BackupManagerConstants;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    iget-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerConstants;->start()V

    new-instance v5, Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v12, "fb-schedule"

    invoke-direct {v5, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-direct {v1}, Lcom/android/server/backup/BackupManagerService;->initPackageTracking()V

    iget-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_0
    invoke-direct {v1, v0}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v10, p6

    iput-object v10, v1, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    new-instance v5, Lcom/android/server/backup/-$$Lambda$BackupManagerService$QlgHuOXOPKAZpwyUhPFAintPnqM;

    invoke-direct {v5, v1}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$QlgHuOXOPKAZpwyUhPFAintPnqM;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    invoke-virtual {v0, v5}, Lcom/android/server/backup/TransportManager;->setOnTransportRegisteredListener(Lcom/android/server/backup/transport/OnTransportRegisteredListener;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/server/backup/BackupManagerService;->mRegisterTransportsRequestedTime:J

    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lcom/android/server/backup/-$$Lambda$pM_c5tVAGDtxjxLF_ONtACWWq6Q;

    invoke-direct {v12, v5}, Lcom/android/server/backup/-$$Lambda$pM_c5tVAGDtxjxLF_ONtACWWq6Q;-><init>(Lcom/android/server/backup/TransportManager;)V

    const-wide/16 v13, 0xbb8

    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/backup/internal/BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v5, Lcom/android/server/backup/-$$Lambda$BackupManagerService$7naKh6MW6ryzdPxgJfM5jV1nHp4;

    invoke-direct {v5, v1}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$7naKh6MW6ryzdPxgJfM5jV1nHp4;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    invoke-virtual {v0, v5, v13, v14}, Lcom/android/server/backup/internal/BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "*backup*"

    invoke-virtual {v0, v6, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/android/server/backup/BackupPolicyEnforcer;

    invoke-direct {v0, v2}, Lcom/android/server/backup/BackupPolicyEnforcer;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupPolicyEnforcer:Lcom/android/server/backup/BackupPolicyEnforcer;

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v10, p6

    :goto_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/backup/BackupManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/backup/BackupManagerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/TransportManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/backup/BackupManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/BackupManagerConstants;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/backup/BackupManagerService;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/backup/BackupManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    return-void
.end method

.method private addPackageParticipantsLocked([Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-direct {p0, v3, v0}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    if-nez v3, :cond_1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v3, v4

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v5, 0x10

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v5, v4}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method private allAgentPackages()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x8000000

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    :try_start_0
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x4000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x400

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    move-object v5, v6

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v5

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static backupSettingMigrated(I)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "backup_enabled"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;)Lcom/android/server/backup/BackupManagerService;
    .locals 12

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getBackupTransportWhitelist()Landroid/util/ArraySet;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    :cond_0
    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_transport"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting with transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/android/server/backup/TransportManager;

    invoke-direct {v11, p0, v1, v2}, Lcom/android/server/backup/TransportManager;-><init>(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "backup"

    invoke-direct {v9, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "backup_stage"

    invoke-direct {v10, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/backup/BackupManagerService;

    move-object v5, v3

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)V

    return-object v3
.end method

.method private dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataChanged but no participant pkg=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/server/backup/internal/BackupRequest;

    invoke-direct {v1, p1}, Lcom/android/server/backup/internal/BackupRequest;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v0, v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const-string v0, "@pm@"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "@pm@"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/android/server/backup/utils/SparseArrayUtils;->union(Landroid/util/SparseArray;)Ljava/util/HashSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method private dequeueFullBackupLocked(Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v3, v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dumpAgents(Ljava/io/PrintWriter;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    const-string v1, "Defined backup agents:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 14

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup Manager is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_0

    const-string v2, "enabled"

    goto :goto_0

    :cond_0
    const-string v2, "disabled"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "not "

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "provisioned / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "not "

    goto :goto_2

    :cond_2
    const-string v2, ""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pending init"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-restore is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    if-eqz v2, :cond_3

    const-string v2, "enabled"

    goto :goto_3

    :cond_3
    const-string v2, "disabled"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    if-eqz v1, :cond_4

    const-string v1, "Backup currently running"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->isBackupOperationInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Backup in progress"

    goto :goto_4

    :cond_5
    const-string v1, "No backups running"

    :goto_4
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last backup pass started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService;->mLastBackupPass:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (now = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  next scheduled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/backup/KeyValueBackupJob;->nextScheduled()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Transport whitelist:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1}, Lcom/android/server/backup/TransportManager;->getTransportWhitelist()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    const-string v3, "    "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const-string v1, "Available transports:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    array-length v3, v1

    move v4, v2

    :goto_6
    if-ge v4, v3, :cond_9

    aget-object v5, v1, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v7}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "  * "

    goto :goto_7

    :cond_7
    const-string v7, "    "

    :goto_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v8, v5}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "       destination: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v8, v5}, Lcom/android/server/backup/TransportManager;->getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "       intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v8, v5}, Lcom/android/server/backup/TransportManager;->getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v8, v7

    move v9, v2

    :goto_8
    if-ge v9, v8, :cond_8

    aget-object v10, v7, v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "       "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " state bytes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_8
    goto :goto_9

    :catch_0
    move-exception v6

    :try_start_2
    const-string v7, "BackupManagerService"

    const-string v8, "Error in transport"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "        Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    :cond_9
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/TransportManager;->dumpTransportClients(Ljava/io/PrintWriter;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pending init: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_a
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "Most recent backup trace:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_b
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v3, "Ancestral: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "Current:   "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const-string v4, "Participants:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_c
    if-ge v2, v3, :cond_d

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const-string v5, "  uid: "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ancestral packages: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v4, :cond_e

    const-string/jumbo v4, "none"

    goto :goto_e

    :cond_e
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_f
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v2}, Lcom/android/server/backup/ProcessedPackagesJournal;->getPackagesCopy()Ljava/util/Set;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ever backed up: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pending key/value backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/internal/BackupRequest;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Full backup queue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    const-string v6, "    "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    const-string v6, " : "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    :cond_12
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private fullBackupAllowable(Ljava/lang/String;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "BackupManagerService"

    const-string v2, "Transport not registered; full data backup not performed"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "@pm@"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    const-string v4, "BackupManagerService"

    const-string v5, "Full backup requested but dataset not yet initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_1
    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get transport name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method static getInstance()Lcom/android/server/backup/Trampoline;
    .locals 1

    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    return-object v0
.end method

.method private getMessageIdForOperationType(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageIdForOperationType called on invalid operation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/16 v0, 0x12

    return v0

    :pswitch_1
    const/16 v0, 0x11

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initPackageTracking()V
    .locals 7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v2, "ancestral"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-ltz v3, :cond_0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-static {v1, v0}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-static {v1, v0}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "Unable to read token file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "No ancestral data"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    :goto_3
    new-instance v0, Lcom/android/server/backup/ProcessedPackagesJournal;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/android/server/backup/ProcessedPackagesJournal;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v0}, Lcom/android/server/backup/ProcessedPackagesJournal;->init()V

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->readFullBackupSchedule()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private isAllowedByMandatoryBackupTransportPolicy(Landroid/content/ComponentName;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupPolicyEnforcer:Lcom/android/server/backup/BackupPolicyEnforcer;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupPolicyEnforcer;->getMandatoryBackupTransport()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isAllowedByMandatoryBackupTransportPolicy(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupPolicyEnforcer:Lcom/android/server/backup/BackupPolicyEnforcer;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupPolicyEnforcer;->getMandatoryBackupTransport()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string v2, "BackupManagerService"

    const-string/jumbo v3, "mandatory backup transport not registered!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method public static synthetic lambda$7naKh6MW6ryzdPxgJfM5jV1nHp4(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->parseLeftoverJournals()V

    return-void
.end method

.method public static synthetic lambda$QlgHuOXOPKAZpwyUhPFAintPnqM(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$clearBackupData$3(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$initializeTransports$2(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public static synthetic lambda$parseLeftoverJournals$0(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V
    .locals 2

    const-string v0, "BackupManagerService"

    const-string v1, "Found stale backup journal, scheduling"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$requestBackup$1(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$restoreAtInstall$6(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public static synthetic lambda$selectBackupTransportAsync$5(Lcom/android/server/backup/BackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1, p1}, Lcom/android/server/backup/TransportManager;->registerAndSelectTransport(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService;->updateStateForTransport(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "BackupManagerService"

    const-string v4, "Transport got unregistered"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {p2, v0}, Landroid/app/backup/ISelectBackupTransportCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :cond_1
    invoke-interface {p2, v1}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    nop

    const-string v3, "BackupManagerService"

    const-string v4, "ISelectBackupTransportCallback listener not available"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    :goto_2
    nop

    :goto_3
    return-void
.end method

.method public static synthetic lambda$setBackupEnabled$4(Lcom/android/server/backup/BackupManagerService;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p3}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "Unexpected unregistered transport"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService;->mRegisterTransportsRequestedTime:J

    sub-long/2addr v0, v2

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " registered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms after first request (delay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/File;

    const-string v2, "_need_init_"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-wide/32 v3, 0xea60

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v3

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :goto_0
    return-void
.end method

.method private parseLeftoverJournals()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/backup/DataChangedJournal;->listJournals(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/DataChangedJournal;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/DataChangedJournal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    new-instance v3, Lcom/android/server/backup/-$$Lambda$BackupManagerService$-mOc1e-1SsZws3njOjKXfyubq98;

    invoke-direct {v3, p0}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$-mOc1e-1SsZws3njOjKXfyubq98;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/DataChangedJournal;->forEach(Lcom/android/server/backup/DataChangedJournal$Consumer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method private static readBackupEnableState(I)Z
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "backup_enabled"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    :try_start_2
    invoke-static {v4, v2}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v6

    :catchall_0
    move-exception v5

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-static {v4, v2}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v2

    const-string v4, "BackupManagerService"

    const-string v5, "Cannot read enable state; assuming disabled"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string v2, "BackupManagerService"

    const-string/jumbo v4, "isBackupEnabled() => false due to absent settings file"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v3
.end method

.method private readFullBackupSchedule()Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v4

    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v7, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-object v7, v0

    const/4 v8, 0x0

    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move-object v9, v0

    nop

    :try_start_2
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object v10, v0

    nop

    :try_start_3
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v11, v0

    const/4 v0, 0x1

    if-eq v11, v0, :cond_0

    const-string v0, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown backup schedule version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    nop

    :try_start_4
    invoke-static {v8, v10}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-static {v8, v9}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    :try_start_6
    invoke-static {v8, v7}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    return-object v8

    :cond_0
    :try_start_7
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v12, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v12}, Ljava/util/HashSet;-><init>(I)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v13, v0

    const/4 v14, 0x0

    move v0, v14

    :goto_0
    move v15, v0

    if-ge v15, v12, :cond_2

    :try_start_8
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v17
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-wide/from16 v19, v17

    move-object/from16 v8, v16

    :try_start_9
    invoke-virtual {v13, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v16

    if-eqz v16, :cond_1

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v14, v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move/from16 v21, v11

    move/from16 v22, v12

    move-wide/from16 v11, v19

    :try_start_b
    invoke-direct {v5, v8, v11, v12}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move/from16 v21, v11

    move/from16 v22, v12

    move-wide/from16 v11, v19

    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " no longer eligible for full backup"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_1
    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v21, v11

    move/from16 v22, v12

    move-wide/from16 v11, v19

    :goto_2
    :try_start_c
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " not installed; dropping from full backup"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_3
    add-int/lit8 v0, v15, 0x1

    move/from16 v11, v21

    move/from16 v12, v22

    const/4 v8, 0x0

    const/4 v14, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v8, v0

    const/4 v5, 0x0

    goto :goto_6

    :catchall_0
    move-exception v0

    const/4 v5, 0x0

    const/4 v8, 0x0

    goto :goto_7

    :cond_2
    move/from16 v21, v11

    move/from16 v22, v12

    :try_start_d
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v5, :cond_4

    :try_start_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    invoke-static {v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v6, v8}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-wide/16 v11, 0x0

    invoke-direct {v6, v8, v11, v12}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/4 v2, 0x1

    :cond_3
    goto :goto_4

    :cond_4
    :try_start_f
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    const/4 v5, 0x0

    :try_start_10
    invoke-static {v5, v10}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    invoke-static {v5, v9}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :try_start_12
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    goto :goto_b

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    move-object v8, v5

    goto :goto_7

    :catch_3
    move-exception v0

    const/4 v5, 0x0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v5, v8

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v5, v8

    :goto_5
    move-object v8, v0

    :goto_6
    :try_start_13
    throw v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :catchall_3
    move-exception v0

    :goto_7
    :try_start_14
    invoke-static {v8, v10}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :catchall_4
    move-exception v0

    move-object v8, v5

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v5, v8

    goto :goto_9

    :catch_6
    move-exception v0

    move-object v5, v8

    :goto_8
    move-object v8, v0

    :try_start_15
    throw v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :catchall_6
    move-exception v0

    :goto_9
    :try_start_16
    invoke-static {v8, v9}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_a

    :catchall_8
    move-exception v0

    move-object v5, v8

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v8, v0

    :try_start_17
    throw v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :goto_a
    :try_start_18
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8

    :catch_8
    move-exception v0

    const-string v5, "BackupManagerService"

    const-string v6, "Unable to read backup schedule"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const/4 v3, 0x0

    :cond_5
    :goto_b
    if-nez v3, :cond_7

    const/4 v2, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    invoke-static {v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v6, v7}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_6
    const-wide/16 v8, 0x0

    :goto_d
    goto :goto_c

    :cond_7
    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    :cond_8
    return-object v3
.end method

.method private removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private removePackageParticipantsLocked([Ljava/lang/String;I)V
    .locals 5

    if-nez p1, :cond_0

    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "removePackageParticipants with null list"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3, v2}, Lcom/android/server/backup/BackupManagerService;->removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private startConfirmationUi(ILjava/lang/String;)Z
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.backupconfirm"

    const-string v2, "com.android.backupconfirm.BackupRestoreConfirmation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "conftoken"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private updateStateForTransport(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "backup_transport"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "BMS.updateStateForTransport()"

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    iput-wide v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transport "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not available: current token = 0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transport "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not registered: current token = 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    :goto_1
    return-void
.end method

.method private waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static writeBackupEnableState(ZI)V
    .locals 9

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "backup_enabled"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "backup_enabled-stage"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v4, p0}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v5

    move-object v6, v3

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_0
    :try_start_4
    invoke-static {v6, v4}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v4

    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to record backup enable state; reverting to disabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    iget-object v5, v5, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "backup_enabled"

    invoke-static {v5, v6, v3, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_1
    return-void
.end method

.method private writeFullBackupScheduleAsync()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/backup/DataChangedJournal;->newJournal(Ljava/io/File;)Lcom/android/server/backup/DataChangedJournal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/DataChangedJournal;->addPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to backup journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    :goto_0
    return-void
.end method


# virtual methods
.method public acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 7

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acknowledgeAdbBackupOrRestore : token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " allow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "acknowledgeAdbBackupOrRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/params/AdbParams;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    if-eqz p2, :cond_1

    instance-of v4, v3, Lcom/android/server/backup/params/AdbBackupParams;

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :cond_0
    const/16 v4, 0xa

    :goto_0
    iput-object p5, v3, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iput-object p3, v3, Lcom/android/server/backup/params/AdbParams;->curPassword:Ljava/lang/String;

    iput-object p4, v3, Lcom/android/server/backup/params/AdbParams;->encryptPassword:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v6, v5}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    const-string v4, "BackupManagerService"

    const-string v5, "User rejected full backup/restore operation"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    goto :goto_1

    :cond_2
    const-string v4, "BackupManagerService"

    const-string v5, "Attempted to ack full backup/restore with invalid token"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v13, p4

    move/from16 v14, p6

    move-object/from16 v15, p10

    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "adbBackup"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v16

    if-nez v16, :cond_4

    if-nez v14, :cond_1

    if-nez v13, :cond_1

    if-eqz v15, :cond_0

    array-length v0, v15

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Backup requested but neither shared nor any apps named"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v11, v2

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_2

    :try_start_1
    const-string v0, "BackupManagerService"

    const-string v2, "Backup not supported before setup"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing output for adb backup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "BackupManagerService"

    const-string v2, "Adb backup processing complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-wide v13, v11

    goto/16 :goto_4

    :cond_2
    :try_start_3
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting backup: apks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " obb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p3

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " shared="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " all="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " system="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " includekeyvalue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p9

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " pkgs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BackupManagerService"

    const-string v2, "Beginning adb backup..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/backup/params/AdbBackupParams;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v2, v0

    move-object/from16 v3, p1

    move v4, v10

    move v5, v9

    move v6, v13

    move/from16 v7, p5

    move v8, v14

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide v13, v11

    move/from16 v11, p9

    move-object v12, v15

    :try_start_4
    invoke-direct/range {v2 .. v12}, Lcom/android/server/backup/params/AdbBackupParams;-><init>(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    move v3, v0

    iget-object v4, v1, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting backup confirmation UI, token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "fullback"

    invoke-direct {v1, v3, v0}, Lcom/android/server/backup/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BackupManagerService"

    const-string v4, "Unable to launch backup confirmation UI"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->delete(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v0

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO error closing output for adb backup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "BackupManagerService"

    const-string v4, "Adb backup processing complete."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_8
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6, v6}, Landroid/os/PowerManager;->userActivity(JII)V

    invoke-direct {v1, v3, v2}, Lcom/android/server/backup/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V

    const-string v0, "BackupManagerService"

    const-string v4, "Waiting for backup completion..."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v2}, Lcom/android/server/backup/BackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v0

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing output for adb backup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "BackupManagerService"

    const-string v2, "Adb backup processing complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    return-void

    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-wide v13, v11

    move-object v2, v0

    :goto_4
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v3, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing output for adb backup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "BackupManagerService"

    const-string v3, "Adb backup processing complete."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Backup supported only for the device owner"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public adbRestore(Landroid/os/ParcelFileDescriptor;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "adbRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BackupManagerService"

    const-string v4, "Full restore not permitted before setup"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error trying to close fd after adb restore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v3, "BackupManagerService"

    const-string v4, "adb restore processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_2
    const-string v3, "BackupManagerService"

    const-string v4, "Beginning restore..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/backup/params/AdbRestoreParams;

    invoke-direct {v3, p1}, Lcom/android/server/backup/params/AdbRestoreParams;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting restore confirmation UI, token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "fullrest"

    invoke-direct {p0, v4, v5}, Lcom/android/server/backup/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "BackupManagerService"

    const-string v6, "Unable to launch restore confirmation"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error trying to close fd after adb restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v5, "BackupManagerService"

    const-string v6, "adb restore processing complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_6
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/os/PowerManager;->userActivity(JII)V

    invoke-direct {p0, v4, v3}, Lcom/android/server/backup/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V

    const-string v5, "BackupManagerService"

    const-string v6, "Waiting for restore completion..."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/server/backup/BackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error trying to close fd after adb restore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v3, "BackupManagerService"

    const-string v4, "adb restore processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    return-void

    :catchall_0
    move-exception v6

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error trying to close fd after adb restore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BackupManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v4, "BackupManagerService"

    const-string v5, "adb restore processing complete."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v3

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Restore supported only for the device owner"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addBackupTrace(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agentConnected pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " agent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    goto :goto_0

    :cond_0
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " claiming agent connected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    goto :goto_0

    :cond_0
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " claiming agent disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public backupNow()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "backupNow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v1, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "BackupManagerService"

    const-string v2, "Not running backup while in battery save mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v1, v2}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    goto :goto_1

    :cond_0
    const-string v1, "BackupManagerService"

    const-string v2, "Scheduling immediate backup pass"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "BackupManagerService"

    const-string/jumbo v4, "run-backup intent cancelled!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;)V

    monitor-exit v1

    :goto_1
    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public backupPasswordMatches(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupPasswordManager;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .locals 35

    move-object/from16 v11, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v1, v11, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    monitor-enter v1

    :try_start_0
    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupIntervalMilliseconds()J

    move-result-wide v2

    move-wide v14, v2

    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupIntervalMilliseconds()J

    move-result-wide v2

    move-wide v9, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    const/4 v1, 0x0

    move-wide v2, v14

    iget-boolean v0, v11, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_f

    iget-boolean v0, v11, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-nez v0, :cond_0

    move-wide/from16 v25, v9

    goto/16 :goto_a

    :cond_0
    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v8

    iget-boolean v0, v8, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "BackupManagerService"

    const-string v5, "Deferring scheduled full backups in battery saver mode"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v11, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v0, v9, v10, v5}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    return v4

    :cond_1
    const-string v0, "BackupManagerService"

    const-string v5, "Beginning scheduled full backup operation"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v11, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    if-eqz v0, :cond_2

    :try_start_2
    const-string v0, "BackupManagerService"

    const-string v5, "Backup triggered but one already/still running!"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v4

    :catchall_0
    move-exception v0

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v9

    goto/16 :goto_9

    :cond_2
    const/4 v0, 0x1

    :goto_0
    :try_start_3
    iget-object v6, v11, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    if-nez v6, :cond_3

    :try_start_4
    const-string v6, "BackupManagerService"

    const-string v5, "Backup queue empty; doing nothing"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    nop

    move-wide v4, v2

    move-object v2, v1

    goto/16 :goto_8

    :cond_3
    const/4 v5, 0x0

    :try_start_5
    iget-object v6, v11, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v6}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v6}, Lcom/android/server/backup/BackupManagerService;->fullBackupAllowable(Ljava/lang/String;)Z

    move-result v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-nez v17, :cond_4

    const/4 v0, 0x0

    move-wide v2, v9

    :cond_4
    if-eqz v0, :cond_c

    :try_start_6
    iget-object v4, v11, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v19, v1

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v1, v4

    move-wide/from16 v20, v2

    :try_start_8
    iget-wide v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    sub-long v2, v12, v2

    cmp-long v4, v2, v14

    if-ltz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_6

    sub-long v19, v14, v2

    nop

    move-object v2, v1

    move v0, v4

    move-wide/from16 v4, v19

    goto/16 :goto_8

    :cond_6
    :try_start_9
    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-wide/from16 v22, v2

    :try_start_a
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v2
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez v2, :cond_7

    :try_start_b
    iget-object v2, v11, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v5, 0x1

    nop

    move v0, v4

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move/from16 v28, v4

    move-object/from16 v30, v6

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move/from16 v28, v4

    move-object/from16 v30, v6

    goto/16 :goto_5

    :cond_7
    :try_start_c
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    and-int/lit16 v3, v2, 0x2000

    if-nez v3, :cond_8

    :try_start_d
    iget-object v3, v11, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move/from16 v24, v2

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->isAppForeground(I)Z

    move-result v2
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    move/from16 v24, v2

    :cond_9
    const/4 v2, 0x0

    :goto_2
    move v5, v2

    if-eqz v5, :cond_a

    :try_start_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v25, 0x36ee80

    add-long v2, v2, v25

    move-object/from16 v27, v0

    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move/from16 v28, v4

    const v4, 0x6ddd00

    :try_start_f
    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move/from16 v29, v5

    int-to-long v4, v0

    add-long/2addr v2, v4

    :try_start_10
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-object/from16 v30, v6

    :try_start_11
    const-string v6, "Full backup time but "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is busy; deferring to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    sub-long v4, v2, v14

    invoke-virtual {v11, v0, v4, v5}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_3

    :catch_2
    move-exception v0

    move/from16 v5, v29

    goto :goto_4

    :catch_3
    move-exception v0

    move/from16 v5, v29

    goto/16 :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v30, v6

    move/from16 v5, v29

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v30, v6

    move/from16 v5, v29

    goto :goto_5

    :catch_6
    move-exception v0

    move/from16 v29, v5

    move-object/from16 v30, v6

    goto :goto_4

    :catch_7
    move-exception v0

    move/from16 v29, v5

    move-object/from16 v30, v6

    goto :goto_5

    :catch_8
    move-exception v0

    move/from16 v28, v4

    move/from16 v29, v5

    move-object/from16 v30, v6

    goto :goto_4

    :catch_9
    move-exception v0

    move/from16 v28, v4

    move/from16 v29, v5

    move-object/from16 v30, v6

    goto :goto_5

    :cond_a
    move/from16 v28, v4

    move/from16 v29, v5

    move-object/from16 v30, v6

    :goto_3
    move/from16 v0, v28

    move/from16 v5, v29

    goto/16 :goto_7

    :catch_a
    move-exception v0

    move/from16 v28, v4

    move-object/from16 v30, v6

    goto :goto_4

    :catch_b
    move-exception v0

    move/from16 v28, v4

    move-object/from16 v30, v6

    goto :goto_5

    :catch_c
    move-exception v0

    move-wide/from16 v22, v2

    move/from16 v28, v4

    move-object/from16 v30, v6

    :goto_4
    move/from16 v0, v28

    goto :goto_7

    :catch_d
    move-exception v0

    move-wide/from16 v22, v2

    move/from16 v28, v4

    move-object/from16 v30, v6

    :goto_5
    :try_start_12
    iget-object v2, v11, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    const/4 v3, 0x1

    if-le v2, v3, :cond_b

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    move v0, v2

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v9

    move-wide/from16 v2, v20

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    move-wide/from16 v20, v2

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v9

    move-object/from16 v1, v19

    goto/16 :goto_9

    :catchall_3
    move-exception v0

    move-object/from16 v19, v1

    move-wide/from16 v20, v2

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v9

    goto/16 :goto_9

    :cond_c
    move-object/from16 v19, v1

    move-wide/from16 v20, v2

    :goto_7
    if-nez v5, :cond_e

    move-object v2, v1

    move-wide/from16 v4, v20

    :goto_8
    if-nez v0, :cond_d

    :try_start_13
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Nothing pending full backup; rescheduling +"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v31, v4

    iget-object v1, v11, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$4;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    move-wide/from16 v33, v4

    move-wide/from16 v4, v31

    :try_start_14
    invoke-direct {v3, v11, v4, v5}, Lcom/android/server/backup/BackupManagerService$4;-><init>(Lcom/android/server/backup/BackupManagerService;J)V

    invoke-virtual {v1, v3}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    const/4 v1, 0x0

    return v1

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v9

    move-wide/from16 v2, v33

    goto/16 :goto_9

    :catchall_5
    move-exception v0

    move-wide/from16 v33, v4

    move-object v1, v2

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v9

    move-wide/from16 v2, v33

    goto/16 :goto_9

    :cond_d
    move-wide/from16 v33, v4

    :try_start_15
    iget-object v1, v11, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v6, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v3, v5, [Ljava/lang/String;

    iget-object v1, v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "BMS.beginFullBackup()"
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    move-object v1, v11

    move-object/from16 v21, v2

    move-object v2, v4

    move-wide/from16 v22, v33

    move/from16 v4, v16

    move/from16 v16, v5

    move-object/from16 v5, p1

    move-object/from16 v24, v7

    move-object/from16 v7, v17

    move-object/from16 v17, v8

    move-object/from16 v8, v18

    move-wide/from16 v25, v9

    move/from16 v9, v19

    move-object/from16 v10, v20

    :try_start_16
    invoke-static/range {v1 .. v10}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->newWithCurrentTransport(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v1

    iput-object v1, v11, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    iget-object v1, v11, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, v11, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    monitor-exit v24
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    return v16

    :catchall_6
    move-exception v0

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v9

    move-wide/from16 v22, v33

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    goto :goto_9

    :cond_e
    const/16 v16, 0x1

    move-wide/from16 v2, v20

    const/4 v4, 0x0

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v9

    goto :goto_9

    :catchall_9
    move-exception v0

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v9

    :goto_9
    :try_start_17
    monitor-exit v24
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    throw v0

    :catchall_a
    move-exception v0

    goto :goto_9

    :cond_f
    move-wide/from16 v25, v9

    :goto_a
    const/4 v4, 0x0

    return v4

    :catchall_b
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    throw v0
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 6

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginRestoreSession: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " transport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    move-object v2, v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    nop

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asked to restore nonexistent pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "beginRestoreSession"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, "BackupManagerService"

    const-string/jumbo v3, "restoring self on current transport; no permission needed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    if-eqz v2, :cond_2

    const-string v2, "BackupManagerService"

    const-string v3, "Restore session requested but one already active"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-object v1

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    if-eqz v2, :cond_3

    const-string v2, "BackupManagerService"

    const-string v3, "Restore session requested but currently running backups"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-object v1

    :cond_3
    new-instance v1, Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/backup/restore/ActiveRestoreSession;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, p2, v6}, Landroid/app/IActivityManager;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "awaiting agent for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v7, 0x2710

    add-long/2addr v4, v7

    :goto_0
    iget-boolean v7, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v7, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v7, v7, v4

    if-gez v7, :cond_0

    :try_start_2
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v8, 0x1388

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_3
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Interrupted: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    goto :goto_1

    :cond_0
    iget-boolean v6, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    if-ne v6, v2, :cond_1

    const-string v2, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timeout waiting for agent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    :cond_1
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got agent "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    :cond_2
    goto :goto_2

    :catch_1
    move-exception v2

    :goto_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_3

    :try_start_5
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    :cond_3
    :goto_3
    return-object v0

    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2
.end method

.method public cancelBackups()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "cancelBackups"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/internal/Operation;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget v7, v5, Lcom/android/server/backup/internal/Operation;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/server/backup/BackupManagerService;->handleCancel(IZ)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v4, 0x36ee80

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v4, 0x6ddd00

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clearApplicationDataSynchronous(Ljava/lang/String;Z)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_0

    return-void

    :cond_0
    nop

    new-instance v0, Lcom/android/server/backup/internal/ClearDataObserver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/internal/ClearDataObserver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3, p1, p2, v0, v1}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    :goto_1
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v5, v5, v3

    if-gez v5, :cond_1

    :try_start_4
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    goto :goto_1

    :catch_1
    move-exception v5

    :try_start_5
    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z

    goto :goto_2

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :catch_2
    move-exception v0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to clear data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearBackupData() of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v1}, Lcom/android/server/backup/ProcessedPackagesJournal;->getPackagesCopy()Ljava/util/Set;

    move-result-object v1

    :goto_0
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v5, "BMS.clearBackupData()"

    invoke-virtual {v4, p1, v5}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v6, Lcom/android/server/backup/params/ClearRetryParams;

    invoke-direct {v6, p1, p2}, Lcom/android/server/backup/params/ClearRetryParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v6}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/32 v6, 0x36ee80

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v2

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    new-instance v3, Lcom/android/server/backup/-$$Lambda$BackupManagerService$drk8n83Z0hBmm5D4bbaFMr5WuzA;

    invoke-direct {v3, p0, v4}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$drk8n83Z0hBmm5D4bbaFMr5WuzA;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;)V

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v8, 0x4

    new-instance v9, Lcom/android/server/backup/params/ClearParams;

    invoke-direct {v9, v4, v0, v3}, Lcom/android/server/backup/params/ClearParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v7, v8, v9}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v8, v7}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such package \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' - not clearing backup data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clearBackupTrace()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearPendingInits()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public clearRestoreSession(Lcom/android/server/backup/restore/ActiveRestoreSession;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    if-eq p1, v0, :cond_0

    const-string v0, "BackupManagerService"

    const-string v1, "ending non-current restore session"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "BackupManagerService"

    const-string v1, "Clearing restore session and halting timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataChanged but no participant pkg=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$6;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/backup/BackupManagerService$6;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dataChangedImpl(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method public deviceIsEncrypted()Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getEncryptionState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to communicate with storagemanager service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public deviceIsProvisioned()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "BackupManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p3, :cond_5

    :try_start_0
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, p3, v3

    const-string v5, "-h"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, "\'dumpsys backup\' optional arguments:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  -h       : this help text"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  a[gents] : dump information about defined backup agents"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_1
    const-string v5, "agents"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/backup/BackupManagerService;->dumpAgents(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2
    :try_start_2
    const-string/jumbo v5, "transportclients"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p2}, Lcom/android/server/backup/TransportManager;->dumpTransportClients(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_3
    :try_start_3
    const-string/jumbo v5, "transportstats"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p2}, Lcom/android/server/backup/TransportManager;->dumpTransportStats(Ljava/io/PrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_5
    :try_start_4
    invoke-direct {p0, p2}, Lcom/android/server/backup/BackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public endFullBackup()V
    .locals 3

    new-instance v0, Lcom/android/server/backup/BackupManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$5;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    new-instance v1, Ljava/lang/Thread;

    const-string v2, "end-full-backup"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public enqueueFullBackup(Ljava/lang/String;J)V
    .locals 6

    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-wide v4, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    cmp-long v4, v4, p2

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gez v2, :cond_2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "filterAppsEligibleForBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v2, "BMS.filterAppsEligibleForBackup"

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v3

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    array-length v5, p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, p1, v6

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v3, v7, v8}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .locals 19

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "fullTransportBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    if-nez v13, :cond_2

    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Lcom/android/server/backup/BackupManagerService;->fullBackupAllowable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BackupManagerService"

    const-string v1, "Full backup not currently possible -- key/value backup not yet run?"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    const-string v0, "BackupManagerService"

    const-string v1, "fullTransportBackup()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v9, v0

    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v15, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    const-string v16, "BMS.fullTransportBackup()"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v1, v11

    move-object v3, v12

    move-object v6, v15

    move-wide/from16 v17, v9

    move v9, v0

    move-object/from16 v10, v16

    :try_start_1
    invoke-static/range {v1 .. v10}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->newWithCurrentTransport(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v0

    move-object v1, v0

    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v0, Ljava/lang/Thread;

    const-string v2, "full-transport-master"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v15}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    array-length v0, v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    :try_start_4
    aget-object v5, v12, v4

    invoke-virtual {v11, v5, v2, v3}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-wide/from16 v2, v17

    goto :goto_3

    :cond_1
    move-wide/from16 v2, v17

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :goto_2
    const-string v0, "BackupManagerService"

    const-string v1, "Done with full transport backup."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    move-wide/from16 v2, v17

    nop

    move-wide/from16 v17, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide/from16 v2, v17

    goto :goto_3

    :catchall_2
    move-exception v0

    move-wide v2, v9

    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore supported only for the device owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateRandomIntegerToken()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    if-gez v0, :cond_0

    neg-int v0, v0

    :cond_0
    and-int/lit16 v0, v0, -0x100

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-object v0
.end method

.method public getActivityManager()Landroid/app/IActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method public getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/params/AdbParams;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object v0
.end method

.method public getAlarmManager()Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method public getAncestralPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    return-object v0
.end method

.method public getAncestralToken()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    return-wide v0
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 7

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getAvailableRestoreToken"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-wide v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/ProcessedPackagesJournal;->hasBeenProcessed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    move-wide v0, v3

    :cond_0
    monitor-exit v2

    return-wide v0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getBackupHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-object v0
.end method

.method public getBackupManagerBinder()Landroid/app/backup/IBackupManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method public getBaseStateDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    return-object v0
.end method

.method public getClearDataLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getConfigurationIntent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get configuration intent from transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getConstants()Lcom/android/server/backup/BackupManagerConstants;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentOpLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentOperations()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/internal/Operation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getCurrentToken()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    return-wide v0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getDataManagementIntent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get management intent from transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getDataManagementLabel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get management label from transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getDestinationString"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get destination string from transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getJournal()Lcom/android/server/backup/DataChangedJournal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    return-object v0
.end method

.method public getLastBackupPass()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService;->mLastBackupPass:J

    return-wide v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public getPackageManagerBinder()Landroid/content/pm/IPackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method public getPendingBackups()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPendingInits()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPendingRestores()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPendingRestores:Ljava/util/Queue;

    return-object v0
.end method

.method public getQueueLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getRng()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getRunInitIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRunningFullBackupTask()Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    return-object v0
.end method

.method public getTransportManager()Lcom/android/server/backup/TransportManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object v0
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getTransportWhitelist()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getWakelock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public handleCancel(IZ)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/internal/Operation;

    move-object v0, v2

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/android/server/backup/internal/Operation;->state:I

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v2, "BackupManagerService"

    const-string v4, "Operation already got an ack.Should have been removed from mCurrentOperations."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cancel: token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, v0, Lcom/android/server/backup/internal/Operation;->state:I

    iget v2, v0, Lcom/android/server/backup/internal/Operation;->type:I

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/android/server/backup/internal/Operation;->type:I

    if-ne v2, v4, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget v4, v0, Lcom/android/server/backup/internal/Operation;->type:I

    invoke-direct {p0, v4}, Lcom/android/server/backup/BackupManagerService;->getMessageIdForOperationType(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    invoke-interface {v1, p2}, Lcom/android/server/backup/BackupRestoreTask;->handleCancel(Z)V

    :cond_4
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public hasBackupPassword()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupPasswordManager;->hasBackupPassword()Z

    move-result v0

    return v0
.end method

.method public initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "initializeTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initializeTransport(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v2, Lcom/android/server/backup/-$$Lambda$BackupManagerService$uWCtISrzNRpV2diTzD5MWI0bdDM;

    invoke-direct {v2, p0}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$uWCtISrzNRpV2diTzD5MWI0bdDM;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v4, Lcom/android/server/backup/internal/PerformInitializeTask;

    invoke-direct {v4, p0, p1, p2, v2}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "isAppEligibleForBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v2, "BMS.isAppEligibleForBackup"

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v3, p1, v4}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v4

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isBackupEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    return v0
.end method

.method public isBackupOperationInProgress()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/internal/Operation;

    iget v4, v3, Lcom/android/server/backup/internal/Operation;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget v4, v3, Lcom/android/server/backup/internal/Operation;->state:I

    if-nez v4, :cond_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBackupRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    return v0
.end method

.method public isClearingData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    return v0
.end method

.method public isRestoreInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mIsRestoreInProgress:Z

    return v0
.end method

.method public listAllTransportComponents()[Landroid/content/ComponentName;
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "listAllTransportComponents"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponents()[Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "listAllTransports"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logBackupComplete(Ljava/lang/String;)V
    .locals 7

    const-string v0, "@pm@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getBackupFinishedNotificationReceivers()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.BACKUP_FINISHED"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v5, 0x10000020

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "packageName"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/ProcessedPackagesJournal;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method public makeMetadataAgent()Lcom/android/server/backup/PackageManagerBackupAgent;
    .locals 2

    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;)V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->attach(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->onCreate()V

    return-object v0
.end method

.method public makeMetadataAgent(Ljava/util/List;)Lcom/android/server/backup/PackageManagerBackupAgent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Lcom/android/server/backup/PackageManagerBackupAgent;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->attach(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->onCreate()V

    return-object v0
.end method

.method public opComplete(IJ)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/internal/Operation;

    move-object v0, v2

    if-eqz v0, :cond_2

    iget v2, v0, Lcom/android/server/backup/internal/Operation;->state:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/android/server/backup/internal/Operation;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received duplicate ack for token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/android/server/backup/internal/Operation;->state:I

    if-nez v2, :cond_2

    iput v3, v0, Lcom/android/server/backup/internal/Operation;->state:I

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v1}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V
    .locals 4

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    if-eq p5, v0, :cond_0

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareOperationTimeout() doesn\'t support operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/backup/internal/Operation;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p4, p5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {p0, p5}, Lcom/android/server/backup/BackupManagerService;->getMessageIdForOperationType(I)I

    move-result v2

    invoke-virtual {v1, v2, p1, v3, p4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public randomBytes(I)[B
    .locals 2

    div-int/lit8 v0, p1, 0x8

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v1, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "_need_init_"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    goto :goto_1

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeOperation(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate remove for operation. token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/backup/BackupManagerService;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    return v0
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string/jumbo v4, "requestBackup"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0x3e8

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_8

    array-length v0, v2

    if-lt v0, v6, :cond_8

    iget-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    const/16 v8, -0x7d1

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v5, v1, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v9, "BMS.requestBackup()"

    invoke-virtual {v0, v9}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClientOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v15, v0

    nop

    nop

    new-instance v11, Lcom/android/server/backup/-$$Lambda$BackupManagerService$d1gjNfZ3ZYIuaY4s01CFoLZa4Z0;

    invoke-direct {v11, v1, v15}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$d1gjNfZ3ZYIuaY4s01CFoLZa4Z0;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    array-length v3, v2

    const/16 v16, 0x0

    move/from16 v4, v16

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v12, v2, v4

    const-string v0, "@pm@"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v6, 0x8000000

    invoke-virtual {v0, v12, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v6, v7}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v13, v12, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    const/16 v6, -0x7d2

    invoke-static {v13, v12, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/16 v0, 0xb0c

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v16

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    move/from16 v12, v16

    :goto_3
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v8, Lcom/android/server/backup/params/BackupParams;

    const/16 v17, 0x1

    move-object v3, v8

    move-object v4, v15

    move-object v6, v9

    move-object v7, v10

    move-object v2, v8

    move-object v8, v13

    move-object/from16 v18, v9

    move-object v9, v14

    move-object/from16 v19, v10

    move-object v10, v11

    move-object/from16 v20, v11

    move/from16 v11, v17

    invoke-direct/range {v3 .. v12}, Lcom/android/server/backup/params/BackupParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZZ)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    return v16

    :catch_1
    move-exception v0

    invoke-static {v13, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    const/16 v2, 0x32

    const/4 v5, 0x1

    invoke-static {v14, v2, v4, v5, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    return v3

    :cond_6
    :goto_4
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup requested but e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v13, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    iget-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto :goto_5

    :cond_7
    const/16 v0, 0xe

    :goto_5
    const/4 v2, 0x3

    invoke-static {v14, v0, v4, v2, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    return v8

    :cond_8
    const-string v0, "BackupManagerService"

    const-string v2, "No packages named for backup request"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v13, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    const/16 v0, 0x31

    const/4 v2, 0x1

    invoke-static {v14, v0, v4, v2, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No packages are provided for backup"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public resetBackupState(Ljava/io/File;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v1}, Lcom/android/server/backup/ProcessedPackagesJournal;->reset()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_need_init_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    nop

    :goto_1
    move v2, v3

    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .locals 13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system process uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " attemping install-time restore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v9

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreAtInstall pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " restoreSet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v2, "BMS.restoreAtInstall()"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v11

    if-nez v11, :cond_2

    const-string v1, "BackupManagerService"

    const-string v2, "No transport client"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    if-nez v1, :cond_3

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-restorable state: auto="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v8, Lcom/android/server/backup/-$$Lambda$BackupManagerService$XAHW8jFVbxm2U5esUnLTgJC_Z6Y;

    invoke-direct {v8, p0, v11}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$XAHW8jFVbxm2U5esUnLTgJC_Z6Y;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;)V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v12, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v11

    move-wide v4, v9

    move-object v6, p1

    move v7, p2

    invoke-static/range {v1 .. v8}, Lcom/android/server/backup/params/RestoreParams;->createForRestoreAtInstall(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLjava/lang/String;ILcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object v1

    iput-object v1, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v1, v12}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to contact transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_4
    :goto_0
    if-eqz v0, :cond_6

    if-eqz v11, :cond_5

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v2, "BMS.restoreAtInstall()"

    invoke-virtual {v1, v11, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    :cond_5
    const-string v1, "BackupManagerService"

    const-string v2, "Finishing install immediately"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :cond_6
    :goto_1
    return-void
.end method

.method public restoreWidgetData(Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->restoreWidgetState(Ljava/lang/String;[BI)V

    return-void
.end method

.method public scheduleNextFullBackupJob(J)V
    .locals 18

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-wide v3, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupIntervalMilliseconds()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    sub-long v9, v7, v5

    goto :goto_0

    :cond_0
    const-wide/16 v9, 0x0

    :goto_0
    move-wide/from16 v11, p1

    :try_start_1
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    new-instance v0, Lcom/android/server/backup/BackupManagerService$3;

    invoke-direct {v0, v1, v13, v14}, Lcom/android/server/backup/BackupManagerService$3;-><init>(Lcom/android/server/backup/BackupManagerService;J)V

    iget-object v15, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    move-wide/from16 v16, v3

    const-wide/16 v3, 0x9c4

    invoke-virtual {v15, v0, v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    move-wide/from16 v11, p1

    const-string v0, "BackupManagerService"

    const-string v3, "Full backup queue empty; not scheduling"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-wide/from16 v11, p1

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "selectBackupTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isAllowedByMandatoryBackupTransportPolicy(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BackupManagerService"

    const-string v1, "Failed to select transport - disallowed by device owner policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->updateStateForTransport(Ljava/lang/String;)V

    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectBackupTransport(transport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "): previous transport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "selectBackupTransportAsync"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isAllowedByMandatoryBackupTransportPolicy(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "BackupManagerService"

    const-string v1, "Failed to select transport - disallowed by device owner policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x7d1

    invoke-interface {p2, v0}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "ISelectBackupTransportCallback listener not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectBackupTransportAsync(transport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v4, Lcom/android/server/backup/-$$Lambda$BackupManagerService$DOiHwWNGzZZlYYmgVyeCon2E8lc;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$DOiHwWNGzZZlYYmgVyeCon2E8lc;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setActiveRestoreSession(Lcom/android/server/backup/restore/ActiveRestoreSession;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-void
.end method

.method public setActivityManager(Landroid/app/IActivityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-void
.end method

.method public setAlarmManager(Landroid/app/AlarmManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public setAncestralPackages(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    return-void
.end method

.method public setAncestralToken(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    return-void
.end method

.method public setAutoRestore(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setAutoRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto restore => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_auto_restore"

    nop

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setBackupEnabled(Z)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupPolicyEnforcer:Lcom/android/server/backup/BackupPolicyEnforcer;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupPolicyEnforcer;->getMandatoryBackupTransport()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "BackupManagerService"

    const-string v1, "Cannot disable backups when the mandatory backups policy is active."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup enabled => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    :try_start_1
    invoke-static {p1, v3}, Lcom/android/server/backup/BackupManagerService;->writeBackupEnableState(ZI)V

    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_1

    if-nez v2, :cond_1

    :try_start_3
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v5, :cond_1

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v3, v5}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    const-wide/16 v5, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_1
    if-nez p1, :cond_3

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;)V

    if-eqz v2, :cond_3

    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    new-instance v8, Lcom/android/server/backup/-$$Lambda$BackupManagerService$Yom7ZUYhsBBc6e92Mh_gepfydaQ;

    invoke-direct {v8, p0, v5, v6}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$Yom7ZUYhsBBc6e92Mh_gepfydaQ;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Lcom/android/server/backup/TransportManager;->forEachRegisteredTransport(Ljava/util/function/Consumer;)V

    move v7, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    nop

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {p0, v10, v8, v9}, Lcom/android/server/backup/BackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v3, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_3
    :goto_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setBackupHandler(Lcom/android/server/backup/internal/BackupHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-void
.end method

.method public setBackupManagerBinder(Landroid/app/backup/IBackupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupPasswordManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBackupProvisioned(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setBackupProvisioned"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBackupRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    return-void
.end method

.method public setBaseStateDir(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    return-void
.end method

.method public setClearingData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setCurrentToken(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    return-void
.end method

.method public setDataDir(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    return-void
.end method

.method public setJournal(Lcom/android/server/backup/DataChangedJournal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    return-void
.end method

.method public setLastBackupPass(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/backup/BackupManagerService;->mLastBackupPass:J

    return-void
.end method

.method public setPackageManager(Landroid/content/pm/PackageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public setPackageManagerBinder(Landroid/content/pm/IPackageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method public setPendingBackups(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    return-void
.end method

.method public setProvisioned(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    return-void
.end method

.method public setRestoreInProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mIsRestoreInProgress:Z

    return-void
.end method

.method public setRunInitIntent(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    return-void
.end method

.method public setWakelock(Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_1

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.backupconfirm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unlockSystemUser()V
    .locals 9

    const-string v0, "backup migrate"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->backupSettingMigrated(I)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "BackupManagerService"

    const-string v4, "Backup enable apparently not migrated"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    iget-object v3, v3, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "backup_enabled"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ltz v4, :cond_2

    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Migrating enable state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    if-eqz v4, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v0

    :goto_0
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v7, v0

    :goto_1
    invoke-static {v7, v0}, Lcom/android/server/backup/BackupManagerService;->writeBackupEnableState(ZI)V

    const-string v5, "backup_enabled"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_2
    const-string v5, "BackupManagerService"

    const-string v6, "Backup not yet configured; retaining null enable state"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const-string v3, "backup enable"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->readBackupEnableState(I)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/backup/Trampoline;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string/jumbo v3, "updateTransportAttributes"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "transportComponent can\'t be null"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "name can\'t be null"

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currentDestinationString can\'t be null"

    move-object/from16 v11, p5

    invoke-static {v11, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p6, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez p7, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    const-string v3, "dataManagementLabel should be null iff dataManagementIntent is null"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move v12, p1

    if-ne v12, v0, :cond_3

    nop

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v7, v2

    :try_start_1
    iget-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v9

    move-object v4, v10

    move-object/from16 v5, p4

    move-object v6, v11

    move-wide v9, v7

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    :try_start_2
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/backup/TransportManager;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-wide v9, v7

    :goto_3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_3
    :try_start_3
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only the transport can change its description"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move v12, p1

    :goto_4
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Transport package not found"

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8

    nop

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/backup/BackupManagerService;->updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public waitUntilOperationComplete(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v2

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/internal/Operation;

    move-object v1, v3

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget v3, v1, Lcom/android/server/backup/internal/Operation;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    goto :goto_0

    :cond_1
    :try_start_2
    iget v3, v1, Lcom/android/server/backup/internal/Operation;->state:I

    move v0, v3

    nop

    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget v3, v1, Lcom/android/server/backup/internal/Operation;->type:I

    invoke-direct {p0, v3}, Lcom/android/server/backup/BackupManagerService;->getMessageIdForOperationType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    return v2

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public writeRestoreTokens()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    const-string/jumbo v2, "rwd"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ancestral packages:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_2
    invoke-static {v1, v0}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-static {v1, v0}, Lcom/android/server/backup/BackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "Unable to write token file:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method
