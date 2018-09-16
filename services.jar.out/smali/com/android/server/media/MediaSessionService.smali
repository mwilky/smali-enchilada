.class public Lcom/android/server/media/MediaSessionService;
.super Lcom/android/server/SystemService;
.source "MediaSessionService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;,
        Lcom/android/server/media/MediaSessionService$ControllerCallback;,
        Lcom/android/server/media/MediaSessionService$MessageHandler;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl;,
        Lcom/android/server/media/MediaSessionService$SettingsObserver;,
        Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;,
        Lcom/android/server/media/MediaSessionService$FullUserRecord;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final DEBUG_KEY_EVENT:Z = true

.field private static final MEDIA_KEY_LISTENER_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MediaSessionService"

.field static final USE_MEDIA2_APIS:Z = false

.field private static final WAKELOCK_TIMEOUT:I = 0x1388


# instance fields
.field private mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field private mAudioService:Landroid/media/IAudioService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

.field private final mFullUserIds:Landroid/util/SparseIntArray;

.field private mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

.field private final mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

.field private mHasFeatureLeanback:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLock:Ljava/lang/Object;

.field private final mLongPressTimeout:I

.field private final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mNotificationManager:Landroid/app/INotificationManager;

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private mRvc:Landroid/media/IRemoteVolumeController;

.field private final mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field private final mSessionRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/SessionToken2;",
            "Landroid/media/MediaController2;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionTokensListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionsListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

.field private final mUserRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/media/MediaSessionService$FullUserRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 106
    const-string v0, "MediaSessionService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 146
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionRecords:Ljava/util/Map;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionTokensListeners:Ljava/util/List;

    .line 152
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 153
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 154
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "handleMediaEvent"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 155
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    iput v1, p0, Lcom/android/server/media/MediaSessionService;->mLongPressTimeout:I

    .line 156
    const-string/jumbo v1, "notification"

    .line 157
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 156
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/INotificationManager;

    .line 158
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 159
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/media/MediaSessionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->buildMediaSessionService2List()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Lcom/android/server/media/MediaSessionRecord;

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # I

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getCallingPackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/media/MediaSessionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/media/MediaSessionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateActiveSessionListeners()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/media/session/ISessionCallback;
    .param p6, "x6"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService;->createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/media/MediaSessionService;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # I

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getActiveSessionsLocked(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Landroid/media/session/IActiveSessionsListener;

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # I

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/media/MediaSessionService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    iget v0, p0, Lcom/android/server/media/MediaSessionService;->mLongPressTimeout:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->dispatchVolumeKeyLongPressLocked(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService;->enforceSystemUiPermission(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$4102(Lcom/android/server/media/MediaSessionService;Landroid/media/IRemoteVolumeController;)Landroid/media/IRemoteVolumeController;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Landroid/media/IRemoteVolumeController;

    .line 103
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/media/MediaSessionService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionRecords:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/media/MediaSessionService;Landroid/media/SessionToken2;Landroid/media/MediaController2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Landroid/media/SessionToken2;
    .param p2, "x2"    # Landroid/media/MediaController2;

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->addSessionRecordLocked(Landroid/media/SessionToken2;Landroid/media/MediaController2;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/media/MediaSessionService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # I

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->postSessionTokensUpdated(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionTokensListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Landroid/content/ComponentName;III)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/media/MediaSessionService;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->isCurrentVolumeController(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/media/MediaSessionService;)Landroid/app/INotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/INotificationManager;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/media/MediaSessionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .line 103
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService;->mHasFeatureLeanback:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/media/MediaSessionService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # I

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushSessionsChanged(I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/media/MediaSessionService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # I

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushSessionTokensChanged(I)V

    return-void
.end method

.method private addSessionRecordLocked(Landroid/media/SessionToken2;)Z
    .locals 1
    .param p1, "token"    # Landroid/media/SessionToken2;

    .line 2310
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/MediaSessionService;->addSessionRecordLocked(Landroid/media/SessionToken2;Landroid/media/MediaController2;)Z

    move-result v0

    return v0
.end method

.method private addSessionRecordLocked(Landroid/media/SessionToken2;Landroid/media/MediaController2;)Z
    .locals 1
    .param p1, "token"    # Landroid/media/SessionToken2;
    .param p2, "controller"    # Landroid/media/MediaController2;

    .line 2314
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 2316
    const/4 v0, 0x0

    return v0

    .line 2319
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionRecords:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2320
    const/4 v0, 0x1

    return v0
.end method

.method private buildMediaSessionService2List()V
    .locals 0

    .line 514
    return-void
.end method

.method private createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    .locals 2
    .param p1, "callerPid"    # I
    .param p2, "callerUid"    # I
    .param p3, "userId"    # I
    .param p4, "callerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 670
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService;->createSessionLocked(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 671
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createSessionLocked(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    .locals 13
    .param p1, "callerPid"    # I
    .param p2, "callerUid"    # I
    .param p3, "userId"    # I
    .param p4, "callerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;

    move-object v10, p0

    move/from16 v11, p3

    .line 683
    invoke-direct {v10, v11}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v12

    .line 684
    .local v12, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v12, :cond_1

    .line 689
    new-instance v0, Lcom/android/server/media/MediaSessionRecord;

    iget-object v1, v10, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 690
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, v11

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionRecord;-><init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;)V

    move-object v1, v0

    .line 692
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    :try_start_0
    invoke-interface/range {p5 .. p5}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    nop

    .line 697
    invoke-static {v12}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionStack;->addSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 698
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {v0, v11}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    .line 700
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 701
    const-string v0, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with tag "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 703
    :cond_0
    move-object/from16 v3, p4

    move-object/from16 v4, p6

    :goto_0
    return-object v1

    .line 693
    :catch_0
    move-exception v0

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    .line 694
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v5, "Media Session owner died prematurely."

    invoke-direct {v2, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 685
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    :cond_1
    move-object/from16 v3, p4

    move-object/from16 v4, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request from invalid user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Session request from invalid user."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .line 424
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 425
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 428
    .local v0, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-ne v1, p1, :cond_1

    .line 429
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 430
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 431
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    goto :goto_0

    .line 434
    :cond_1
    if-eqz v0, :cond_2

    .line 435
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionStack;->removeSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 440
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getCallback()Landroid/media/session/ISessionCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    goto :goto_1

    .line 441
    :catch_0
    move-exception v1

    .line 444
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->onDestroy()V

    .line 445
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    .line 446
    return-void
.end method

.method private dispatchVolumeKeyLongPressLocked(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 785
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 786
    return-void

    .line 789
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/session/IOnVolumeKeyLongPressListener;->onVolumeKeyLongPress(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    goto :goto_0

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to volume key long-press listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private enforceMediaPermissions(Landroid/content/ComponentName;III)V
    .locals 2
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "resolvedUserId"    # I

    .line 616
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionService;->isCurrentVolumeController(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 617
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 618
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    .line 620
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/media/MediaSessionService;->isEnabledNotificationListener(Landroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 622
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Missing permission to control media."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_2
    :goto_0
    return-void
.end method

.method private enforcePackageName(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 591
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 594
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "packages":[Ljava/lang/String;
    array-length v1, v0

    .line 596
    .local v1, "packageCount":I
    const/4 v2, 0x0

    .line 596
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 597
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 598
    return-void

    .line 596
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 601
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "packageName is not owned by the calling process"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 592
    .end local v0    # "packages":[Ljava/lang/String;
    .end local v1    # "packageCount":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSystemUiPermission(Ljava/lang/String;II)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 632
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionService;->isCurrentVolumeController(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    return-void

    .line 633
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only system ui may "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;

    .line 707
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 708
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$900(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 709
    return v0

    .line 707
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 712
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getActiveSessionsLocked(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 250
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 251
    .local v3, "size":I
    move v4, v1

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 252
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 254
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_0
    goto :goto_1

    .line 255
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v3

    .line 256
    .local v3, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-nez v3, :cond_2

    .line 257
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSessions failed. Unknown user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-object v0

    .line 260
    :cond_2
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    .end local v3    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :goto_1
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 266
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 267
    :cond_3
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 269
    :cond_4
    return-object v0
.end method

.method private getAudioService()Landroid/media/IAudioService;
    .locals 2

    .line 198
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 199
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    return-object v1
.end method

.method private getCallingPackageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "uid"    # I

    .line 777
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 779
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 781
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method private getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .locals 2
    .param p1, "userId"    # I

    .line 796
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 797
    .local v0, "fullUserId":I
    if-gez v0, :cond_0

    .line 798
    const/4 v1, 0x0

    return-object v1

    .line 800
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    return-object v1
.end method

.method private isCurrentVolumeController(II)Z
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 627
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEnabledNotificationListener(Landroid/content/ComponentName;II)Z
    .locals 4
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "forUserId"    # I

    .line 649
    const/4 v0, 0x0

    if-eq p2, p3, :cond_0

    .line 651
    return v0

    .line 653
    :cond_0
    sget-boolean v1, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 654
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking if enabled notification listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_1
    if-eqz p1, :cond_2

    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 660
    :catch_0
    move-exception v1

    .line 661
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaSessionService"

    const-string v3, "Dead NotificationManager in isEnabledNotificationListener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    return v0
.end method

.method private isGlobalPriorityActiveLocked()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$onStart$0(Lcom/android/server/media/MediaSessionService;Landroid/media/AudioPlaybackConfiguration;Z)V
    .locals 3
    .param p1, "config"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "isRemoved"    # Z

    .line 171
    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    nop

    .line 177
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 176
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 178
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v1, :cond_1

    .line 179
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    .line 181
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_1
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 173
    :cond_2
    :goto_0
    return-void
.end method

.method private postSessionTokensUpdated(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2280
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2281
    return-void
.end method

.method private pushRemoteVolumeUpdateLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 745
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    if-eqz v0, :cond_2

    .line 747
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 748
    .local v0, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-nez v0, :cond_0

    .line 749
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pushRemoteVolumeUpdateLocked failed. No user with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void

    .line 752
    :cond_0
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionStack;->getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    .line 753
    .local v1, "record":Lcom/android/server/media/MediaSessionRecord;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    if-nez v1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v3

    :goto_0
    invoke-interface {v2, v3}, Landroid/media/IRemoteVolumeController;->updateRemoteController(Landroid/media/session/ISessionController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    .end local v0    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    goto :goto_1

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionService"

    const-string v2, "Error sending default remote volume to sys ui."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return-void
.end method

.method private pushSessionTokensChanged(I)V
    .locals 8
    .param p1, "userId"    # I

    .line 2284
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2285
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2286
    .local v1, "tokens":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSessionRecords:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/SessionToken2;

    .line 2290
    .local v3, "token":Landroid/media/SessionToken2;
    invoke-virtual {v3}, Landroid/media/SessionToken2;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v5, p1, :cond_0

    if-ne v4, p1, :cond_1

    .line 2292
    :cond_0
    invoke-virtual {v3}, Landroid/media/SessionToken2;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2294
    .end local v3    # "token":Landroid/media/SessionToken2;
    :cond_1
    goto :goto_0

    .line 2296
    :cond_2
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSessionTokensListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;

    .line 2298
    .local v3, "record":Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->access$6400(Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;)I

    move-result v5

    if-eq v5, p1, :cond_3

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->access$6400(Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v4, :cond_4

    .line 2300
    :cond_3
    :try_start_1
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->access$4700(Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;)Landroid/media/ISessionTokensListener;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/media/ISessionTokensListener;->onSessionTokensChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2303
    goto :goto_2

    .line 2301
    :catch_0
    move-exception v5

    .line 2302
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MediaSessionService"

    const-string v7, "Failed to notify session tokens changed"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2305
    .end local v3    # "record":Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_2
    goto :goto_1

    .line 2306
    .end local v1    # "tokens":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_5
    monitor-exit v0

    .line 2307
    return-void

    .line 2306
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushSessionsChanged(I)V
    .locals 10
    .param p1, "userId"    # I

    .line 716
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 717
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 718
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-nez v1, :cond_0

    .line 719
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pushSessionsChanged failed. No user with id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    monitor-exit v0

    return-void

    .line 722
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getActiveSessionsLocked(I)Ljava/util/List;

    move-result-object v2

    .line 723
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 724
    .local v3, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v4, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    const/4 v5, 0x0

    .line 725
    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 726
    new-instance v6, Landroid/media/session/MediaSession$Token;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v7}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 728
    .end local v5    # "i":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    .line 729
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 729
    .restart local v5    # "i":I
    :goto_1
    if-ltz v5, :cond_4

    .line 730
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .line 731
    .local v6, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$800(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$800(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v7, p1, :cond_3

    .line 733
    :cond_2
    :try_start_1
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$900(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 738
    goto :goto_2

    .line 734
    :catch_0
    move-exception v7

    .line 735
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v8, "MediaSessionService"

    const-string v9, "Dead ActiveSessionsListener in pushSessionsChanged, removing"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    iget-object v8, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 729
    .end local v6    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 741
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    .end local v3    # "size":I
    .end local v4    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    .end local v5    # "i":I
    :cond_4
    monitor-exit v0

    .line 742
    return-void

    .line 741
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private registerPackageBroadcastReceivers()V
    .locals 7

    .line 453
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 454
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 455
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/MediaSessionService$1;

    invoke-direct {v2, p0}, Lcom/android/server/media/MediaSessionService$1;-><init>(Lcom/android/server/media/MediaSessionService;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 509
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 464
    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 510
    return-void
.end method

.method private removeSessionRecordLocked(Landroid/media/SessionToken2;)Z
    .locals 1
    .param p1, "token"    # Landroid/media/SessionToken2;

    .line 2324
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2326
    const/4 v0, 0x0

    return v0

    .line 2329
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2330
    const/4 v0, 0x1

    return v0
.end method

.method private updateActiveSessionListeners()V
    .locals 7

    .line 393
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 395
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .local v2, "listener":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$500(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$600(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v4

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$700(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v5

    .line 398
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$800(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v6

    .line 397
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Landroid/content/ComponentName;III)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    goto :goto_1

    .line 399
    :catch_0
    move-exception v3

    .line 400
    .local v3, "e":Ljava/lang/SecurityException;
    :try_start_2
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActiveSessionsListener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$500(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is no longer authorized. Disconnecting."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    :try_start_3
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$900(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 405
    invoke-interface {v4, v5}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 408
    goto :goto_1

    .line 406
    :catch_1
    move-exception v4

    .line 394
    .end local v2    # "listener":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 411
    .end local v1    # "i":I
    :cond_0
    :try_start_4
    monitor-exit v0

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private updateUser()V
    .locals 9

    .line 364
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 366
    .local v1, "manager":Landroid/os/UserManager;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 367
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 368
    .local v2, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v2, :cond_2

    .line 369
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 370
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 371
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 373
    :cond_0
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 374
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 375
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    new-instance v7, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v7, p0, v8}, Lcom/android/server/media/MediaSessionService$FullUserRecord;-><init>(Lcom/android/server/media/MediaSessionService;I)V

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    :goto_1
    goto :goto_0

    .line 381
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 382
    .local v3, "currentFullUserId":I
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    iput-object v4, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 383
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    if-nez v4, :cond_3

    .line 384
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find FullUserInfo for the current user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v4, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-direct {v4, p0, v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;-><init>(Lcom/android/server/media/MediaSessionService;I)V

    iput-object v4, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 386
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 388
    :cond_3
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 389
    .end local v1    # "manager":Landroid/os/UserManager;
    .end local v2    # "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "currentFullUserId":I
    monitor-exit v0

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method destroySession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .line 358
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 360
    monitor-exit v0

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method destroySession2Internal(Landroid/media/SessionToken2;)V
    .locals 3
    .param p1, "token"    # Landroid/media/SessionToken2;

    .line 804
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    const/4 v1, 0x0

    .line 806
    .local v1, "notifySessionTokensUpdated":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/media/SessionToken2;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 807
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->removeSessionRecordLocked(Landroid/media/SessionToken2;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    .line 809
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->addSessionRecordLocked(Landroid/media/SessionToken2;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 811
    :goto_0
    if-eqz v1, :cond_1

    .line 812
    invoke-virtual {p1}, Landroid/media/SessionToken2;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/media/MediaSessionService;->postSessionTokensUpdated(I)V

    .line 814
    .end local v1    # "notifySessionTokensUpdated":Z
    :cond_1
    monitor-exit v0

    .line 815
    return-void

    .line 814
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected enforcePhoneStatePermission(II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 345
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 349
    return-void

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold the MODIFY_PHONE_STATE permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public monitor()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_0
    monitor-exit v0

    .line 342
    return-void

    .line 341
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .line 276
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 280
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/media/IRemoteVolumeController;->remoteVolumeChanged(Landroid/media/session/ISessionController;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MediaSessionService"

    const-string v2, "Error sending volume change to system UI."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 277
    :cond_1
    :goto_1
    return-void
.end method

.method public onMediaButtonReceiverChanged(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .line 766
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 767
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 768
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    nop

    .line 769
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionStack;->getMediaButtonSession()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    .line 770
    .local v2, "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    if-ne p1, v2, :cond_0

    .line 771
    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 773
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v2    # "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    :cond_0
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

.method public onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .line 298
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 300
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    .line 305
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    monitor-exit v0

    .line 306
    return-void

    .line 301
    .restart local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_1
    :goto_0
    const-string v2, "MediaSessionService"

    const-string v3, "Unknown session changed playback type. Ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    monitor-exit v0

    return-void

    .line 305
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSessionPlaystateChanged(Lcom/android/server/media/MediaSessionRecord;II)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 287
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 289
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/media/MediaSessionStack;->onPlaystateChanged(Lcom/android/server/media/MediaSessionRecord;II)V

    .line 294
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    monitor-exit v0

    .line 295
    return-void

    .line 290
    .restart local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_1
    :goto_0
    const-string v2, "MediaSessionService"

    const-string v3, "Unknown session changed playback state. Ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    monitor-exit v0

    return-void

    .line 294
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStart()V
    .locals 3

    .line 163
    const-string/jumbo v0, "media_session"

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/media/MediaSessionService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 164
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 165
    nop

    .line 166
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 167
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;

    .line 168
    invoke-static {}, Lcom/android/server/media/AudioPlayerStateMonitor;->getInstance()Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 169
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    new-instance v1, Lcom/android/server/media/-$$Lambda$MediaSessionService$za_9dlUSlnaiZw6eCdPVEZq0XLw;

    invoke-direct {v1, p0}, Lcom/android/server/media/-$$Lambda$MediaSessionService$za_9dlUSlnaiZw6eCdPVEZq0XLw;-><init>(Lcom/android/server/media/MediaSessionService;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/media/AudioPlayerStateMonitor;->registerListener(Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;Landroid/os/Handler;)V

    .line 183
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;

    invoke-virtual {v0, v1}, Lcom/android/server/media/AudioPlayerStateMonitor;->registerSelfIntoAudioServiceIfNeeded(Landroid/media/IAudioService;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    .line 185
    new-instance v0, Lcom/android/server/media/MediaSessionService$SettingsObserver;

    invoke-direct {v0, p0, v2}, Lcom/android/server/media/MediaSessionService$SettingsObserver;-><init>(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionService$1;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

    .line 186
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SettingsObserver;->access$100(Lcom/android/server/media/MediaSessionService$SettingsObserver;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService;->mHasFeatureLeanback:Z

    .line 190
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 192
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->registerPackageBroadcastReceivers()V

    .line 194
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->buildMediaSessionService2List()V

    .line 195
    return-void
.end method

.method public onStartUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 310
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 312
    return-void
.end method

.method public onStopUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 322
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 325
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v1, :cond_2

    .line 326
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 327
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->destroySessionsForUserLocked(I)V

    .line 328
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->destroySessionsForUserLocked(I)V

    .line 333
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 334
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSwitchUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 316
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 318
    return-void
.end method

.method sessionDied(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .line 352
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 354
    monitor-exit v0

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setGlobalPrioritySession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 5
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .line 230
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 232
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eq v2, p1, :cond_0

    .line 233
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Global priority session is changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 236
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->removeSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 244
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_0
    monitor-exit v0

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 6
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .line 207
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 209
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-nez v1, :cond_0

    .line 210
    const-string v2, "MediaSessionService"

    const-string v3, "Unknown session updated. Ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    monitor-exit v0

    return-void

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getFlags()J

    move-result-wide v2

    const-wide/32 v4, 0x10000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 215
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Global priority session is updated, active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 220
    const-string v2, "MediaSessionService"

    const-string v3, "Unknown session updated. Ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    monitor-exit v0

    return-void

    .line 223
    :cond_2
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V

    .line 225
    :goto_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    .line 226
    .end local v1    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
