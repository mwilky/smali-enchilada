.class public Lcom/oneplus/aod/AodUpdateMonitor;
.super Ljava/lang/Object;
.source "AodUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;,
        Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;,
        Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;
    }
.end annotation


# static fields
.field private static final RESULT_FAR:I = 0x2

.field private static final RESULT_NEAR:I = 0x1

.field private static final RESULT_UNKNOWN:I

.field public static STATE_DOZING:I

.field public static STATE_IDLE:I

.field public static STATE_PULSING:I

.field private static sDeviceTag:Ljava/lang/String;

.field private static sInstance:Lcom/oneplus/aod/AodUpdateMonitor;


# instance fields
.field private ACTION_UPDATE_TIME:Ljava/lang/String;

.field private final OP_AOD_MODE:I

.field private final TAG:Ljava/lang/String;

.field private mAlarmIntent:Landroid/app/PendingIntent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlwaysOnFired:Z

.field private final mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oneplus/aod/AodUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAodView:Landroid/widget/RelativeLayout;

.field private mApplySpeedUpPolicy:Z

.field private mBatteryController:Lcom/oneplus/aod/battery/BatteryControllerImpl;

.field private mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

.field private mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

.field private mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

.field private mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

.field private mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

.field private mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

.field private mDozing:Z

.field private mDozingRequested:Z

.field private mDreamState:I

.field private mInDisplayPeriod:Z

.field private mInited:Z

.field private mIsSecure:Z

.field private mIsWakingUp:Z

.field private mIsWindowRemoved:Z

.field private mLastDozing:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotificationCollectorService:Lcom/oneplus/aod/NotificationCollectorService;

.field private mNotificationManager:Lcom/oneplus/aod/NotificationManager;

.field private mNotificationWakeUpEnable:Z

.field private mPocketCheck:Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;

.field private mPocketState:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

.field private mVolumnController:Lcom/oneplus/aod/VolumneController;

.field private mWakingUpReason:Ljava/lang/String;

.field private mWm:Landroid/view/WindowManager;

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_IDLE:I

    .line 70
    const/4 v0, 0x1

    sput v0, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_DOZING:I

    .line 71
    const/4 v0, 0x2

    sput v0, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_PULSING:I

    .line 109
    const-string v0, ""

    sput-object v0, Lcom/oneplus/aod/AodUpdateMonitor;->sDeviceTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "AodUpdateMonitor"

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->TAG:Ljava/lang/String;

    .line 67
    const-string v0, "com.oneplus.aod.action.UPDATE_TIME"

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->ACTION_UPDATE_TIME:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketState:I

    .line 111
    nop

    .line 112
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    .line 116
    iput v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    .line 117
    iput-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mInited:Z

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mWakingUpReason:Ljava/lang/String;

    .line 129
    const/16 v0, 0x8

    iput v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->OP_AOD_MODE:I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    .line 132
    new-instance v1, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    .line 722
    new-instance v1, Lcom/oneplus/aod/AodUpdateMonitor$3;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/AodUpdateMonitor$3;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    .line 143
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mWm:Landroid/view/WindowManager;

    .line 144
    new-instance v1, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;Lcom/oneplus/aod/AodUpdateMonitor$1;)V

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    .line 145
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    .line 147
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/AodUpdateMonitor$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/AodUpdateMonitor$1;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;)V

    const-string v2, "AodUpdateMonitor"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 164
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/AodUpdateMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mWakingUpReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/oneplus/aod/AodUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mWakingUpReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/oneplus/aod/AodUpdateMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "x1"    # I

    .line 63
    iput p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$1102(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mApplySpeedUpPolicy:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mIsWakingUp:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/battery/BatteryControllerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mBatteryController:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/aod/AodUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozingRequested:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozingRequested:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->getAodViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mWm:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/aod/AodUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mIsWindowRemoved:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mIsWindowRemoved:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->updateDozing()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->ACTION_UPDATE_TIME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/oneplus/aod/AodUpdateMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "x1"    # I

    .line 63
    iput p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mZenMode:I

    return p1
.end method

.method static synthetic access$2300(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/VolumneController;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mVolumnController:Lcom/oneplus/aod/VolumneController;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mNotificationWakeUpEnable:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/oneplus/aod/AodUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "x1"    # I

    .line 63
    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->handleDreamStateUpdate(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mIsSecure:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/oneplus/aod/AodUpdateMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "x1"    # Z

    .line 63
    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->handleAlwaysOn(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/aod/AodUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "x1"    # I

    .line 63
    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->handleUserSwitch(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/doze/DozeScrimController;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/oneplus/aod/AodUpdateMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketState:I

    return v0
.end method

.method static synthetic access$3102(Lcom/oneplus/aod/AodUpdateMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "x1"    # I

    .line 63
    iput p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketState:I

    return p1
.end method

.method static synthetic access$3200(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketCheck:Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/oneplus/aod/AodUpdateMonitor;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 63
    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->handleUserInfoChange()V

    return-void
.end method

.method static synthetic access$4000(Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$4100(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/settings/TextTime;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/settings/TextTime;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/AodUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/AodUpdateMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDreamState:I

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/aod/AodUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    return v0
.end method

.method static synthetic access$802(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    return p1
.end method

.method static synthetic access$900(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/DisplayViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    return-object v0
.end method

.method private caculateAlarmDelay(Z)J
    .locals 13
    .param p1, "wakeAlarm"    # Z

    .line 934
    const-wide/32 v0, 0xea60

    .line 935
    .local v0, "nextAlarmDelay":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 937
    .local v2, "now":Ljava/lang/Long;
    if-nez p1, :cond_0

    .line 938
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    div-long/2addr v3, v5

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    mul-long/2addr v3, v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .end local v0    # "nextAlarmDelay":J
    .local v3, "nextAlarmDelay":J
    goto/16 :goto_1

    .line 940
    .end local v3    # "nextAlarmDelay":J
    .restart local v0    # "nextAlarmDelay":J
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->inverseCalculate()Z

    move-result v3

    .line 942
    .local v3, "inverse":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 943
    .local v4, "date":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getHours()I

    move-result v5

    .line 944
    .local v5, "currentH":I
    invoke-virtual {v4}, Ljava/util/Date;->getMinutes()I

    move-result v6

    .line 945
    .local v6, "currentM":I
    invoke-virtual {v4}, Ljava/util/Date;->getSeconds()I

    move-result v7

    .line 946
    .local v7, "currentS":I
    const-string v8, "AodUpdateMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentH = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", currentM = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v8, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v8}, Lcom/oneplus/settings/TextTime;->getHour()I

    move-result v8

    .line 949
    .local v8, "fromH":I
    iget-object v9, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v9}, Lcom/oneplus/settings/TextTime;->getMin()I

    move-result v9

    .line 950
    .local v9, "fromM":I
    const-string v10, "AodUpdateMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "caculateAlarmDelay: fromHour = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", fromMin = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    if-gt v8, v5, :cond_2

    if-ne v8, v5, :cond_1

    if-le v9, v6, :cond_1

    goto :goto_0

    .line 955
    :cond_1
    const v10, 0x15180

    mul-int/lit8 v11, v5, 0x3c

    mul-int/lit8 v11, v11, 0x3c

    sub-int/2addr v10, v11

    mul-int/lit8 v11, v6, 0x3c

    sub-int/2addr v10, v11

    sub-int/2addr v10, v7

    mul-int/lit16 v10, v10, 0x3e8

    mul-int/lit8 v11, v8, 0x3c

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit8 v12, v9, 0x3c

    add-int/2addr v11, v12

    mul-int/lit16 v11, v11, 0x3e8

    add-int/2addr v10, v11

    int-to-long v3, v10

    .end local v0    # "nextAlarmDelay":J
    .end local v4    # "date":Ljava/util/Date;
    .end local v5    # "currentH":I
    .end local v6    # "currentM":I
    .end local v7    # "currentS":I
    .end local v8    # "fromH":I
    .end local v9    # "fromM":I
    .local v3, "nextAlarmDelay":J
    goto :goto_1

    .line 953
    .restart local v0    # "nextAlarmDelay":J
    .local v3, "inverse":Z
    .restart local v4    # "date":Ljava/util/Date;
    .restart local v5    # "currentH":I
    .restart local v6    # "currentM":I
    .restart local v7    # "currentS":I
    .restart local v8    # "fromH":I
    .restart local v9    # "fromM":I
    :cond_2
    :goto_0
    mul-int/lit8 v10, v8, 0x3c

    mul-int/lit8 v10, v10, 0x3c

    mul-int/lit8 v11, v9, 0x3c

    add-int/2addr v10, v11

    mul-int/lit16 v10, v10, 0x3e8

    mul-int/lit8 v11, v5, 0x3c

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit8 v12, v6, 0x3c

    add-int/2addr v11, v12

    add-int/2addr v11, v7

    mul-int/lit16 v11, v11, 0x3e8

    sub-int/2addr v10, v11

    int-to-long v0, v10

    .line 958
    move-wide v3, v0

    .end local v0    # "nextAlarmDelay":J
    .end local v4    # "date":Ljava/util/Date;
    .end local v5    # "currentH":I
    .end local v6    # "currentM":I
    .end local v7    # "currentS":I
    .end local v8    # "fromH":I
    .end local v9    # "fromM":I
    .local v3, "nextAlarmDelay":J
    :goto_1
    return-wide v3
.end method

.method private getAodViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    .line 202
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 203
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x8ff

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 205
    const/16 v1, 0x500

    .line 211
    .local v1, "flags":I
    const/16 v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 212
    const/4 v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 215
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_0

    .line 216
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 220
    :cond_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 221
    const/4 v3, -0x2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 222
    const/4 v3, -0x1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 223
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 224
    const/16 v3, 0x11

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 225
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 226
    const-string v2, "OPAod"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 135
    sget-object v0, Lcom/oneplus/aod/AodUpdateMonitor;->sInstance:Lcom/oneplus/aod/AodUpdateMonitor;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/AodUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/aod/AodUpdateMonitor;->sInstance:Lcom/oneplus/aod/AodUpdateMonitor;

    .line 138
    :cond_0
    sget-object v0, Lcom/oneplus/aod/AodUpdateMonitor;->sInstance:Lcom/oneplus/aod/AodUpdateMonitor;

    return-object v0
.end method

.method private handleAlwaysOn(Z)V
    .locals 5
    .param p1, "isPocketChange"    # Z

    .line 893
    invoke-virtual {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->inDisplayPeriod()Z

    move-result v0

    .line 894
    .local v0, "inDisplayPeriod":Z
    const-string v1, "AodUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAlwaysOn: inPeriod="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mAlwaysOnFired="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isPocketChange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", pocket="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-boolean v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mInDisplayPeriod:Z

    if-eq v1, v0, :cond_0

    .line 897
    iput-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mInDisplayPeriod:Z

    .line 898
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-virtual {v1, v0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->onEnterDisplayPeriod(Z)V

    .line 901
    :cond_0
    iget v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    if-eqz v1, :cond_1

    .line 902
    const-string v1, "AodUpdateMonitor"

    const-string v2, "handleAlwaysOn: in pocket , pulseOutImmediatly"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iput-boolean v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    .line 904
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    invoke-virtual {v1}, Lcom/oneplus/doze/DozeScrimController;->pulseOutImmediatly()V

    .line 905
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 906
    return-void

    .line 909
    :cond_1
    if-nez v0, :cond_2

    .line 910
    const-string v1, "AodUpdateMonitor"

    const-string v4, "handleAlwaysOn: not in display period, pulseOutImmediatly"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-virtual {p0, v2}, Lcom/oneplus/aod/AodUpdateMonitor;->setAlarm(Z)V

    .line 912
    iput-boolean v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    .line 913
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    invoke-virtual {v1}, Lcom/oneplus/doze/DozeScrimController;->pulseOutImmediatly()V

    .line 914
    return-void

    .line 917
    :cond_2
    if-eqz v0, :cond_4

    .line 918
    const-string v1, "AodUpdateMonitor"

    const-string v2, "handleAlwaysOn: entering display period, show always on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-virtual {p0, v3}, Lcom/oneplus/aod/AodUpdateMonitor;->setAlarm(Z)V

    .line 920
    iget-boolean v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    if-nez v1, :cond_3

    .line 921
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->fireAlwaysDisplay()V

    .line 922
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketCheck:Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->startListening()V

    .line 924
    :cond_3
    return-void

    .line 926
    :cond_4
    return-void
.end method

.method private handleDreamStateUpdate(I)V
    .locals 3
    .param p1, "state"    # I

    .line 690
    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDreamState:I

    if-ne v0, p1, :cond_0

    .line 691
    return-void

    .line 693
    :cond_0
    const-string v0, "AodUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDreamStateUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iput p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDreamState:I

    .line 696
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 697
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 698
    .local v1, "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    if-eqz v1, :cond_1

    .line 699
    invoke-virtual {v1, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onDreamingStateChanged(I)V

    .line 696
    .end local v1    # "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private handleTimeUpdate()V
    .locals 2

    .line 742
    const-string v0, "AodUpdateMonitor"

    const-string v1, "handleTimeUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 744
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 745
    .local v1, "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 746
    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onTimeChanged()V

    .line 743
    .end local v1    # "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private handleUserInfoChange()V
    .locals 3

    .line 713
    const-string v0, "AodUpdateMonitor"

    const-string v1, "handleUserInfoChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 715
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 716
    .local v2, "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    if-eqz v2, :cond_0

    .line 717
    invoke-virtual {v2, v0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onUserInfoChanged(I)V

    .line 714
    .end local v2    # "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 720
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private handleUserSwitch(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 752
    const-string v0, "AodUpdateMonitor"

    const-string v1, "handleUserSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 754
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 755
    .local v1, "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 756
    invoke-virtual {v1, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onUserSwitchComplete(I)V

    .line 753
    .end local v1    # "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 759
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private sendUpdates(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 683
    invoke-virtual {p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onRefreshBatteryInfo()V

    .line 684
    invoke-virtual {p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onTimeChanged()V

    .line 685
    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    invoke-virtual {p1, v0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onUserSwitching(I)V

    .line 687
    return-void
.end method

.method private updateDozing()V
    .locals 3

    .line 589
    const-string v0, "PhoneStatusBar#updateDozing"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 591
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozingRequested:Z

    iput-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    .line 595
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    iget-boolean v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mLastDozing:Z

    if-eq v0, v1, :cond_0

    .line 596
    const-string v0, "AodUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDozing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    iput-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mLastDozing:Z

    .line 600
    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->updateDozingState()V

    .line 601
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 602
    return-void
.end method

.method private updateDozingState()V
    .locals 4

    .line 605
    const-string v0, "PhoneStatusBar#updateDozingState"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 606
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeScrimController;->isPulsing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 610
    .local v0, "animate":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    iget-boolean v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    invoke-virtual {v2, v3, v1}, Lcom/oneplus/doze/DozeScrimController;->setDozing(ZZ)V

    .line 613
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 614
    return-void
.end method


# virtual methods
.method public abortPulsingWithAnim()V
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeScrimController;->abortPulsingWithAnim()V

    .line 630
    return-void
.end method

.method public continePulse(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 709
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    invoke-virtual {v0, p1}, Lcom/oneplus/doze/DozeScrimController;->continuePulse(I)V

    .line 710
    return-void
.end method

.method public fireNewNotifications()V
    .locals 2

    .line 238
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mNotificationWakeUpEnable:Z

    if-nez v0, :cond_0

    .line 240
    const-string v0, "AodUpdateMonitor"

    const-string v1, "fireNewNotifications: don\'t pulse due to wake up by new notification is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 243
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/DisplayViewManager;->postDelayResetViewState()V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->fireNewNotifications()V

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/DisplayViewManager;->setState(I)V

    .line 250
    return-void
.end method

.method public firePowerSaveChanged(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 253
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->firePowerSaveChanged(Z)V

    .line 254
    return-void
.end method

.method public getAodView()Landroid/view/ViewGroup;
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getBatteryController()Lcom/oneplus/aod/battery/BatteryController;
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mBatteryController:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    return-object v0
.end method

.method public getClockViewCtrl()Lcom/oneplus/aod/clock/ClockViewCtrl;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    return-object v0
.end method

.method public getCurrentUser()I
    .locals 1

    .line 649
    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    return v0
.end method

.method public getDisplayViewManager()Lcom/oneplus/aod/DisplayViewManager;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    return-object v0
.end method

.method public getDozeHost()Lcom/oneplus/doze/DozeHost;
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    return-object v0
.end method

.method public getDreamState()I
    .locals 1

    .line 705
    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDreamState:I

    return v0
.end method

.method public getNotificationManager()Lcom/oneplus/aod/NotificationManager;
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mNotificationManager:Lcom/oneplus/aod/NotificationManager;

    return-object v0
.end method

.method public getPSensorState()I
    .locals 1

    .line 889
    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketState:I

    return v0
.end method

.method public inDisplayPeriod()Z
    .locals 1

    .line 963
    const/4 v0, 0x1

    return v0
.end method

.method protected inflateAodView(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 232
    const v0, 0x7f0c0021

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public init()V
    .locals 5

    .line 167
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mInited:Z

    if-eqz v0, :cond_0

    .line 168
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mInited:Z

    .line 171
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodUpdateMonitor;->inflateAodView(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodView:Landroid/widget/RelativeLayout;

    .line 172
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    .line 173
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 175
    new-instance v0, Lcom/oneplus/aod/clock/ClockViewCtrl;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodView:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lcom/oneplus/aod/clock/ClockViewCtrl;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    .line 176
    new-instance v0, Lcom/oneplus/doze/DozeScrimController;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodView:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/doze/DozeScrimController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    .line 177
    new-instance v0, Lcom/oneplus/aod/DisplayViewManager;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodView:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/aod/DisplayViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    .line 178
    new-instance v0, Lcom/oneplus/aod/VolumneController;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/oneplus/aod/VolumneController;-><init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mVolumnController:Lcom/oneplus/aod/VolumneController;

    .line 179
    new-instance v0, Lcom/oneplus/aod/battery/BatteryControllerImpl;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;-><init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mBatteryController:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 180
    new-instance v0, Lcom/oneplus/aod/NotificationCollectorService;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/oneplus/aod/NotificationCollectorService;-><init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mNotificationCollectorService:Lcom/oneplus/aod/NotificationCollectorService;

    .line 181
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 182
    new-instance v0, Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v2, "display_from"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    .line 183
    new-instance v0, Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v2, "display_to"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

    .line 184
    invoke-virtual {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->updateDisplayPeriod()V

    .line 185
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/aod/Utils;->KEY_NOTIFICATION_WAKE:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 186
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/aod/Utils;->KEY_AOD_DISPLAY_MODE:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 187
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/aod/Utils;->KEY_MOTION_AWAKE:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 188
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_time_start"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 189
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_time_end"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 191
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/Utils;->init(Landroid/content/Context;I)V

    .line 192
    new-instance v0, Lcom/oneplus/aod/AodUpdateMonitor$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/AodUpdateMonitor$2;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketCheck:Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;

    .line 195
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AodUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public inverseCalculate()Z
    .locals 3

    .line 991
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/TextTime;->comapreTo(Lcom/oneplus/settings/TextTime;)I

    move-result v0

    .line 992
    .local v0, "compare":I
    const/4 v1, 0x0

    .line 993
    .local v1, "inverse":Z
    if-nez v0, :cond_0

    .line 994
    const/4 v2, 0x1

    return v2

    .line 995
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 998
    const/4 v1, 0x1

    .line 1001
    :cond_1
    return v1
.end method

.method public isAlwaysOnFired()Z
    .locals 1

    .line 929
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    return v0
.end method

.method public isDozing()Z
    .locals 1

    .line 653
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    return v0
.end method

.method public isRTL()Z
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSecure()Z
    .locals 1

    .line 767
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mIsSecure:Z

    return v0
.end method

.method public isWakingUp()Z
    .locals 1

    .line 657
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mIsWakingUp:Z

    return v0
.end method

.method public onZenModeChange(I)V
    .locals 2
    .param p1, "zenMode"    # I

    .line 257
    iput p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mZenMode:I

    .line 259
    invoke-static {}, Lcom/oneplus/aod/Utils;->isMotionAwakeOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    return-void

    .line 263
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/DisplayViewManager;->postDelayResetViewState()V

    goto :goto_0

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->fireThreeKeyStateChanged()V

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/DisplayViewManager;->setState(I)V

    .line 270
    return-void
.end method

.method public registerCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 662
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 663
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 664
    return-void

    .line 662
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodUpdateMonitor;->removeCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V

    .line 670
    return-void
.end method

.method public removeCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 673
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 674
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 673
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 678
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setAlarm(Z)V
    .locals 11
    .param p1, "wakeUpAlarm"    # Z

    .line 563
    const-string v0, "sys.aod.localtest"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "test":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    return-void

    .line 568
    :cond_0
    const-string v1, "AodUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlarm: isWakeUpAlarm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->ACTION_UPDATE_TIME:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 571
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 573
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 574
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 578
    .local v4, "now":Ljava/lang/Long;
    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->caculateAlarmDelay(Z)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 579
    .local v5, "nextAlarmDelay":Ljava/lang/Long;
    const-string v6, "AodUpdateMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delay = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/16 v6, 0xe

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 582
    new-instance v6, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-direct {v6, v7, v8, v9}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    .line 584
    .local v6, "alarmClockInfo":Landroid/app/AlarmManager$AlarmClockInfo;
    iget-object v7, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v3, v8, v9, v10}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 586
    return-void
.end method

.method public setDisplayMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 1011
    :try_start_0
    const-string v0, "AodUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAodMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    if-nez v0, :cond_0

    .line 1014
    const-string v0, "AodUpdateMonitor"

    const-string v1, "setAodMode fail due to waking up or not dreaming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return-void

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    goto :goto_0

    .line 1019
    :catch_0
    move-exception v0

    .line 1022
    :goto_0
    return-void
.end method

.method public setNotificationManager(Lcom/oneplus/aod/NotificationManager;)V
    .locals 0
    .param p1, "nm"    # Lcom/oneplus/aod/NotificationManager;

    .line 633
    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mNotificationManager:Lcom/oneplus/aod/NotificationManager;

    .line 634
    return-void
.end method

.method public updateDisplayPeriod()V
    .locals 4

    .line 1005
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_time_start"

    iget v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_time_end"

    iget v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    .line 1007
    return-void
.end method
