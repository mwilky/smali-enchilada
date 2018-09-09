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

    .line 18
    const-string v0, "SecrecyService.ResetCountDownTimer"

    sput-object v0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->TAG:Ljava/lang/String;

    .line 30
    const-wide/32 v0, 0x15180

    sput-wide v0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->DEFAULT_COUNTDOWN_TIME_FOR_MAC:J

    .line 31
    const-wide/32 v0, 0x278d00

    sput-wide v0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->DEFAULT_COUNTDOWN_TIME_FOR_ID:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/secrecy/policy/PolicyManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policyManager"    # Lcom/android/server/secrecy/policy/PolicyManager;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
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

    .line 35
    iput-object p1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    .line 37
    invoke-direct {p0}, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->initAlarm()V

    .line 38
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initAlarm()V
    .locals 5

    .line 42
    new-instance v0, Lcom/android/server/secrecy/policy/ResetCountDownTimer$AlarmReceiver;

    invoke-direct {v0, p0, p0}, Lcom/android/server/secrecy/policy/ResetCountDownTimer$AlarmReceiver;-><init>(Lcom/android/server/secrecy/policy/ResetCountDownTimer;Lcom/android/server/secrecy/policy/ResetCountDownTimer;)V

    iput-object v0, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mAlarmReceiver:Lcom/android/server/secrecy/policy/ResetCountDownTimer$AlarmReceiver;

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->ACTION_ALARM_INTENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mAlarmReceiver:Lcom/android/server/secrecy/policy/ResetCountDownTimer$AlarmReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->ACTION_ALARM_INTENT:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mAlarmIntent:Landroid/content/Intent;

    .line 47
    iget-object v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mAlarmIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mPendingIntent:Landroid/app/PendingIntent;

    .line 48
    iget-object v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mAlarmManager:Landroid/app/AlarmManager;

    .line 49
    sget-wide v1, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->DEFAULT_COUNTDOWN_TIME_FOR_MAC:J

    sget-wide v3, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->DEFAULT_COUNTDOWN_TIME_FOR_ID:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->updateCountDownTime(JJ)V

    .line 50
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 102
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    const-string v0, "ResetCountDownTimer dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 106
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCountDownTimeForMac  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mCountDownTimeForMac:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCountDownTimeForId   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mCountDownTimeForId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public getCountDownTimer(Ljava/lang/String;)J
    .locals 2
    .param p1, "unlockType"    # Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "mac"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-wide v0, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mCountDownTimeForMac:J

    return-wide v0

    .line 71
    :cond_0
    const-string/jumbo v0, "id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-wide v0, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mCountDownTimeForId:J

    return-wide v0

    .line 74
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPolicyManager()Lcom/android/server/secrecy/policy/PolicyManager;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    return-object v0
.end method

.method public startCountDown(Ljava/lang/String;)V
    .locals 7
    .param p1, "unlockType"    # Ljava/lang/String;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->getCountDownTimer(Ljava/lang/String;)J

    move-result-wide v0

    .line 62
    .local v0, "countDownTime":J
    iget-object v2, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 63
    iget-object v2, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, v0

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 64
    sget-object v2, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startCountDown, countDownTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public updateCountDownTime(JJ)V
    .locals 4
    .param p1, "countDownTimeForMac"    # J
    .param p3, "countDownTimeforId"    # J

    .line 54
    iput-wide p1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mCountDownTimeForMac:J

    .line 55
    iput-wide p3, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->mCountDownTimeForId:J

    .line 56
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

    .line 57
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

    .line 58
    return-void
.end method
