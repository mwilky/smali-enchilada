.class public Lcom/android/server/secrecy/policy/ResetCountDownTimer;
.super Ljava/lang/Object;
.source "ResetCountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/secrecy/policy/ResetCountDownTimer$AlarmReceiver;
    }
.end annotation


# static fields
.field private static DEFAULT_COUNTDOWN_TIME_FOR_ID:J

.field private static DEFAULT_COUNTDOWN_TIME_FOR_MAC:J

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final ACTION_ALARM_INTENT:Ljava/lang/String;

.field private mAlarmIntent:Landroid/content/Intent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmReceiver:Lcom/android/server/secrecy/policy/ResetCountDownTimer$AlarmReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCountDownTimeForId:J

.field private mCountDownTimeForMac:J

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private final mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SecrecyService.ResetCountDownTimer"

    sput-object v0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->TAG:Ljava/lang/String;

    const-wide/32 v0, 0x15180

    sput-wide v0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->DEFAULT_COUNTDOWN_TIME_FOR_MAC:J

    const-wide/32 v0, 0x278d00

    sput-wide v0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->DEFAULT_COUNTDOWN_TIME_FOR_ID:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/secrecy/policy/PolicyManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.secrecy.policyfactor.invalid.expire."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->ACTION_ALARM_INTENT:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-direct {p0}, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->initAlarm()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initAlarm()V
    .locals 5

    new-instance v0, Lcom/android/server/secrecy/policy/ResetCountDownTimer$AlarmReceiver;

    invoke-direct {v0, p0, p0}, Lcom/android/server/secrecy/policy/ResetCountDownTimer$AlarmReceiver;-><init>(Lcom/android/server/secrecy/policy/ResetCountDownTimer;Lcom/android/server/secrecy/policy/ResetCountDownTimer;)V

    iput-object v0, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mAlarmReceiver:Lcom/android/server/secrecy/policy/ResetCountDownTimer$AlarmReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->ACTION_ALARM_INTENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mAlarmReceiver:Lcom/android/server/secrecy/policy/ResetCountDownTimer$AlarmReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->ACTION_ALARM_INTENT:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mAlarmIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mAlarmIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mAlarmManager:Landroid/app/AlarmManager;

    sget-wide v1, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->DEFAULT_COUNTDOWN_TIME_FOR_MAC:J

    sget-wide v3, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->DEFAULT_COUNTDOWN_TIME_FOR_ID:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->updateCountDownTime(JJ)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ResetCountDownTimer dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCountDownTimeForMac  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mCountDownTimeForMac:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCountDownTimeForId   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mCountDownTimeForId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCountDownTimer(Ljava/lang/String;)J
    .locals 2

    const-string/jumbo v0, "mac"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mCountDownTimeForMac:J

    return-wide v0

    :cond_0
    const-string/jumbo v0, "id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mCountDownTimeForId:J

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPolicyManager()Lcom/android/server/secrecy/policy/PolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    return-object v0
.end method

.method public startCountDown(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->getCountDownTimer(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, v0

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    sget-object v2, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startCountDown, countDownTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateCountDownTime(JJ)V
    .locals 4

    iput-wide p1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mCountDownTimeForMac:J

    iput-wide p3, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mCountDownTimeForId:J

    sget-object v0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCountDownTime, mCountDownTimeForMac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mCountDownTimeForMac:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCountDownTime, mCountDownTimeForId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mCountDownTimeForId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Kevin_DEBUG"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
