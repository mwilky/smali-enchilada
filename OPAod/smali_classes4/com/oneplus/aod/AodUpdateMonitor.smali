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
.field private static final MINUTE:I = 0xea60

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

.field private mMinuteHandler:Landroid/os/Handler;

.field private final mMinuteTick:Ljava/lang/Runnable;

.field private mNotificationCollectorService:Lcom/oneplus/aod/NotificationCollectorService;

.field private mNotificationManager:Lcom/oneplus/aod/NotificationManager;

.field private mNotificationWakeUpEnable:Z

.field private mPocketCheck:Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;

.field private mPocketState:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRemoveWindow:Ljava/lang/Runnable;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

.field private mVolumnController:Lcom/oneplus/aod/VolumneController;

.field private mWakingUpReason:Ljava/lang/String;

.field private mWm:Landroid/view/WindowManager;

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_IDLE:I

    const/4 v0, 0x1

    sput v0, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_DOZING:I

    const/4 v0, 0x2

    sput v0, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_PULSING:I

    const-string v0, ""

    sput-object v0, Lcom/oneplus/aod/AodUpdateMonitor;->sDeviceTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AodUpdateMonitor"

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->TAG:Ljava/lang/String;

    const-string v0, "com.oneplus.aod.action.UPDATE_TIME"

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->ACTION_UPDATE_TIME:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketState:I

    nop

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    iput v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    iput-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mInited:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mWakingUpReason:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->OP_AOD_MODE:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    new-instance v1, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    new-instance v1, Lcom/oneplus/aod/AodUpdateMonitor$3;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/AodUpdateMonitor$3;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mRemoveWindow:Ljava/lang/Runnable;

    new-instance v1, Lcom/oneplus/aod/AodUpdateMonitor$4;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/AodUpdateMonitor$4;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/oneplus/aod/AodUpdateMonitor$5;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/AodUpdateMonitor$5;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mMinuteTick:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mWm:Landroid/view/WindowManager;

    new-instance v1, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;Lcom/oneplus/aod/AodUpdateMonitor$1;)V

    iput-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/AodUpdateMonitor$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/AodUpdateMonitor$1;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;)V

    const-string v2, "AodUpdateMonitor"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/AodUpdateMonitor;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/oneplus/aod/AodUpdateMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozingRequested:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozingRequested:Z

    return p1
.end method

.method static synthetic access$102(Lcom/oneplus/aod/AodUpdateMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mWakingUpReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/oneplus/aod/AodUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mWakingUpReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mApplySpeedUpPolicy:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mIsWakingUp:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/battery/BatteryControllerImpl;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mBatteryController:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mRemoveWindow:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->getAodViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mWm:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/aod/AodUpdateMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mIsWindowRemoved:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mIsWindowRemoved:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->updateDozing()V

    return-void
.end method

.method static synthetic access$2100(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->ACTION_UPDATE_TIME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/oneplus/aod/AodUpdateMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mZenMode:I

    return p1
.end method

.method static synthetic access$2400(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/VolumneController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mVolumnController:Lcom/oneplus/aod/VolumneController;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mNotificationWakeUpEnable:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/oneplus/aod/AodUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->handleDreamStateUpdate(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mIsSecure:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/AodUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->handleUserSwitch(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/oneplus/aod/AodUpdateMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->handleAlwaysOn(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/doze/DozeScrimController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/oneplus/aod/AodUpdateMonitor;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketState:I

    return v0
.end method

.method static synthetic access$3202(Lcom/oneplus/aod/AodUpdateMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketState:I

    return p1
.end method

.method static synthetic access$3300(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketCheck:Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/oneplus/aod/AodUpdateMonitor;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->handleUserInfoChange()V

    return-void
.end method

.method static synthetic access$4000(Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$4100(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/settings/TextTime;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/settings/TextTime;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mMinuteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/AodUpdateMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/AodUpdateMonitor;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDreamState:I

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/aod/AodUpdateMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    return v0
.end method

.method static synthetic access$802(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    return p1
.end method

.method static synthetic access$900(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/DisplayViewManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    return-object v0
.end method

.method private caculateAlarmDelay(Z)J
    .locals 12

    const-wide/32 v0, 0xea60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    if-nez p1, :cond_0

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

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v3}, Ljava/util/Date;->getSeconds()I

    move-result v6

    const-string v7, "AodUpdateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentH = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", currentM = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v7}, Lcom/oneplus/settings/TextTime;->getHour()I

    move-result v7

    iget-object v8, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v8}, Lcom/oneplus/settings/TextTime;->getMin()I

    move-result v8

    const-string v9, "AodUpdateMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "caculateAlarmDelay: fromHour = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", fromMin = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v7, v4, :cond_2

    if-ne v7, v4, :cond_1

    if-le v8, v5, :cond_1

    goto :goto_0

    :cond_1
    const v9, 0x15180

    mul-int/lit8 v10, v4, 0x3c

    mul-int/lit8 v10, v10, 0x3c

    sub-int/2addr v9, v10

    mul-int/lit8 v10, v5, 0x3c

    sub-int/2addr v9, v10

    sub-int/2addr v9, v6

    mul-int/lit16 v9, v9, 0x3e8

    mul-int/lit8 v10, v7, 0x3c

    mul-int/lit8 v10, v10, 0x3c

    mul-int/lit8 v11, v8, 0x3c

    add-int/2addr v10, v11

    mul-int/lit16 v10, v10, 0x3e8

    add-int/2addr v9, v10

    int-to-long v3, v9

    goto :goto_1

    :cond_2
    :goto_0
    mul-int/lit8 v9, v7, 0x3c

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit8 v10, v8, 0x3c

    add-int/2addr v9, v10

    mul-int/lit16 v9, v9, 0x3e8

    mul-int/lit8 v10, v4, 0x3c

    mul-int/lit8 v10, v10, 0x3c

    mul-int/lit8 v11, v5, 0x3c

    add-int/2addr v10, v11

    add-int/2addr v10, v6

    mul-int/lit16 v10, v10, 0x3e8

    sub-int/2addr v9, v10

    int-to-long v0, v9

    move-wide v3, v0

    :goto_1
    return-wide v3
.end method

.method private getAodViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x8ff

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x500

    const/16 v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_0

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, -0x2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v3, -0x1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x11

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-string v2, "OPAod"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;
    .locals 1

    sget-object v0, Lcom/oneplus/aod/AodUpdateMonitor;->sInstance:Lcom/oneplus/aod/AodUpdateMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/AodUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/aod/AodUpdateMonitor;->sInstance:Lcom/oneplus/aod/AodUpdateMonitor;

    :cond_0
    sget-object v0, Lcom/oneplus/aod/AodUpdateMonitor;->sInstance:Lcom/oneplus/aod/AodUpdateMonitor;

    return-object v0
.end method

.method private handleAlwaysOn(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->inDisplayPeriod()Z

    move-result v0

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

    iget-boolean v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mInDisplayPeriod:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mInDisplayPeriod:Z

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-virtual {v1, v0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->onEnterDisplayPeriod(Z)V

    :cond_0
    iget v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    if-eqz v1, :cond_1

    const-string v1, "AodUpdateMonitor"

    const-string v2, "handleAlwaysOn: in pocket , pulseOutImmediatly"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    invoke-virtual {v1}, Lcom/oneplus/doze/DozeScrimController;->pulseOutImmediatly()V

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    const-string v1, "AodUpdateMonitor"

    const-string v4, "handleAlwaysOn: not in display period, pulseOutImmediatly"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/AodUpdateMonitor;->setAlarm(Z)V

    iput-boolean v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    invoke-virtual {v1}, Lcom/oneplus/doze/DozeScrimController;->pulseOutImmediatly()V

    return-void

    :cond_2
    if-eqz v0, :cond_4

    const-string v1, "AodUpdateMonitor"

    const-string v2, "handleAlwaysOn: entering display period, show always on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/oneplus/aod/AodUpdateMonitor;->setAlarm(Z)V

    iget-boolean v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->fireAlwaysDisplay()V

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketCheck:Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->startListening()V

    :cond_3
    return-void

    :cond_4
    return-void
.end method

.method private handleDreamStateUpdate(I)V
    .locals 6

    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDreamState:I

    if-ne v0, p1, :cond_0

    return-void

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

    iput p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDreamState:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/AodUpdateMonitorCallback;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onDreamingStateChanged(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/oneplus/aod/Utils;->isAlwaysOnEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDreamState:I

    sget v1, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_PULSING:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mMinuteHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mMinuteHandler:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long v4, v0, v2

    mul-long/2addr v4, v2

    add-long/2addr v4, v2

    sub-long/2addr v4, v0

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mMinuteHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mMinuteTick:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mMinuteHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mMinuteHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mMinuteTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mMinuteHandler:Landroid/os/Handler;

    :cond_4
    :goto_1
    return-void
.end method

.method private handleTimeUpdate()V
    .locals 2

    const-string v0, "AodUpdateMonitor"

    const-string v1, "handleTimeUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/AodUpdateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onTimeChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUserInfoChange()V
    .locals 3

    const-string v0, "AodUpdateMonitor"

    const-string v1, "handleUserInfoChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/AodUpdateMonitorCallback;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onUserInfoChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUserSwitch(I)V
    .locals 2

    const-string v0, "AodUpdateMonitor"

    const-string v1, "handleUserSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/AodUpdateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onUserSwitchComplete(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendUpdates(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V
    .locals 1

    invoke-virtual {p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onRefreshBatteryInfo()V

    invoke-virtual {p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onTimeChanged()V

    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    invoke-virtual {p1, v0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onUserSwitching(I)V

    return-void
.end method

.method private updateDozing()V
    .locals 3

    const-string v0, "PhoneStatusBar#updateDozing"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozingRequested:Z

    iput-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    iget-boolean v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mLastDozing:Z

    if-eq v0, v1, :cond_0

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

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    iput-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mLastDozing:Z

    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->updateDozingState()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private updateDozingState()V
    .locals 4

    const-string v0, "PhoneStatusBar#updateDozingState"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

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

    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    iget-boolean v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    invoke-virtual {v2, v3, v1}, Lcom/oneplus/doze/DozeScrimController;->setDozing(ZZ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method


# virtual methods
.method public abortPulsingWithAnim()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeScrimController;->abortPulsingWithAnim()V

    return-void
.end method

.method public continePulse(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    invoke-virtual {v0, p1}, Lcom/oneplus/doze/DozeScrimController;->continuePulse(I)V

    return-void
.end method

.method public fireNewNotifications()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mNotificationWakeUpEnable:Z

    if-nez v0, :cond_0

    const-string v0, "AodUpdateMonitor"

    const-string v1, "fireNewNotifications: don\'t pulse due to wake up by new notification is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/DisplayViewManager;->postDelayResetViewState()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->fireNewNotifications()V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/DisplayViewManager;->setState(I)V

    return-void
.end method

.method public firePowerSaveChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->firePowerSaveChanged(Z)V

    return-void
.end method

.method public getAodView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getBatteryController()Lcom/oneplus/aod/battery/BatteryController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mBatteryController:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    return-object v0
.end method

.method public getClockViewCtrl()Lcom/oneplus/aod/clock/ClockViewCtrl;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    return-object v0
.end method

.method public getCurrentUser()I
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    return v0
.end method

.method public getDisplayViewManager()Lcom/oneplus/aod/DisplayViewManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    return-object v0
.end method

.method public getDozeHost()Lcom/oneplus/doze/DozeHost;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    return-object v0
.end method

.method public getDreamState()I
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDreamState:I

    return v0
.end method

.method public getNotificationManager()Lcom/oneplus/aod/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mNotificationManager:Lcom/oneplus/aod/NotificationManager;

    return-object v0
.end method

.method public getPSensorState()I
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketState:I

    return v0
.end method

.method public inDisplayPeriod()Z
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->inverseCalculate()Z

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v4

    new-instance v0, Lcom/oneplus/settings/TextTime;

    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v6, ""

    invoke-direct {v0, v5, v6}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Lcom/oneplus/settings/TextTime;->setTime(II)V

    sget-boolean v5, Lcom/oneplus/aod/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "AodUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "inDisplayPeriod: current time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/oneplus/settings/TextTime;->toStringIn24()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", from="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v7}, Lcom/oneplus/settings/TextTime;->toStringIn24()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", to="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v7}, Lcom/oneplus/settings/TextTime;->toStringIn24()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", inverse="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v3, :cond_2

    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v0, v5}, Lcom/oneplus/settings/TextTime;->comapreTo(Lcom/oneplus/settings/TextTime;)I

    move-result v5

    if-eq v5, v8, :cond_1

    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v0, v5}, Lcom/oneplus/settings/TextTime;->comapreTo(Lcom/oneplus/settings/TextTime;)I

    move-result v5

    if-eq v5, v10, :cond_1

    return v8

    :cond_1
    return v9

    :cond_2
    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v0, v5}, Lcom/oneplus/settings/TextTime;->comapreTo(Lcom/oneplus/settings/TextTime;)I

    move-result v5

    if-eq v5, v8, :cond_3

    return v8

    :cond_3
    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v0, v5}, Lcom/oneplus/settings/TextTime;->comapreTo(Lcom/oneplus/settings/TextTime;)I

    move-result v5

    if-eq v5, v10, :cond_4

    return v8

    :cond_4
    return v9
.end method

.method protected inflateAodView(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 2

    const v0, 0x7f0c0021

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public init()V
    .locals 5

    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mInited:Z

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodUpdateMonitor;->inflateAodView(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance v0, Lcom/oneplus/aod/clock/ClockViewCtrl;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodView:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lcom/oneplus/aod/clock/ClockViewCtrl;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    new-instance v0, Lcom/oneplus/doze/DozeScrimController;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodView:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/doze/DozeScrimController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeScrimController:Lcom/oneplus/doze/DozeScrimController;

    new-instance v0, Lcom/oneplus/aod/DisplayViewManager;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodView:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/aod/DisplayViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    new-instance v0, Lcom/oneplus/aod/VolumneController;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/oneplus/aod/VolumneController;-><init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mVolumnController:Lcom/oneplus/aod/VolumneController;

    new-instance v0, Lcom/oneplus/aod/battery/BatteryControllerImpl;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;-><init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mBatteryController:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    new-instance v0, Lcom/oneplus/aod/NotificationCollectorService;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/oneplus/aod/NotificationCollectorService;-><init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mNotificationCollectorService:Lcom/oneplus/aod/NotificationCollectorService;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v2, "display_from"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    new-instance v0, Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v2, "display_to"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

    invoke-virtual {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->updateDisplayPeriod()V

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

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/aod/Utils;->KEY_AOD_DISPLAY_MODE:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/aod/Utils;->KEY_MOTION_AWAKE:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_time_start"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_time_end"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mSettingsOberver:Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/Utils;->init(Landroid/content/Context;I)V

    new-instance v0, Lcom/oneplus/aod/AodUpdateMonitor$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/AodUpdateMonitor$2;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mPocketCheck:Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;

    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

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

    :goto_0
    return-void
.end method

.method public inverseCalculate()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/TextTime;->comapreTo(Lcom/oneplus/settings/TextTime;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isAlwaysOnFired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    return v0
.end method

.method public isDozing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozing:Z

    return v0
.end method

.method public isRTL()Z
    .locals 2

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

    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mIsSecure:Z

    return v0
.end method

.method public isWakingUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mIsWakingUp:Z

    return v0
.end method

.method public onZenModeChange(I)V
    .locals 2

    iput p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mZenMode:I

    invoke-static {}, Lcom/oneplus/aod/Utils;->isMotionAwakeOn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlwaysOnFired:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/DisplayViewManager;->postDelayResetViewState()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDozeServiceHost:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->fireThreeKeyStateChanged()V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayViewManager:Lcom/oneplus/aod/DisplayViewManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/DisplayViewManager;->setState(I)V

    return-void
.end method

.method public registerCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodUpdateMonitor;->removeCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V

    return-void
.end method

.method public removeCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAodUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAlarm(Z)V
    .locals 8

    const-string v0, "sys.aod.localtest"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

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

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->ACTION_UPDATE_TIME:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmIntent:Landroid/app/PendingIntent;

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->caculateAlarmDelay(Z)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "AodUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delay = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xe

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    iget-object v4, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public setDisplayMode(I)V
    .locals 0

    return-void
.end method

.method public setNotificationManager(Lcom/oneplus/aod/NotificationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mNotificationManager:Lcom/oneplus/aod/NotificationManager;

    return-void
.end method

.method public updateDisplayPeriod()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodFrom:Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_time_start"

    iget v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mDisplayPeriodTo:Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_time_end"

    iget v3, p0, Lcom/oneplus/aod/AodUpdateMonitor;->mCurrentUserId:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    return-void
.end method
