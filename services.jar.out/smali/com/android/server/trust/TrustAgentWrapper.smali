.class public Lcom/android/server/trust/TrustAgentWrapper;
.super Ljava/lang/Object;
.source "TrustAgentWrapper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final DATA_DURATION:Ljava/lang/String; = "duration"

.field private static final DATA_ESCROW_TOKEN:Ljava/lang/String; = "escrow_token"

.field private static final DATA_HANDLE:Ljava/lang/String; = "handle"

.field private static final DATA_MESSAGE:Ljava/lang/String; = "message"

.field private static final DATA_USER_ID:Ljava/lang/String; = "user_id"

.field private static final DEBUG:Z

.field private static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "componentName"

.field private static final MSG_ADD_ESCROW_TOKEN:I = 0x7

.field private static final MSG_ESCROW_TOKEN_STATE:I = 0x9

.field private static final MSG_GRANT_TRUST:I = 0x1

.field private static final MSG_MANAGING_TRUST:I = 0x6

.field private static final MSG_REMOVE_ESCROW_TOKEN:I = 0x8

.field private static final MSG_RESTART_TIMEOUT:I = 0x4

.field private static final MSG_REVOKE_TRUST:I = 0x2

.field private static final MSG_SET_TRUST_AGENT_FEATURES_COMPLETED:I = 0x5

.field private static final MSG_SHOW_KEYGUARD_ERROR_MESSAGE:I = 0xb

.field private static final MSG_TRUST_TIMEOUT:I = 0x3

.field private static final MSG_UNLOCK_USER:I = 0xa

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"

.field private static final RESTART_TIMEOUT_MILLIS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "TrustAgentWrapper"

.field private static final TRUST_EXPIRED_ACTION:Ljava/lang/String; = "android.server.trust.TRUST_EXPIRED_ACTION"


# instance fields
.field private final mAlarmIntent:Landroid/content/Intent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmPendingIntent:Landroid/app/PendingIntent;

.field private mBound:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mManagingTrust:Z

.field private mMaximumTimeToLock:J

.field private mMessage:Ljava/lang/CharSequence;

.field private final mName:Landroid/content/ComponentName;

.field private mPendingSuccessfulUnlock:Z

.field private mScheduledRestartUptimeMillis:J

.field private mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

.field private mTrustAgentService:Landroid/service/trust/ITrustAgentService;

.field private mTrustDisabledByDpm:Z

.field private final mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

.field private mTrusted:Z

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    new-instance v1, Lcom/android/server/trust/TrustAgentWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/server/trust/TrustAgentWrapper$1;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/trust/TrustAgentWrapper$2;

    invoke-direct {v1, p0}, Lcom/android/server/trust/TrustAgentWrapper$2;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/trust/TrustAgentWrapper$3;

    invoke-direct {v1, p0}, Lcom/android/server/trust/TrustAgentWrapper$3;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    new-instance v1, Lcom/android/server/trust/TrustAgentWrapper$4;

    invoke-direct {v1, p0}, Lcom/android/server/trust/TrustAgentWrapper$4;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iput v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.server.trust.TRUST_EXPIRED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "componentName"

    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.server.trust.TRUST_EXPIRED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/server/trust/TrustAgentWrapper;->scheduleRestart()V

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    const v3, 0x4000001

    invoke-virtual {p1, p3, v0, v3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.permission.PROVIDE_TRUST_AGENT"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "TrustAgentWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t bind to TrustAgent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I
    .locals 1

    iget v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/trust/TrustAgentWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/trust/TrustAgentWrapper;->onTrustTimeout()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/trust/TrustAgentWrapper;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentService;)Landroid/service/trust/ITrustAgentService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentServiceCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentServiceCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/trust/TrustAgentWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/trust/TrustAgentWrapper;->scheduleRestart()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/trust/TrustAgentWrapper;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    return-wide v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/trust/TrustAgentWrapper;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "TrustAgentWrapper"

    const-string v1, "Exception "

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private onTrustTimeout()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onTrustTimeout()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private scheduleRestart()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method private setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v0, p1}, Landroid/service/trust/ITrustAgentService;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "TrustAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrustAgent unbound : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustArchive;->logAgentStopped(ILandroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    iput-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getScheduledRestartUptimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    return-wide v0
.end method

.method public isBound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isManagingTrust()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTrusted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDeviceLocked()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onDeviceLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public onDeviceUnlocked()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onDeviceUnlocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public onUnlockAttempt(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v0, p1}, Landroid/service/trust/ITrustAgentService;->onUnlockAttempt(Z)V

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public onUnlockLockout(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v0, p1}, Landroid/service/trust/ITrustAgentService;->onUnlockLockout(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method updateDevicePolicyFeatures()Z
    .locals 8

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "TrustAgentWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDevicePolicyFeatures("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iget v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    iget v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x1

    sget-boolean v4, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "TrustAgentWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detected trust agents disabled. Config = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    sget-boolean v4, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "TrustAgentWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TrustAgent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " disabled until it acknowledges "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    iget-object v5, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    invoke-interface {v4, v2, v5}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V

    :cond_3
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v2, v4, v3}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V

    :goto_0
    iget v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_5

    iput-wide v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :goto_1
    iget-boolean v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-eq v1, v0, :cond_6

    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    :cond_6
    return v0
.end method
